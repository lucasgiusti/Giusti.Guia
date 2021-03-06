USE [GiustiGuia]
GO
/****** Object:  Table [dbo].[Email]    Script Date: 3/10/2016 8:25:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Email]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Email](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Destinatario] [varchar](100) NOT NULL,
	[Assunto] [varchar](50) NOT NULL,
	[Corpo] [varchar](1000) NOT NULL,
	[FuncionalidadeId] [int] NOT NULL,
	[DataInclusao] [datetime] NOT NULL,
	[DataAlteracao] [datetime] NULL,
	[DataEnvio] [datetime] NULL,
 CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Funcionalidade]    Script Date: 3/10/2016 8:25:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Funcionalidade]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Funcionalidade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[FuncionalidadeIdPai] [int] NULL,
	[UtilizaMenu] [bit] NOT NULL,
	[LinkMenu] [varchar](50) NULL,
 CONSTRAINT [PK_Funcionalidade] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log]    Script Date: 3/10/2016 8:25:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[RegistroId] [int] NULL,
	[Acao] [varchar](50) NOT NULL,
	[OrigemAcesso] [varchar](250) NOT NULL,
	[IpMaquina] [varchar](50) NOT NULL,
	[DataInclusao] [datetime] NOT NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Motel]    Script Date: 3/10/2016 8:25:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Motel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Motel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Regiao] [varchar](20) NOT NULL,
	[Logo] [varchar](200) NOT NULL,
	[Endereco] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Motel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MotelQuarto]    Script Date: 3/10/2016 8:25:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MotelQuarto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MotelQuarto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MotelId] [int] NOT NULL,
	[Nome] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MotelQuarto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MotelQuartoImagem]    Script Date: 3/10/2016 8:25:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MotelQuartoImagem]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MotelQuartoImagem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MotelQuartoId] [int] NOT NULL,
	[Imagem] [varchar](200) NOT NULL,
 CONSTRAINT [PK_MotelQuartoImagem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MotelQuartoPeriodo]    Script Date: 3/10/2016 8:25:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MotelQuartoPeriodo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MotelQuartoPeriodo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MotelQuartoId] [int] NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MotelQuartoPeriodo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 3/10/2016 8:25:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Perfil]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Perfil](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PerfilFuncionalidade]    Script Date: 3/10/2016 8:25:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PerfilFuncionalidade]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PerfilFuncionalidade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PerfilId] [int] NOT NULL,
	[FuncionalidadeId] [int] NOT NULL,
 CONSTRAINT [PK_Acesso] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PerfilUsuario]    Script Date: 3/10/2016 8:25:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PerfilUsuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PerfilUsuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PerfilId] [int] NOT NULL,
	[UsuarioId] [int] NOT NULL,
 CONSTRAINT [PK_PerfilUsuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 3/10/2016 8:25:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Senha] [varchar](300) NOT NULL,
	[Ativo] [bit] NOT NULL,
	[DataInclusao] [datetime] NOT NULL,
	[DataAlteracao] [datetime] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Funcionalidade] ON 

GO
INSERT [dbo].[Funcionalidade] ([Id], [Nome], [FuncionalidadeIdPai], [UtilizaMenu], [LinkMenu]) VALUES (1, N'Acesso', NULL, 1, N'acesso')
GO
INSERT [dbo].[Funcionalidade] ([Id], [Nome], [FuncionalidadeIdPai], [UtilizaMenu], [LinkMenu]) VALUES (2, N'Perfil', 1, 1, N'perfil')
GO
INSERT [dbo].[Funcionalidade] ([Id], [Nome], [FuncionalidadeIdPai], [UtilizaMenu], [LinkMenu]) VALUES (3, N'Perfil Consulta', 2, 0, NULL)
GO
INSERT [dbo].[Funcionalidade] ([Id], [Nome], [FuncionalidadeIdPai], [UtilizaMenu], [LinkMenu]) VALUES (4, N'Perfil Edição', 2, 0, NULL)
GO
INSERT [dbo].[Funcionalidade] ([Id], [Nome], [FuncionalidadeIdPai], [UtilizaMenu], [LinkMenu]) VALUES (5, N'Perfil Inclusão', 2, 0, NULL)
GO
INSERT [dbo].[Funcionalidade] ([Id], [Nome], [FuncionalidadeIdPai], [UtilizaMenu], [LinkMenu]) VALUES (6, N'Perfil Exclusão', 2, 0, NULL)
GO
INSERT [dbo].[Funcionalidade] ([Id], [Nome], [FuncionalidadeIdPai], [UtilizaMenu], [LinkMenu]) VALUES (7, N'Funcionalidade', 1, 0, NULL)
GO
INSERT [dbo].[Funcionalidade] ([Id], [Nome], [FuncionalidadeIdPai], [UtilizaMenu], [LinkMenu]) VALUES (8, N'Funcionalidade Consulta', 7, 0, NULL)
GO
INSERT [dbo].[Funcionalidade] ([Id], [Nome], [FuncionalidadeIdPai], [UtilizaMenu], [LinkMenu]) VALUES (9, N'Usuário', 1, 1, N'usuario')
GO
INSERT [dbo].[Funcionalidade] ([Id], [Nome], [FuncionalidadeIdPai], [UtilizaMenu], [LinkMenu]) VALUES (10, N'Usuário Consulta', 9, 0, NULL)
GO
INSERT [dbo].[Funcionalidade] ([Id], [Nome], [FuncionalidadeIdPai], [UtilizaMenu], [LinkMenu]) VALUES (11, N'Usuário Edição', 9, 0, NULL)
GO
INSERT [dbo].[Funcionalidade] ([Id], [Nome], [FuncionalidadeIdPai], [UtilizaMenu], [LinkMenu]) VALUES (12, N'Usuário Inclusão', 9, 0, NULL)
GO
INSERT [dbo].[Funcionalidade] ([Id], [Nome], [FuncionalidadeIdPai], [UtilizaMenu], [LinkMenu]) VALUES (13, N'Usuário Exclusão', 9, 0, NULL)
GO
INSERT [dbo].[Funcionalidade] ([Id], [Nome], [FuncionalidadeIdPai], [UtilizaMenu], [LinkMenu]) VALUES (14, N'Alterar Senha', 1, 1, N'alterarsenha')
GO
INSERT [dbo].[Funcionalidade] ([Id], [Nome], [FuncionalidadeIdPai], [UtilizaMenu], [LinkMenu]) VALUES (16, N'Log', 1, 1, N'log')
GO
INSERT [dbo].[Funcionalidade] ([Id], [Nome], [FuncionalidadeIdPai], [UtilizaMenu], [LinkMenu]) VALUES (17, N'Log Consulta', 16, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Funcionalidade] OFF
GO
SET IDENTITY_INSERT [dbo].[Log] ON 

GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 08:21:59.650' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (2, 1, 2, N'Perfil Inclusão', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 08:22:46.623' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (3, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 08:23:11.593' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (4, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 08:27:02.503' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (5, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 08:27:23.640' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (6, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 08:27:46.750' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (7, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 08:28:37.133' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (8, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 08:31:16.573' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (9, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 08:31:17.937' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (10, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 08:38:09.047' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (11, 3, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 08:50:37.730' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (12, 3, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 08:50:47.297' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (13, 3, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 08:51:22.357' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (14, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 08:59:06.157' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (15, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 08:59:10.707' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (16, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 08:59:27.730' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (17, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 08:59:33.840' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (18, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 08:59:40.247' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (19, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 08:59:53.417' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (20, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:00:00.163' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (21, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:00:04.213' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (22, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:00:35.450' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (23, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:02:15.417' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (24, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:02:20.957' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (25, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:02:52.867' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (26, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:04:10.350' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (27, 3, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:04:45.153' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (28, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:12:59.577' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (29, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:12:59.577' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (30, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:14:18.590' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (31, 3, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:15:56.720' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (32, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:18:10.457' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (33, 3, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:18:22.513' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (34, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:18:24.170' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (35, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:44:18.743' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (36, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:44:20.713' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (37, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:44:27.340' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (38, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:44:35.053' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (39, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:45:14.637' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (40, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:45:15.850' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (41, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:45:16.453' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (42, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:45:17.267' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (43, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:45:19.870' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (44, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:46:46.600' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (45, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:47:59.773' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (46, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:48:08.817' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (47, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:48:09.547' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (48, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:48:10.100' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (49, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:48:14.633' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (50, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:48:16.050' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (51, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:48:16.800' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (52, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:48:17.277' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (53, 3, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:48:19.267' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (54, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:48:20.750' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (55, 3, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:48:22.423' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (56, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:48:23.543' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (57, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:48:24.093' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (58, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:48:25.123' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (59, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:48:25.553' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (60, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:48:26.697' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (61, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:51:02.973' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (62, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:51:07.450' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (63, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:51:10.233' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (64, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:51:32.177' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (65, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:51:36.287' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (66, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:51:36.827' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (67, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:51:38.527' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (68, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:51:39.117' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (69, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:51:39.953' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (70, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:51:40.363' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (71, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:51:41.017' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (72, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:53:34.317' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (73, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:53:36.197' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (74, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:53:37.573' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (75, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:53:39.937' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (76, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:54:24.517' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (77, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:54:25.433' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (78, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:54:26.337' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (79, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:54:27.040' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (80, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:54:27.487' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (81, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:54:28.003' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (82, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:54:28.880' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (83, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:54:29.237' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (84, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:54:29.603' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (85, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:54:29.977' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (86, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:54:31.197' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (87, 3, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:54:34.213' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (88, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:54:36.567' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (89, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:54:37.173' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (90, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:54:42.280' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (91, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 09:54:42.963' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (92, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:02:43.097' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (93, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:02:44.897' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (94, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:02:49.223' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (95, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:03:23.547' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (96, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:04:07.147' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (97, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:04:31.403' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (98, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:04:57.693' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (99, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:08:30.700' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (100, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:09:18.413' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (101, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:09:20.577' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (102, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:09:21.600' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (103, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:09:22.683' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (104, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:09:23.217' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (105, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:09:24.303' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (106, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:09:25.400' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (107, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:09:26.570' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (108, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:15:28.120' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (109, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:16:44.033' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (110, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:16:45.750' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (111, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:16:46.840' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (112, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:16:47.457' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (113, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:16:48.620' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (114, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:16:49.960' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (115, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:16:50.917' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (116, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:16:51.483' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (117, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:16:52.367' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (118, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:16:53.620' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (119, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:16:54.470' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (120, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:16:55.337' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (121, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:18:15.630' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (122, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:18:17.990' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (123, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:18:23.157' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (124, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:18:27.127' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (125, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:18:29.177' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (126, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:18:30.227' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (127, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:18:31.267' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (128, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:18:31.987' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (129, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:18:32.600' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (130, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:18:33.800' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (131, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:18:34.357' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (132, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:21:23.107' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (133, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:21:26.617' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (134, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:21:28.590' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (135, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:21:29.160' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (136, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:21:29.600' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (137, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:21:33.647' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (138, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:25:18.100' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (139, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:26:05.477' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (140, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:30:42.413' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (141, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:38:57.010' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (142, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:39:27.057' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (143, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:39:32.113' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (144, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:40:11.277' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (145, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:40:19.933' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (146, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:40:46.390' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (147, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:40:53.803' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (148, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:47:13.240' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (149, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:48:12.380' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (150, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:49:00.453' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (151, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:49:02.993' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (152, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:49:36.040' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (153, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:50:00.877' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (154, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:51:30.187' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (155, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:52:28.113' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (156, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:52:35.490' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (157, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:52:37.057' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (158, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:52:41.820' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (159, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:52:43.893' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (160, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:52:59.660' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (161, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:53:02.397' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (162, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:53:04.300' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (163, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:54:54.670' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (164, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:54:58.567' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (165, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:55:21.410' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (166, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:56:47.323' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (167, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:56:55.257' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (168, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:56:56.017' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (169, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:56:56.787' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (170, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:56:57.313' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (171, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:56:57.830' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (172, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:56:59.430' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (173, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:58:31.590' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (174, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 10:58:46.160' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (175, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:03:06.787' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (176, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:03:10.440' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (177, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:03:11.593' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (178, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:03:12.813' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (179, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:03:14.553' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (180, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:03:15.820' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (181, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:03:16.267' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (182, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:03:17.007' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (183, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:03:17.553' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (184, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:03:18.013' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (185, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:03:18.457' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (186, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:03:19.223' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (187, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:04:45.197' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (188, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:05:15.907' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (189, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:05:47.617' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (190, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:06:11.420' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (191, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:06:54.980' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (192, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:08:26.087' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (193, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:08:49.760' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (194, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:08:57.320' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (195, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:09:29.503' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (196, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:09:36.357' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (197, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:09:42.273' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (198, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:09:44.050' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (199, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:09:46.543' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (200, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:09:47.013' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (201, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:09:47.677' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (202, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:09:48.133' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (203, 3, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:10:21.990' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (204, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:10:23.840' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (205, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:10:24.977' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (206, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:10:27.157' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (207, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:10:29.127' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (208, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:10:31.983' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (209, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:14:38.627' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (210, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:14:42.600' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (211, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:14:42.997' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (212, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:14:43.457' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (213, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:14:44.017' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (214, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:15:37.053' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (215, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:15:46.487' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (216, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:15:48.177' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (217, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:15:48.777' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (218, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:15:49.387' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (219, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:15:50.463' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (220, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:15:51.383' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (221, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:16:33.203' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (222, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:16:48.627' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (223, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:16:50.387' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (224, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:16:51.620' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (225, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:16:52.120' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (226, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:16:52.800' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (227, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:16:54.237' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (228, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:16:55.017' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (229, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:16:56.313' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (230, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:16:56.793' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (231, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:16:57.230' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (232, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:16:58.033' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (233, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:17:12.583' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (234, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:17:13.460' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (235, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:17:14.673' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (236, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:17:15.937' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (237, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:17:17.663' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (238, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:17:18.050' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (239, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:17:18.677' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (240, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:17:19.637' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (241, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:17:56.883' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (242, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:20:34.617' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (243, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:20:44.650' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (244, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:20:48.297' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (245, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:20:51.127' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (246, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:20:52.403' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (247, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:20:53.160' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (248, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:20:53.823' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (249, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:20:54.793' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (250, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:20:55.567' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (251, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:20:56.447' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (252, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:27:00.610' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (253, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:27:10.443' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (254, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:28:06.433' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (255, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:28:10.260' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (256, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:28:12.420' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (257, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:28:14.313' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (258, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:28:45.710' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (259, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:29:02.697' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (260, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:39:55.377' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (261, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:40:06.750' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (262, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:40:17.277' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (263, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:40:35.090' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (264, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:40:44.250' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (265, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:40:48.443' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (266, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:40:49.357' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (267, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:40:50.197' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (268, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:40:55.810' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (269, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:40:57.980' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (270, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:41:25.450' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (271, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:41:26.377' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (272, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:41:48.363' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (273, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:42:31.657' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (274, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:42:32.993' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (275, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:42:39.510' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (276, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:42:40.993' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (277, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:42:41.870' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (278, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:42:42.527' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (279, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:42:42.990' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (280, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:42:43.810' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (281, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:42:44.177' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (282, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:42:46.833' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (283, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:44:34.867' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (284, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:44:35.860' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (285, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:44:37.897' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (286, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:44:39.870' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (287, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:45:09.220' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (288, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:45:53.190' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (289, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:46:56.047' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (290, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:47:11.317' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (291, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:47:14.240' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (292, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:47:16.767' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (293, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:47:17.860' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (294, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:47:33.733' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (295, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:47:34.920' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (296, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:47:36.737' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (297, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:47:52.920' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (298, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:47:59.167' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (299, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 11:48:02.927' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (300, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:06:47.153' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (301, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:06:49.237' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (302, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:07:56.813' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (303, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:08:10.097' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (304, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:08:20.817' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (305, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:08:30.903' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (306, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:08:32.913' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (307, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:08:35.310' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (308, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:08:36.647' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (309, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:18:00.417' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (310, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:19:05.890' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (311, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:19:08.183' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (312, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:19:11.423' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (313, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:19:23.270' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (314, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:20:10.510' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (315, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:20:15.957' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (316, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:20:17.013' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (317, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:21:16.463' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (318, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:21:49.030' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (319, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:23:42.893' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (320, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:24:18.607' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (321, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:24:19.700' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (322, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:26:19.877' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (323, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:28:00.553' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (324, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:28:34.937' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (325, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:28:55.853' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (326, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:29:42.877' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (327, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:29:54.140' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (328, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:32:49.723' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (329, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:34:00.557' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (330, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:34:32.260' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (331, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:35:05.720' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (332, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:36:36.480' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (333, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:37:28.550' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (334, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:37:40.360' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (335, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:37:46.863' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (336, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:37:53.920' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (337, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:38:51.060' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (338, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:39:13.120' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (339, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:39:16.527' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (340, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:43:26.810' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (341, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:44:07.850' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (342, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:44:18.603' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (343, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:44:24.630' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (344, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:46:23.597' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (345, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:47:00.387' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (346, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:48:12.677' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (347, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:48:20.727' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (348, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:48:21.430' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (349, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:48:22.590' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (350, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:51:01.033' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (351, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:51:19.917' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (352, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:52:06.857' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (353, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:52:31.910' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (354, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:52:49.167' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (355, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:53:00.727' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (356, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:53:25.240' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (357, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:53:41.443' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (358, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:53:42.763' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (359, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:53:47.173' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (360, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:53:48.527' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (361, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:54:43.410' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (362, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:54:47.677' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (363, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:54:53.227' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (364, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:54:59.507' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (365, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:55:01.583' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (366, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:55:02.880' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (367, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:55:03.640' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (368, 3, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:55:05.503' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (369, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:55:16.127' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (370, 3, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:57:16.770' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (371, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:57:21.403' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (372, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:57:22.513' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (373, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:57:23.183' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (374, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:57:23.750' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (375, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:57:24.763' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (376, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:57:25.170' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (377, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:57:26.180' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (378, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:57:26.750' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (379, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 12:57:30.880' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (380, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:10:23.287' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (381, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:10:25.647' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (382, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:10:58.170' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (383, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:11:31.170' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (384, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:12:13.703' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (385, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:12:26.567' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (386, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:12:34.783' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (387, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:12:35.863' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (388, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:12:37.067' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (389, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:12:38.280' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (390, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:12:42.250' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (391, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:14:19.577' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (392, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:14:22.153' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (393, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:14:23.173' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (394, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:14:23.917' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (395, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:14:25.147' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (396, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:14:26.140' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (397, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:15:01.250' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (398, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:15:02.140' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (399, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:19:14.917' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (400, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:19:22.217' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (401, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:19:24.610' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (402, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:19:26.303' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (403, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:21:41.613' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (404, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:21:46.533' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (405, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:21:47.317' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (406, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:21:48.187' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (407, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:21:50.090' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (408, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:21:50.607' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (409, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:21:54.290' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (410, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:21:54.817' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (411, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:21:55.480' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (412, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:21:56.103' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (413, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:25:43.557' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (414, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:25:46.203' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (415, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:25:51.900' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (416, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:25:52.327' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (417, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:25:52.767' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (418, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:25:53.270' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (419, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:25:54.530' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (420, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:26:06.963' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (421, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:26:07.917' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (422, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:26:11.903' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (423, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:26:14.193' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (424, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:26:18.153' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (425, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:26:19.363' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (426, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:26:20.400' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (427, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:26:21.270' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (428, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:26:22.697' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (429, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:26:23.933' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (430, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:26:24.873' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (431, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:26:28.713' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (432, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:26:43.643' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (433, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:26:44.147' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (434, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:26:44.717' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (435, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:26:45.110' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (436, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:26:46.023' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (437, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:26:50.037' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (438, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:26:50.437' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (439, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:26:51.550' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (440, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:28:52.863' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (441, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:29:03.553' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (442, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:29:43.163' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (443, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:29:46.740' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (444, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:30:12.063' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (445, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-09 13:30:16.200' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (446, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:12:49.997' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (447, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:13:03.740' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (448, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:13:19.023' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (449, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:13:20.330' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (450, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:13:21.437' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (451, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:13:29.573' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (452, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:13:31.603' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (453, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:13:33.057' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (454, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:20:44.410' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (455, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:20:46.710' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (456, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:20:55.990' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (457, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:20:58.443' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (458, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:25:02.970' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (459, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:25:04.607' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (460, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:25:09.047' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (461, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:25:10.760' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (462, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:25:47.967' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (463, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:25:52.067' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (464, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:27:39.897' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (465, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:31:28.627' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (466, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:31:29.960' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (467, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:31:30.780' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (468, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:31:32.237' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (469, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:31:40.163' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (470, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:31:45.577' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (471, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:31:46.373' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (472, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:31:47.133' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (473, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:31:47.910' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (474, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:31:48.993' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (475, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:31:49.623' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (476, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:31:50.550' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (477, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:31:53.207' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (478, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:31:55.163' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (479, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:35:17.583' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (480, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:35:18.767' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (481, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:35:17.583' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (482, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:35:39.183' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (483, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:35:47.910' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (484, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:35:53.593' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (485, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:36:03.350' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (486, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:36:08.123' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (487, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:36:27.447' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (488, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:36:37.833' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (489, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:36:43.970' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (490, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:36:49.293' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (491, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:36:58.980' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (492, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:36:59.767' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (493, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:37:00.317' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (494, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:37:01.387' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (495, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:37:09.750' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (496, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:37:11.030' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (497, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:37:12.173' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (498, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:37:13.277' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (499, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:37:15.947' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (500, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:37:16.863' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (501, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:37:26.660' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (502, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:37:55.487' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (503, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:38:09.737' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (504, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:38:17.243' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (505, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:38:20.683' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (506, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:38:24.283' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (507, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:38:25.520' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (508, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:38:26.317' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (509, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:38:27.100' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (510, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:38:27.733' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (511, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:39:33.973' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (512, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:39:34.013' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (513, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:39:33.987' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (514, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:39:34.020' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (515, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:39:35.487' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (516, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:39:36.587' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (517, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:42:49.647' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (518, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:42:53.187' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (519, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:42:54.417' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (520, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:42:55.223' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (521, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:42:56.150' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (522, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:42:56.940' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (523, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:42:58.530' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (524, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:43:02.060' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (525, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:43:18.633' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (526, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:44:07.403' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (527, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:26.373' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (528, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:29.333' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (529, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:31.033' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (530, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:32.743' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (531, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:34.020' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (532, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:34.700' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (533, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:35.507' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (534, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:36.373' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (535, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:36.977' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (536, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:38.003' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (537, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:39.150' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (538, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:41.483' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (539, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:46.860' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (540, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:50.180' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (541, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:52.647' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (542, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:56.593' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (543, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:48:21.827' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (544, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:09.847' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (545, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:11.603' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (546, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:13.770' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (547, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:14.613' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (548, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:15.323' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (549, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:16.010' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (550, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:18.623' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (551, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:19.267' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (552, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:53:41.027' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (553, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:53:41.500' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (554, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:53:57.717' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (555, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:54:05.520' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (556, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:54:07.653' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (557, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:54:09.030' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (558, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:54:10.980' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (559, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:54:13.087' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (560, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:54:13.517' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (561, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:58:38.327' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (562, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:59:16.670' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (563, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:59:35.987' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (564, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:59:55.100' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (565, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:59:59.387' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (566, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:00:16.217' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (567, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:00:27.003' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (568, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:00:31.127' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (569, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:00:32.473' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (570, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:00:51.230' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (571, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:01:43.040' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (572, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:01:45.990' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (573, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:01:50.560' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (574, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:01:53.077' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (575, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:02:15.563' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (576, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:02:22.907' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (577, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:02:30.740' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (578, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:02:35.187' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (579, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:02:40.480' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (580, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:02:43.147' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (581, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:02:47.200' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (582, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:02:52.877' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (583, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:02:56.803' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (584, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:03:00.507' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (585, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:03:04.033' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (586, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:03:08.480' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (587, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:03:12.087' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (588, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:03:17.287' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (589, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:03:19.007' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (590, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:03:38.797' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (591, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:03:51.410' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (592, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:04:05.867' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (593, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:04:12.010' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (594, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:04:18.037' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (595, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:04:21.363' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (596, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:04:24.160' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (597, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:04:26.997' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (598, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:04:29.833' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (599, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:04:32.827' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (600, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:04:35.817' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (601, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:04:46.890' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (602, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:04:50.273' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (603, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:05:09.707' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (604, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:05:13.680' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (605, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:05:16.217' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (606, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:05:19.697' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (607, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:05:22.503' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (608, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:05:24.977' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (609, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:05:27.503' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (610, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:05:30.217' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (611, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:05:33.173' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (612, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:05:36.140' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (613, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:05:39.673' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (614, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:05:43.427' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (615, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:05:47.517' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (616, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:05:51.587' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (617, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:05:56.600' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (618, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:05:59.590' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (619, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:06:01.997' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (620, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:06:05.070' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (621, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:06:07.897' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (622, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:06:11.153' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (623, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:07:33.693' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (624, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:07:35.703' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (625, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:07:46.487' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (626, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:07:50.377' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (627, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:07:55.123' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (628, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:00.430' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (629, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:06.390' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (630, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:14.057' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (631, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:12:21.247' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (632, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:12:25.560' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (633, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:12:28.493' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (634, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:14:18.907' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (635, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:14:27.370' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (636, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:14:29.373' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (637, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:14:38.050' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (638, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:14:39.617' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1596, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:34:03.120' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1597, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:34:13.013' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1598, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:34:15.747' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1599, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:34:19.670' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1600, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:34:23.020' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1601, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:34:27.327' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1602, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:34:29.283' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1603, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:34:32.890' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1604, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:34:34.180' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1605, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:34:36.683' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1606, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:34:38.433' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1607, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:34:42.773' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1608, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:34:45.233' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1609, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:34:49.803' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1610, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:34:56.387' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1611, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:36:29.097' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1612, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:36:39.110' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1613, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:36:42.327' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1614, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:37:00.683' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1615, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:37:06.500' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1616, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:37:22.473' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1617, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:37:26.537' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1618, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:37:52.627' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1619, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:38:18.980' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1620, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:38:25.937' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1621, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:39:02.880' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1622, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:39:08.353' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1623, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:39:39.007' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1624, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:40:08.377' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1625, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:40:15.153' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1626, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:40:15.807' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1627, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:40:17.667' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1628, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:40:34.703' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1629, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:40:43.090' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1630, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:40:58.913' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1631, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:41:02.573' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1632, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:41:07.337' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1633, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:41:08.497' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1634, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:41:09.360' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1635, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:41:09.967' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1636, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:41:11.227' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1637, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:41:12.967' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1638, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:41:18.097' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1639, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:41:22.643' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1640, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:41:26.910' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1641, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:41:31.487' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1642, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:41:37.623' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1643, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:41:41.697' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1644, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:41:47.270' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1645, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:43:27.517' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1646, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:21.657' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1647, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:28.770' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1648, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:34.290' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1649, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:43.707' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1650, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:45.320' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1651, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:47.897' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1652, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:49.450' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1653, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:51.920' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1654, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:52.510' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1655, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:53.890' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1656, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:56.200' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1657, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:46:57.670' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1658, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:47:44.737' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1659, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:48:11.407' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1660, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:48:17.177' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1661, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:48:18.557' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1662, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:48:28.057' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1663, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:48:30.103' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1664, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:48:33.687' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1665, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:48:35.277' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1666, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:48:37.183' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1667, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:48:38.403' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1668, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:48:57.220' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1669, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:49:03.060' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1670, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:49:05.843' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1671, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:49:08.317' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1672, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:49:10.160' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1673, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:49:11.323' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1674, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:49:12.440' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1675, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:49:13.590' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1676, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:49:17.287' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1677, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:49:18.500' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1678, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:49:30.777' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1679, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:49:34.317' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1680, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:49:35.897' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1681, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:49:57.267' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1682, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:50:00.360' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1683, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:50:05.837' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1684, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:50:07.550' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1685, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:50:08.460' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1686, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:50:09.827' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1687, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:50:11.840' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1688, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:50:13.027' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1689, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:50:15.410' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1690, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:50:16.790' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1691, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:50:18.630' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1692, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:50:20.247' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1693, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:15.783' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1694, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:19.253' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1695, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:25.123' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1696, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:28.580' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1697, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:30.033' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1698, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:31.930' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1699, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:38.093' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1700, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:43.347' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1701, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:46.440' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1702, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:47.673' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1703, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:49.177' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1704, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:50.623' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1705, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:51.737' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1706, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:51:54.080' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1707, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:52:00.913' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1708, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:52:02.697' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1709, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:53:45.167' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1710, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:53:54.603' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1711, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:53:57.667' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1712, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:56:10.817' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1713, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:56:14.113' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1714, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:56:17.217' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1715, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:56:41.570' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1716, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:56:49.223' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1717, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:56:50.257' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1718, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:56:51.310' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1719, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:56:53.577' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1720, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:56:54.967' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1721, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:56:56.873' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1722, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:56:58.240' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1723, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:57:01.117' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1724, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:57:02.187' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1725, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:57:04.090' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1726, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:57:05.607' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1727, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:57:08.063' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1728, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:57:09.827' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1729, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:57:12.897' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1730, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:57:14.113' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1731, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:57:16.373' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1732, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:57:17.217' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1733, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:57:19.387' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1734, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:57:21.070' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1735, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:57:23.150' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1736, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:57:25.977' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1737, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:57:27.043' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1738, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:57:30.907' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1739, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:57:32.070' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1740, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:58:21.280' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1741, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:58:23.167' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1742, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:58:27.357' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1743, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:58:30.533' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1744, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:58:31.633' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1745, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:58:34.450' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1746, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:58:58.887' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1747, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:59:21.917' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1748, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:59:27.033' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1749, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:59:28.163' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1750, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:59:28.680' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1751, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:59:29.687' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1752, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:59:33.493' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1753, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:59:35.317' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1754, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:59:36.637' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1755, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:59:39.587' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1756, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:59:41.093' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1757, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:59:44.273' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1758, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 07:59:45.727' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1759, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:00:27.647' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1760, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:00:34.707' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1761, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:00:37.603' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1762, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:00:38.730' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1763, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:00:39.740' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1764, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:00:42.553' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1765, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:00:43.550' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1766, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:00:45.243' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1767, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:00:46.567' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1768, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:01:25.657' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1769, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:01:34.407' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1770, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:01:38.830' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1771, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:02:16.057' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1772, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:02:20.397' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1773, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:02:25.223' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1774, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:03:19.723' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1775, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:03:23.923' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1776, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:03:28.033' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1777, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:04:03.100' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1778, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:04:38.887' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1779, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:04:43.330' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1780, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:04:48.660' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1781, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:04:49.937' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1782, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:04:52.250' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1783, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:04:54.020' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1784, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:04:56.763' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1785, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:04:57.713' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1786, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:05:21.427' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1787, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:05:26.817' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1788, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:05:29.240' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1789, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:06:07.587' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1790, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:06:24.283' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1791, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:06:45.020' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1792, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:06:53.290' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1793, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:06:58.033' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1794, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:07:38.680' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1795, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:07:42.580' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1796, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:07:44.523' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1797, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:09.033' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1798, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:16.153' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1799, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:27.707' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1800, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:29.890' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1801, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:33.033' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1802, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:34.220' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1803, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:36.063' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1804, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:37.167' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1805, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:39.577' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1806, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:40.857' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1807, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:42.920' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1808, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:44.923' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1809, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:46.533' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1810, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:47.367' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1811, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:49.733' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1812, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:50.880' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1813, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:53.327' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1814, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:54.613' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1815, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:57.083' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1816, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:08:58.097' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1817, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:01.927' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1818, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:03.217' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1819, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:05.537' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1820, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:06.853' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1821, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:09.930' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1822, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:11.157' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1823, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:14.817' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1824, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:15.983' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1825, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:19.703' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1826, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:22.497' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1827, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:25.043' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1828, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:26.057' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1829, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:28.340' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1830, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:29.850' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1831, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:33.040' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1832, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:34.147' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1833, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:36.320' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1834, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:38.203' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1835, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:41.217' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1836, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:42.673' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1837, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:44.523' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1838, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:45.573' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1839, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:49.133' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1840, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:50.237' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1841, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:53.067' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1842, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:54.050' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1843, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:56.977' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1844, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:09:58.427' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1845, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:10:01.390' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1846, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:10:02.933' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1847, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:10:05.113' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1848, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:10:06.707' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1849, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:10:09.057' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1850, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:10:10.457' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1851, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:10:16.933' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1852, 3, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:10:31.523' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1853, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:10:44.630' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1854, 3, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:10:51.047' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1855, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:11:27.690' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1856, 3, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:11:33.210' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1857, 1, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:12:06.720' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1858, 3, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:14:07.430' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1859, 3, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:15:31.983' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1860, 3, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:15:35.853' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1861, 3, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:21:57.637' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1862, 3, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:22:38.457' AS DateTime))
GO
INSERT [dbo].[Log] ([Id], [UsuarioId], [RegistroId], [Acao], [OrigemAcesso], [IpMaquina], [DataInclusao]) VALUES (1863, 3, NULL, N'Login', N'LucasNote', N'127.0.0.1', CAST(N'2016-03-10 08:23:16.383' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Log] OFF
GO
SET IDENTITY_INSERT [dbo].[Motel] ON 

GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (1, N'Vyss Motel', N'saopaulo', N'14.gif', N'Rua da Conceição, 543 - Centro')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (2, N'Motel Rarus', N'saopaulo', N'90.gif', N'Av. das Flores, 12 - Jardim')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (3, N'Motel Le', N'riodejaneiro', N'7.gif', N'Av. Gertrudes, 100 - Centro')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (4, N'Motel Paradiso', N'florianopolis', N'14.gif', N'Largo 13, 1.200 - Praia')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (5, N'Motel Summer', N'florianopolis', N'90.gif', N'Av. 13 de Maio, 453 - Centro')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (6, N'Atualitt Motel', N'recife', N'14.gif', N'Rua Recife, 54 - Centro')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (7, N'Motel Taj Mahal', N'recife', N'90.gif', N'Rua Orquídeas, 541, Centro')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (8, N'Hotel Novo Plano', N'saopaulo', N'7.gif', N'Rua da Conceição, 543 - Centro')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (9, N'Hotel Bom Gosto', N'saopaulo', N'95.gif', N'Av. das Flores, 12 - Jardim')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (10, N'Motel Scala', N'riodejaneiro', N'14.gif', N'Av. Gertrudes, 100 - Centro')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (11, N'Millenium Hotel', N'florianopolis', N'95.gif', N'Largo 13, 1.200 - Praia')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (12, N'Motel Oásis', N'florianopolis', N'205.gif', N'Av. 13 de Maio, 453 - Centro')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (13, N'Motel Le Royale', N'recife', N'882.gif', N'Rua Recife, 54 - Centro')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (14, N'Motel Álibi', N'recife', N'45.gif', N'Rua Orquídeas, 541, Centro')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (15, N'Hotel Liberty', N'saopaulo', N'882.gif', N'Rua da Conceição, 543 - Centro')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (16, N'Climax Motel', N'saopaulo', N'205.gif', N'Av. das Flores, 12 - Jardim')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (17, N'Bora Motel', N'riodejaneiro', N'205.gif', N'Av. Gertrudes, 100 - Centro')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (18, N'Momments Hotel', N'florianopolis', N'95.gif', N'Largo 13, 1.200 - Praia')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (19, N'Motel Camasutra', N'florianopolis', N'14.gif', N'Av. 13 de Maio, 453 - Centro')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (20, N'Motel Premium', N'recife', N'95.gif', N'Rua Recife, 54 - Centro')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (21, N'Pousada Saramanta', N'recife', N'7.gif', N'Rua Orquídeas, 541, Centro')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (22, N'Tantra Motel', N'saopaulo', N'45.gif', N'Rua da Conceição, 543 - Centro')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (23, N'Stillus Motel', N'saopaulo', N'90.gif', N'Av. das Flores, 12 - Jardim')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (24, N'Motel Le Baron', N'riodejaneiro', N'45.gif', N'Av. Gertrudes, 100 - Centro')
GO
INSERT [dbo].[Motel] ([Id], [Nome], [Regiao], [Logo], [Endereco]) VALUES (25, N'Motel Lagoa', N'florianopolis', N'882.gif', N'Largo 13, 1.200 - Praia')
GO
SET IDENTITY_INSERT [dbo].[Motel] OFF
GO
SET IDENTITY_INSERT [dbo].[MotelQuarto] ON 

GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (3, 19, N'Suíte Quéfren')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (4, 2, N'Suíte Carícia')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (5, 2, N'Suíte Carícia Gold')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (6, 3, N'Suíte Luxúria')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (7, 4, N'Suíte Êxtase')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (8, 4, N'Suíte Vip')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (9, 4, N'Suíte Tropical')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (10, 5, N'Suíte Tulipa')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (11, 5, N'Suíte Lírio')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (12, 5, N'Suíte Prímola')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (13, 5, N'Suíte Prímola Plus')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (14, 5, N'Suíte Azaléia')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (15, 6, N'Suíte Netuno')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (16, 6, N'Suíte Saturno')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (19, 7, N'Suíte Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (20, 7, N'Suíte Mahal')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (21, 7, N'Suíte Super Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (22, 9, N'Suíte Hidro Vip')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (92, 1, N'Suíte Miquerinos')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (93, 1, N'Suíte Cleópatra')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (94, 1, N'Suíte Quéfren')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (163, 8, N'Suíte Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (164, 8, N'Suíte Mahal')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (165, 8, N'Suíte Super Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (166, 10, N'Suíte Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (167, 10, N'Suíte Mahal')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (168, 10, N'Suíte Super Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (169, 15, N'Suíte Êxtase')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (170, 15, N'Suíte Vip')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (171, 15, N'Suíte Tropical')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (172, 16, N'Suíte Tulipa')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (173, 16, N'Suíte Lírio')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (174, 16, N'Suíte Prímola')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (175, 16, N'Suíte Prímola Plus')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (176, 16, N'Suíte Azaléia')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (177, 22, N'Suíte Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (178, 22, N'Suíte Mahal')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (179, 22, N'Suíte Super Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (180, 23, N'Suíte Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (181, 23, N'Suíte Mahal')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (182, 23, N'Suíte Super Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (183, 17, N'Suíte Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (184, 17, N'Suíte Mahal')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (185, 17, N'Suíte Super Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (186, 24, N'Suíte Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (187, 24, N'Suíte Mahal')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (188, 24, N'Suíte Super Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (189, 11, N'Suíte Luxúria')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (190, 12, N'Suíte Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (191, 12, N'Suíte Mahal')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (192, 12, N'Suíte Super Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (193, 18, N'Suíte Luxúria')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (194, 25, N'Suíte Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (195, 25, N'Suíte Mahal')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (196, 25, N'Suíte Super Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (197, 13, N'Suíte Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (198, 13, N'Suíte Mahal')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (199, 13, N'Suíte Super Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (200, 14, N'Suíte Netuno')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (201, 14, N'Suíte Saturno')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (202, 20, N'Suíte Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (203, 20, N'Suíte Mahal')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (204, 20, N'Suíte Super Luxo')
GO
INSERT [dbo].[MotelQuarto] ([Id], [MotelId], [Nome]) VALUES (205, 21, N'Suíte Luxúria')
GO
SET IDENTITY_INSERT [dbo].[MotelQuarto] OFF
GO
SET IDENTITY_INSERT [dbo].[MotelQuartoImagem] ON 

GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (1, 92, N'foto3-suites.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (2, 92, N'foto4-suites.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (3, 92, N'foto5-suites.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (4, 93, N'foto1-suites.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (5, 93, N'foto2-suites.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (6, 94, N'foto3-suites (1).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (7, 94, N'foto5-suites (1).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (8, 94, N'foto6-suites.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (9, 94, N'foto4-suites (1).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (10, 3, N'foto1-suites (1).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (11, 4, N'90_big_8122_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (12, 4, N'90_big_8122_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (13, 4, N'90_big_8122_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (14, 4, N'90_big_8122_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (15, 5, N'90_big_11716_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (16, 5, N'90_big_11716_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (17, 5, N'90_big_11716_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (18, 6, N'foto1-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (19, 6, N'foto2-suites (1).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (20, 6, N'foto3-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (21, 6, N'foto4-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (22, 6, N'foto5-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (23, 7, N'foto1-suites (3).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (24, 7, N'foto2-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (25, 7, N'foto3-suites (3).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (26, 8, N'45_big_151_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (27, 8, N'45_big_151_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (28, 9, N'45_big_151_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (29, 9, N'45_big_151_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (30, 9, N'45_big_151_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (31, 9, N'45_big_151_6.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (32, 10, N'205_big_2236_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (33, 10, N'205_big_2236_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (34, 10, N'205_big_2236_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (35, 10, N'205_big_2236_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (36, 11, N'205_big_6178_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (37, 11, N'205_big_6178_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (38, 11, N'205_big_6178_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (39, 12, N'205_big_6178_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (40, 12, N'205_big_6178_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (41, 12, N'205_big_940_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (42, 12, N'205_big_940_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (43, 12, N'205_big_940_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (44, 13, N'205_big_940_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (45, 13, N'205_big_940_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (46, 14, N'205_big_940_6.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (47, 14, N'foto2-suites (3).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (48, 14, N'foto1-suites (4).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (49, 14, N'foto3-suites (4).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (50, 15, N'95_big_7030_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (51, 15, N'95_big_7030_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (52, 15, N'95_big_7030_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (53, 16, N'95_big_7027_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (54, 16, N'95_big_7027_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (55, 16, N'95_big_7027_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (56, 16, N'95_big_7027_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (57, 16, N'95_big_7027_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (58, 16, N'95_big_7029_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (59, 19, N'7_big_158_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (60, 19, N'7_big_158_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (61, 19, N'7_big_158_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (62, 19, N'7_big_158_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (63, 19, N'7_big_158_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (64, 20, N'7_big_159_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (65, 20, N'7_big_159_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (66, 20, N'7_big_159_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (67, 20, N'7_big_159_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (68, 20, N'7_big_159_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (69, 21, N'7_big_160_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (70, 21, N'7_big_160_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (71, 21, N'7_big_160_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (72, 21, N'7_big_160_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (73, 21, N'7_big_160_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (74, 21, N'7_big_160_6.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (75, 21, N'7_big_160_7.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (76, 21, N'7_big_160_8.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (77, 22, N'7_muntaz1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (78, 22, N'7_muntaz2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (79, 22, N'7_muntaz3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (80, 22, N'7_muntaz4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (81, 22, N'foto3-suites (5).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (82, 22, N'foto1-suites (5).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (83, 22, N'foto2-suites (4).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (84, 163, N'7_big_158_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (85, 163, N'7_big_158_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (86, 163, N'7_big_158_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (87, 163, N'7_big_158_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (88, 163, N'7_big_158_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (89, 164, N'7_big_159_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (90, 164, N'7_big_159_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (91, 164, N'7_big_159_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (92, 164, N'7_big_159_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (93, 164, N'7_big_159_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (94, 165, N'7_big_160_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (95, 165, N'7_big_160_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (96, 165, N'7_big_160_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (97, 165, N'7_big_160_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (98, 165, N'7_big_160_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (99, 165, N'7_big_160_6.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (100, 165, N'7_big_160_7.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (101, 165, N'7_big_160_8.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (102, 166, N'7_big_158_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (103, 166, N'7_big_158_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (104, 166, N'7_big_158_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (105, 166, N'7_big_158_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (106, 166, N'7_big_158_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (107, 167, N'7_big_159_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (108, 167, N'7_big_159_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (109, 167, N'7_big_159_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (110, 167, N'7_big_159_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (111, 167, N'7_big_159_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (112, 168, N'7_big_160_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (113, 168, N'7_big_160_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (114, 168, N'7_big_160_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (115, 168, N'7_big_160_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (116, 168, N'7_big_160_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (117, 168, N'7_big_160_6.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (118, 168, N'7_big_160_7.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (119, 168, N'7_big_160_8.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (120, 169, N'foto1-suites (3).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (121, 169, N'foto2-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (122, 169, N'foto3-suites (3).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (123, 170, N'45_big_151_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (124, 170, N'45_big_151_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (125, 171, N'45_big_151_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (126, 171, N'45_big_151_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (127, 171, N'45_big_151_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (128, 171, N'45_big_151_6.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (129, 172, N'205_big_2236_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (130, 172, N'205_big_2236_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (131, 172, N'205_big_2236_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (132, 172, N'205_big_2236_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (133, 173, N'205_big_6178_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (134, 173, N'205_big_6178_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (135, 173, N'205_big_6178_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (136, 174, N'205_big_6178_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (137, 174, N'205_big_6178_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (138, 174, N'205_big_940_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (139, 174, N'205_big_940_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (140, 174, N'205_big_940_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (141, 175, N'205_big_940_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (142, 175, N'205_big_940_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (143, 176, N'205_big_940_6.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (144, 176, N'foto2-suites (3).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (145, 176, N'foto1-suites (4).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (146, 176, N'foto3-suites (4).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (148, 177, N'7_big_158_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (149, 177, N'7_big_158_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (150, 177, N'7_big_158_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (151, 177, N'7_big_158_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (152, 177, N'7_big_158_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (153, 178, N'7_big_159_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (154, 178, N'7_big_159_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (155, 178, N'7_big_159_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (156, 178, N'7_big_159_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (157, 178, N'7_big_159_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (158, 179, N'7_big_160_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (159, 179, N'7_big_160_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (160, 179, N'7_big_160_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (161, 179, N'7_big_160_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (162, 179, N'7_big_160_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (163, 179, N'7_big_160_6.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (164, 179, N'7_big_160_7.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (165, 179, N'7_big_160_8.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (166, 180, N'7_big_158_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (167, 180, N'7_big_158_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (168, 180, N'7_big_158_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (169, 180, N'7_big_158_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (170, 180, N'7_big_158_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (171, 181, N'7_big_159_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (172, 181, N'7_big_159_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (173, 181, N'7_big_159_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (174, 181, N'7_big_159_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (175, 181, N'7_big_159_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (176, 182, N'7_big_160_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (177, 182, N'7_big_160_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (178, 182, N'7_big_160_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (179, 182, N'7_big_160_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (180, 182, N'7_big_160_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (181, 182, N'7_big_160_6.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (182, 182, N'7_big_160_7.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (183, 182, N'7_big_160_8.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (184, 183, N'7_big_158_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (185, 183, N'7_big_158_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (186, 183, N'7_big_158_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (187, 183, N'7_big_158_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (188, 183, N'7_big_158_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (189, 184, N'7_big_159_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (190, 184, N'7_big_159_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (191, 184, N'7_big_159_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (192, 184, N'7_big_159_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (193, 184, N'7_big_159_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (194, 185, N'7_big_160_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (195, 185, N'7_big_160_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (196, 185, N'7_big_160_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (197, 185, N'7_big_160_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (198, 185, N'7_big_160_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (199, 185, N'7_big_160_6.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (200, 185, N'7_big_160_7.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (201, 185, N'7_big_160_8.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (202, 186, N'7_big_158_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (203, 186, N'7_big_158_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (204, 186, N'7_big_158_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (205, 186, N'7_big_158_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (206, 186, N'7_big_158_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (207, 187, N'7_big_159_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (208, 187, N'7_big_159_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (209, 187, N'7_big_159_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (210, 187, N'7_big_159_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (211, 187, N'7_big_159_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (212, 188, N'7_big_160_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (213, 188, N'7_big_160_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (214, 188, N'7_big_160_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (215, 188, N'7_big_160_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (216, 188, N'7_big_160_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (217, 188, N'7_big_160_6.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (218, 188, N'7_big_160_7.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (219, 188, N'7_big_160_8.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (220, 189, N'foto1-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (221, 189, N'foto2-suites (1).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (222, 189, N'foto3-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (223, 189, N'foto4-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (224, 189, N'foto5-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (225, 190, N'7_big_158_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (226, 190, N'7_big_158_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (227, 190, N'7_big_158_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (228, 190, N'7_big_158_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (229, 190, N'7_big_158_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (230, 191, N'7_big_159_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (231, 191, N'7_big_159_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (232, 191, N'7_big_159_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (233, 191, N'7_big_159_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (234, 191, N'7_big_159_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (235, 192, N'7_big_160_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (236, 192, N'7_big_160_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (237, 192, N'7_big_160_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (238, 192, N'7_big_160_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (239, 192, N'7_big_160_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (240, 192, N'7_big_160_6.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (241, 192, N'7_big_160_7.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (242, 192, N'7_big_160_8.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (243, 193, N'foto1-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (244, 193, N'foto2-suites (1).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (245, 193, N'foto3-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (246, 193, N'foto4-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (247, 193, N'foto5-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (248, 3, N'foto1-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (249, 3, N'foto2-suites (1).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (250, 3, N'foto3-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (251, 3, N'foto4-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (252, 3, N'foto5-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (253, 193, N'foto1-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (254, 193, N'foto2-suites (1).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (255, 193, N'foto3-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (256, 193, N'foto4-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (257, 193, N'foto5-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (258, 194, N'7_big_159_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (259, 194, N'7_big_159_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (260, 194, N'7_big_159_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (261, 194, N'7_big_159_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (262, 194, N'7_big_159_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (263, 195, N'7_big_160_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (264, 195, N'7_big_160_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (265, 195, N'7_big_160_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (266, 195, N'7_big_160_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (267, 195, N'7_big_160_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (268, 195, N'7_big_160_6.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (269, 195, N'7_big_160_7.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (270, 195, N'7_big_160_8.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (271, 196, N'7_big_160_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (272, 196, N'7_big_160_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (273, 196, N'7_big_160_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (274, 196, N'7_big_160_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (275, 196, N'7_big_160_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (276, 196, N'7_big_160_6.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (277, 196, N'7_big_160_7.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (278, 196, N'7_big_160_8.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (279, 197, N'foto1-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (280, 197, N'foto2-suites (1).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (281, 197, N'foto3-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (282, 197, N'foto4-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (283, 197, N'foto5-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (284, 198, N'7_big_159_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (285, 198, N'7_big_159_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (286, 198, N'7_big_159_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (287, 198, N'7_big_159_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (288, 198, N'7_big_159_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (289, 199, N'7_big_160_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (290, 199, N'7_big_160_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (291, 199, N'7_big_160_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (292, 199, N'7_big_160_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (293, 199, N'7_big_160_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (294, 199, N'7_big_160_6.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (295, 199, N'7_big_160_7.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (296, 199, N'7_big_160_8.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (297, 200, N'foto1-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (298, 200, N'foto2-suites (1).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (299, 200, N'foto3-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (300, 200, N'foto4-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (301, 200, N'foto5-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (302, 200, N'7_big_159_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (303, 200, N'7_big_159_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (304, 200, N'7_big_159_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (305, 200, N'7_big_159_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (306, 200, N'7_big_159_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (307, 201, N'7_big_159_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (308, 201, N'7_big_159_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (309, 201, N'7_big_159_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (310, 201, N'7_big_159_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (311, 201, N'7_big_159_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (312, 202, N'7_big_158_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (313, 202, N'7_big_158_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (314, 202, N'7_big_158_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (315, 202, N'7_big_158_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (316, 202, N'7_big_158_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (317, 203, N'7_big_159_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (318, 203, N'7_big_159_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (319, 203, N'7_big_159_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (320, 203, N'7_big_159_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (321, 203, N'7_big_159_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (322, 204, N'7_big_160_1.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (323, 204, N'7_big_160_2.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (324, 204, N'7_big_160_3.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (325, 204, N'7_big_160_4.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (326, 204, N'7_big_160_5.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (327, 204, N'7_big_160_6.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (328, 204, N'7_big_160_7.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (329, 204, N'7_big_160_8.jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (330, 205, N'foto1-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (331, 205, N'foto2-suites (1).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (332, 205, N'foto3-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (333, 205, N'foto4-suites (2).jpg')
GO
INSERT [dbo].[MotelQuartoImagem] ([Id], [MotelQuartoId], [Imagem]) VALUES (334, 205, N'foto5-suites (2).jpg')
GO
SET IDENTITY_INSERT [dbo].[MotelQuartoImagem] OFF
GO
SET IDENTITY_INSERT [dbo].[MotelQuartoPeriodo] ON 

GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (1, 92, N'2ª a 5ª - 6h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (2, 92, N'sáb a dom - 3h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (3, 93, N'2ª a 5ª - 6h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (4, 93, N'2ª a 5ª - 3h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (5, 93, N'sáb a dom - 1h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (6, 94, N'2ª a 6ª até as 17h - 2h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (7, 94, N'6ª após as 17h até dom - 2h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (8, 4, N'sextas a partir da 0h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (9, 5, N'2ª a 6ª até as 17h - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (10, 5, N'6ª após as 17h até dom - 3h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (11, 6, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (12, 6, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (13, 7, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (14, 8, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (15, 8, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (16, 9, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (17, 10, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (18, 10, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (19, 11, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (20, 11, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (21, 12, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (22, 12, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (23, 13, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (24, 14, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (25, 15, N'2ª a 6ª até as 17h - 2h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (26, 15, N'6ª após as 17h até dom - 2h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (27, 15, N'sextas a partir da 0h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (28, 16, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (29, 16, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (30, 19, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (31, 19, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (32, 20, N'2ª a 6ª até as 17h - 2h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (33, 20, N'sextas a partir da 0h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (34, 20, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (35, 21, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (36, 21, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (37, 22, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (38, 22, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (39, 163, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (40, 163, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (41, 164, N'2ª a 6ª até as 17h - 2h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (42, 164, N'sextas a partir da 0h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (43, 164, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (44, 165, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (45, 165, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (46, 166, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (47, 166, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (48, 167, N'2ª a 6ª até as 17h - 2h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (49, 167, N'sextas a partir da 0h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (50, 167, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (51, 168, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (52, 168, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (53, 169, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (54, 170, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (55, 170, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (56, 171, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (57, 172, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (58, 172, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (59, 173, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (60, 173, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (61, 174, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (62, 174, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (63, 175, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (64, 176, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (66, 177, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (67, 177, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (68, 178, N'2ª a 6ª até as 17h - 2h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (69, 178, N'sextas a partir da 0h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (70, 178, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (71, 179, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (72, 179, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (73, 180, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (74, 180, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (75, 181, N'2ª a 6ª até as 17h - 2h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (76, 181, N'sextas a partir da 0h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (77, 181, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (78, 182, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (79, 182, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (80, 183, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (81, 183, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (82, 184, N'2ª a 6ª até as 17h - 2h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (83, 184, N'sextas a partir da 0h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (84, 184, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (85, 185, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (86, 185, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (87, 186, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (88, 186, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (89, 187, N'2ª a 6ª até as 17h - 2h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (90, 187, N'sextas a partir da 0h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (91, 187, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (92, 188, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (93, 188, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (94, 189, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (95, 189, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (96, 190, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (97, 190, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (98, 191, N'2ª a 6ª até as 17h - 2h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (99, 191, N'sextas a partir da 0h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (100, 191, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (101, 192, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (102, 192, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (103, 193, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (104, 193, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (105, 3, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (106, 3, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (107, 193, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (108, 193, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (109, 194, N'2ª a 6ª até as 17h - 2h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (110, 194, N'sextas a partir da 0h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (111, 194, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (112, 195, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (113, 195, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (114, 196, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (115, 196, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (116, 197, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (117, 197, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (118, 198, N'2ª a 6ª até as 17h - 2h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (119, 198, N'sextas a partir da 0h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (120, 198, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (121, 199, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (122, 199, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (123, 200, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (124, 200, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (125, 200, N'2ª a 6ª até as 17h - 2h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (126, 200, N'sextas a partir da 0h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (127, 200, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (128, 201, N'2ª a 6ª até as 17h - 2h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (129, 201, N'sextas a partir da 0h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (130, 201, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (131, 202, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (132, 202, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (133, 203, N'2ª a 6ª até as 17h - 2h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (134, 203, N'sextas a partir da 0h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (135, 203, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (136, 204, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (137, 204, N'6ª a dom - 4h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (138, 205, N'2ª a 5ª - 12h')
GO
INSERT [dbo].[MotelQuartoPeriodo] ([Id], [MotelQuartoId], [Descricao]) VALUES (139, 205, N'6ª a dom - 4h')
GO
SET IDENTITY_INSERT [dbo].[MotelQuartoPeriodo] OFF
GO
SET IDENTITY_INSERT [dbo].[Perfil] ON 

GO
INSERT [dbo].[Perfil] ([Id], [Nome]) VALUES (1, N'Master')
GO
INSERT [dbo].[Perfil] ([Id], [Nome]) VALUES (2, N'Visitante')
GO
SET IDENTITY_INSERT [dbo].[Perfil] OFF
GO
SET IDENTITY_INSERT [dbo].[PerfilFuncionalidade] ON 

GO
INSERT [dbo].[PerfilFuncionalidade] ([Id], [PerfilId], [FuncionalidadeId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[PerfilFuncionalidade] ([Id], [PerfilId], [FuncionalidadeId]) VALUES (2, 1, 2)
GO
INSERT [dbo].[PerfilFuncionalidade] ([Id], [PerfilId], [FuncionalidadeId]) VALUES (3, 1, 3)
GO
INSERT [dbo].[PerfilFuncionalidade] ([Id], [PerfilId], [FuncionalidadeId]) VALUES (4, 1, 4)
GO
INSERT [dbo].[PerfilFuncionalidade] ([Id], [PerfilId], [FuncionalidadeId]) VALUES (5, 1, 5)
GO
INSERT [dbo].[PerfilFuncionalidade] ([Id], [PerfilId], [FuncionalidadeId]) VALUES (6, 1, 6)
GO
INSERT [dbo].[PerfilFuncionalidade] ([Id], [PerfilId], [FuncionalidadeId]) VALUES (7, 1, 7)
GO
INSERT [dbo].[PerfilFuncionalidade] ([Id], [PerfilId], [FuncionalidadeId]) VALUES (8, 1, 8)
GO
INSERT [dbo].[PerfilFuncionalidade] ([Id], [PerfilId], [FuncionalidadeId]) VALUES (9, 1, 9)
GO
INSERT [dbo].[PerfilFuncionalidade] ([Id], [PerfilId], [FuncionalidadeId]) VALUES (10, 1, 10)
GO
INSERT [dbo].[PerfilFuncionalidade] ([Id], [PerfilId], [FuncionalidadeId]) VALUES (11, 1, 11)
GO
INSERT [dbo].[PerfilFuncionalidade] ([Id], [PerfilId], [FuncionalidadeId]) VALUES (12, 1, 12)
GO
INSERT [dbo].[PerfilFuncionalidade] ([Id], [PerfilId], [FuncionalidadeId]) VALUES (13, 1, 13)
GO
INSERT [dbo].[PerfilFuncionalidade] ([Id], [PerfilId], [FuncionalidadeId]) VALUES (63, 1, 14)
GO
INSERT [dbo].[PerfilFuncionalidade] ([Id], [PerfilId], [FuncionalidadeId]) VALUES (64, 1, 16)
GO
INSERT [dbo].[PerfilFuncionalidade] ([Id], [PerfilId], [FuncionalidadeId]) VALUES (65, 1, 17)
GO
SET IDENTITY_INSERT [dbo].[PerfilFuncionalidade] OFF
GO
SET IDENTITY_INSERT [dbo].[PerfilUsuario] ON 

GO
INSERT [dbo].[PerfilUsuario] ([Id], [PerfilId], [UsuarioId]) VALUES (29, 2, 1)
GO
INSERT [dbo].[PerfilUsuario] ([Id], [PerfilId], [UsuarioId]) VALUES (31, 1, 3)
GO
SET IDENTITY_INSERT [dbo].[PerfilUsuario] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

GO
INSERT [dbo].[Usuario] ([Id], [Nome], [Email], [Senha], [Ativo], [DataInclusao], [DataAlteracao]) VALUES (1, N'VISITANTE', N'VISITANTE', N'1000:fXJZy1QqQ13JMTNQFiLN8Jsosc5rWT0P:5CHJXCLjmQRthPvotnQ6g81gaN4=', 1, CAST(N'2016-02-03 03:56:06.583' AS DateTime), NULL)
GO
INSERT [dbo].[Usuario] ([Id], [Nome], [Email], [Senha], [Ativo], [DataInclusao], [DataAlteracao]) VALUES (3, N'Lucas', N'giusti.lucas@gmail.com', N'1000:fXJZy1QqQ13JMTNQFiLN8Jsosc5rWT0P:5CHJXCLjmQRthPvotnQ6g81gaN4=', 1, CAST(N'2016-02-03 03:51:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Usuario] ([Id], [Nome], [Email], [Senha], [Ativo], [DataInclusao], [DataAlteracao]) VALUES (4, N'João', N'joao', N'1000:fXJZy1QqQ13JMTNQFiLN8Jsosc5rWT0P:5CHJXCLjmQRthPvotnQ6g81gaN4=', 1, CAST(N'2016-02-03 03:03:03.000' AS DateTime), NULL)
GO
INSERT [dbo].[Usuario] ([Id], [Nome], [Email], [Senha], [Ativo], [DataInclusao], [DataAlteracao]) VALUES (5, N'Maria', N'maria', N'1000:fXJZy1QqQ13JMTNQFiLN8Jsosc5rWT0P:5CHJXCLjmQRthPvotnQ6g81gaN4=', 1, CAST(N'2016-02-03 03:03:03.000' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Email_Funcionalidade]') AND parent_object_id = OBJECT_ID(N'[dbo].[Email]'))
ALTER TABLE [dbo].[Email]  WITH CHECK ADD  CONSTRAINT [FK_Email_Funcionalidade] FOREIGN KEY([FuncionalidadeId])
REFERENCES [dbo].[Funcionalidade] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Email_Funcionalidade]') AND parent_object_id = OBJECT_ID(N'[dbo].[Email]'))
ALTER TABLE [dbo].[Email] CHECK CONSTRAINT [FK_Email_Funcionalidade]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Funcionalidade_Funcionalidade]') AND parent_object_id = OBJECT_ID(N'[dbo].[Funcionalidade]'))
ALTER TABLE [dbo].[Funcionalidade]  WITH CHECK ADD  CONSTRAINT [FK_Funcionalidade_Funcionalidade] FOREIGN KEY([FuncionalidadeIdPai])
REFERENCES [dbo].[Funcionalidade] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Funcionalidade_Funcionalidade]') AND parent_object_id = OBJECT_ID(N'[dbo].[Funcionalidade]'))
ALTER TABLE [dbo].[Funcionalidade] CHECK CONSTRAINT [FK_Funcionalidade_Funcionalidade]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Log_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Log]'))
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [FK_Log_Usuario] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuario] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Log_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Log]'))
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [FK_Log_Usuario]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MotelQuarto_Motel]') AND parent_object_id = OBJECT_ID(N'[dbo].[MotelQuarto]'))
ALTER TABLE [dbo].[MotelQuarto]  WITH CHECK ADD  CONSTRAINT [FK_MotelQuarto_Motel] FOREIGN KEY([MotelId])
REFERENCES [dbo].[Motel] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MotelQuarto_Motel]') AND parent_object_id = OBJECT_ID(N'[dbo].[MotelQuarto]'))
ALTER TABLE [dbo].[MotelQuarto] CHECK CONSTRAINT [FK_MotelQuarto_Motel]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MotelQuartoImagem_MotelQuarto]') AND parent_object_id = OBJECT_ID(N'[dbo].[MotelQuartoImagem]'))
ALTER TABLE [dbo].[MotelQuartoImagem]  WITH CHECK ADD  CONSTRAINT [FK_MotelQuartoImagem_MotelQuarto] FOREIGN KEY([MotelQuartoId])
REFERENCES [dbo].[MotelQuarto] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MotelQuartoImagem_MotelQuarto]') AND parent_object_id = OBJECT_ID(N'[dbo].[MotelQuartoImagem]'))
ALTER TABLE [dbo].[MotelQuartoImagem] CHECK CONSTRAINT [FK_MotelQuartoImagem_MotelQuarto]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MotelQuartoPeriodo_MotelQuarto]') AND parent_object_id = OBJECT_ID(N'[dbo].[MotelQuartoPeriodo]'))
ALTER TABLE [dbo].[MotelQuartoPeriodo]  WITH CHECK ADD  CONSTRAINT [FK_MotelQuartoPeriodo_MotelQuarto] FOREIGN KEY([MotelQuartoId])
REFERENCES [dbo].[MotelQuarto] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MotelQuartoPeriodo_MotelQuarto]') AND parent_object_id = OBJECT_ID(N'[dbo].[MotelQuartoPeriodo]'))
ALTER TABLE [dbo].[MotelQuartoPeriodo] CHECK CONSTRAINT [FK_MotelQuartoPeriodo_MotelQuarto]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PerfilFuncionalidade_Funcionalidade]') AND parent_object_id = OBJECT_ID(N'[dbo].[PerfilFuncionalidade]'))
ALTER TABLE [dbo].[PerfilFuncionalidade]  WITH CHECK ADD  CONSTRAINT [FK_PerfilFuncionalidade_Funcionalidade] FOREIGN KEY([FuncionalidadeId])
REFERENCES [dbo].[Funcionalidade] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PerfilFuncionalidade_Funcionalidade]') AND parent_object_id = OBJECT_ID(N'[dbo].[PerfilFuncionalidade]'))
ALTER TABLE [dbo].[PerfilFuncionalidade] CHECK CONSTRAINT [FK_PerfilFuncionalidade_Funcionalidade]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PerfilFuncionalidade_Perfil]') AND parent_object_id = OBJECT_ID(N'[dbo].[PerfilFuncionalidade]'))
ALTER TABLE [dbo].[PerfilFuncionalidade]  WITH CHECK ADD  CONSTRAINT [FK_PerfilFuncionalidade_Perfil] FOREIGN KEY([PerfilId])
REFERENCES [dbo].[Perfil] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PerfilFuncionalidade_Perfil]') AND parent_object_id = OBJECT_ID(N'[dbo].[PerfilFuncionalidade]'))
ALTER TABLE [dbo].[PerfilFuncionalidade] CHECK CONSTRAINT [FK_PerfilFuncionalidade_Perfil]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PerfilUsuario_Perfil]') AND parent_object_id = OBJECT_ID(N'[dbo].[PerfilUsuario]'))
ALTER TABLE [dbo].[PerfilUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PerfilUsuario_Perfil] FOREIGN KEY([PerfilId])
REFERENCES [dbo].[Perfil] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PerfilUsuario_Perfil]') AND parent_object_id = OBJECT_ID(N'[dbo].[PerfilUsuario]'))
ALTER TABLE [dbo].[PerfilUsuario] CHECK CONSTRAINT [FK_PerfilUsuario_Perfil]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PerfilUsuario_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[PerfilUsuario]'))
ALTER TABLE [dbo].[PerfilUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PerfilUsuario_Usuario] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuario] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PerfilUsuario_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[PerfilUsuario]'))
ALTER TABLE [dbo].[PerfilUsuario] CHECK CONSTRAINT [FK_PerfilUsuario_Usuario]
GO
