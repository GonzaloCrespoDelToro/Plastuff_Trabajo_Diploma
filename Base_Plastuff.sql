USE [Plastuff]
GO
/****** Object:  Table [dbo].[Backups]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Backups](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NombreArchivo] [nvarchar](max) NOT NULL,
	[Destino] [nvarchar](max) NOT NULL,
	[FechaHora] [datetime] NOT NULL,
 CONSTRAINT [PK_Backups] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bitacora]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bitacora](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Accion] [nvarchar](max) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
	[ID_Criticidad] [int] NOT NULL,
	[FechaHora] [datetime] NOT NULL,
	[U_id] [int] NOT NULL,
	[DVH] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Bitacora] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[C_nombre] [nvarchar](50) NOT NULL,
	[C_apellido] [nvarchar](50) NOT NULL,
	[C_direccion] [nvarchar](50) NOT NULL,
	[C_fechanac] [date] NOT NULL,
	[C_mail] [nvarchar](50) NOT NULL,
	[C_telefono] [nvarchar](50) NOT NULL,
	[C_DNI] [nvarchar](10) NOT NULL,
	[C_baja] [bit] NOT NULL,
	[DVH] [varchar](256) NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Colores]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colores](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[C_nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Colores] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Controles]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Controles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[F_id] [int] NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Controles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cotizaciones]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cotizaciones](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[E_ID] [int] NOT NULL,
	[C_ID] [int] NOT NULL,
	[C_preciofinal] [nvarchar](50) NOT NULL,
	[C_ruta] [varchar](256) NOT NULL,
	[C_Fecha] [date] NOT NULL,
	[C_Detalle] [varchar](256) NOT NULL,
 CONSTRAINT [PK_Cotizaciones] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Criticidad]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Criticidad](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Criticidad] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Detalle_Venta]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Venta](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[P_id] [int] NOT NULL,
	[V_id] [int] NOT NULL,
	[DV_cantidad] [int] NOT NULL,
	[DV_importe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Detalle_Venta] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DigitoVerificadorVertical]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DigitoVerificadorVertical](
	[Tabla] [nvarchar](50) NOT NULL,
	[DVV] [varchar](max) NOT NULL,
 CONSTRAINT [PK_DigitoVerificadorVertical] PRIMARY KEY CLUSTERED 
(
	[Tabla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[E_nombre] [nvarchar](50) NOT NULL,
	[E_apellido] [nvarchar](50) NOT NULL,
	[E_DNI] [nvarchar](50) NOT NULL,
	[E_fechanac] [nvarchar](50) NOT NULL,
	[E_mail] [nvarchar](50) NOT NULL,
	[E_direccion] [nvarchar](50) NOT NULL,
	[E_telefono] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Estados]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[E_estado] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fam_Pat]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fam_Pat](
	[F_id] [int] NOT NULL,
	[P_id] [int] NOT NULL,
	[DVH] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Familias]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Familias](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Familias] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Filamentos]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filamentos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[T_id] [int] NOT NULL,
	[C_id] [int] NOT NULL,
 CONSTRAINT [PK_Filamentos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Formularios]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formularios](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Formularios] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Idioma_Controles]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Idioma_Controles](
	[I_id] [int] NOT NULL,
	[C_id] [int] NOT NULL,
	[Texto] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Idiomas]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Idiomas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Idioma] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Idiomas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Impresion_Valores]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Impresion_Valores](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[I_Descripcion] [nvarchar](50) NOT NULL,
	[I_Valor] [float] NOT NULL,
 CONSTRAINT [PK_Impresion_Valores] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Patentes]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patentes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Patentes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[C_id] [int] NOT NULL,
	[E_id] [int] NOT NULL,
	[P_Fecha] [date] NOT NULL,
 CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Productos]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[F_id] [int] NOT NULL,
	[P_nombre] [nvarchar](50) NOT NULL,
	[P_peso] [nvarchar](50) NOT NULL,
	[P_precio] [nvarchar](50) NOT NULL,
	[P_tiempo_impresion] [nvarchar](50) NOT NULL,
	[P_cantidad] [int] NOT NULL,
	[DVH] [nvarchar](max) NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo_Filamento]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Filamento](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TF_tipo] [nvarchar](50) NOT NULL,
	[TF_Precio] [float] NOT NULL,
 CONSTRAINT [PK_Tipo_Filamento] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usu_Fam]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usu_Fam](
	[U_id] [int] NOT NULL,
	[F_id] [int] NOT NULL,
	[DVH] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usu_Pat]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usu_Pat](
	[U_id] [int] NOT NULL,
	[P_id] [int] NOT NULL,
	[DVH] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Pass] [nvarchar](max) NOT NULL,
	[Contador] [int] NOT NULL,
	[Bloqueado] [bit] NOT NULL,
	[Emp_id] [int] NOT NULL,
	[Idioma_id] [int] NOT NULL,
	[DVH] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 19/11/2020 15:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[E_id] [int] NOT NULL,
	[C_id] [int] NOT NULL,
	[V_fecha] [date] NOT NULL,
	[V_total] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Backups] ON 

INSERT [dbo].[Backups] ([ID], [NombreArchivo], [Destino], [FechaHora]) VALUES (1, N'asd', N'C:\Users\gonza\Desktop\asd', CAST(N'2020-11-08 21:28:10.000' AS DateTime))
INSERT [dbo].[Backups] ([ID], [NombreArchivo], [Destino], [FechaHora]) VALUES (2, N'sdf', N'C:\Users\gonza\Desktop\sdf', CAST(N'2020-11-08 21:30:04.000' AS DateTime))
INSERT [dbo].[Backups] ([ID], [NombreArchivo], [Destino], [FechaHora]) VALUES (3, N'orto', N'C:\Users\gonza\Desktop\orto', CAST(N'2020-11-09 20:22:31.000' AS DateTime))
INSERT [dbo].[Backups] ([ID], [NombreArchivo], [Destino], [FechaHora]) VALUES (4, N'Edge', N'C:\Users\gonza\Desktop\Edge', CAST(N'2020-11-14 20:58:59.000' AS DateTime))
INSERT [dbo].[Backups] ([ID], [NombreArchivo], [Destino], [FechaHora]) VALUES (5, N'BackUp', N'C:\Users\gonza\Desktop\BackUp', CAST(N'2020-11-19 14:35:20.000' AS DateTime))
INSERT [dbo].[Backups] ([ID], [NombreArchivo], [Destino], [FechaHora]) VALUES (6, N'Backup', N'C:\Users\gonza\Desktop\Backup', CAST(N'2020-11-19 15:15:20.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Backups] OFF
SET IDENTITY_INSERT [dbo].[Bitacora] ON 

INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (278, N'ErrorDVV', N'VSEB6KMOfG7b+ZGqJHF7OQ==', 1, CAST(N'2020-10-18 19:37:23.000' AS DateTime), 1, N'2914cc690c39e655cbef61e8f3357430e9c1a49fdb87d90c1257a20d9e723853')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (279, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-18 19:39:07.000' AS DateTime), 2, N'0b074073cab9502911419463a6ad27c2709fb0ec093b28e254c906cd5fd77828')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (280, N'ModificacionEmpleado', N'zxIzxvQnPhMCLjkI1vzvLc5ZD0O8utIflvhU+yPF+IBrIi5sNzUEn868EF3975g0wv1QkXAhXr5VAnVI+dv2Gg==', 3, CAST(N'2020-10-18 19:42:09.000' AS DateTime), 2, N'f7fca24bf7602a1683ac70ea6e0e1bb213ac95eb4d770499c2e8ce1e7df6739a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (281, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-18 19:42:23.000' AS DateTime), 2, N'2575c061e37b030305eb49c2f78489a620fdd3da211e98a0822db47a05a4d1f8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (282, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-18 19:42:24.000' AS DateTime), 2, N'ea5a499548a4298ca3f5be2a8b82d9f76fbd71ca1a4fc8ae24ab78a6719e2b3b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (283, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-18 19:45:49.000' AS DateTime), 2, N'21a73a3115d439532f20047561968f715b8bf7d150d9e8eab106a4d9527b8b61')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (284, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-18 19:46:43.000' AS DateTime), 2, N'7b4f11cb220f6a82f1053bf5fe613e24866efeb2db414ed9fc9b540dd4052496')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (285, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-18 19:46:43.000' AS DateTime), 2, N'7b4f11cb220f6a82f1053bf5fe613e24866efeb2db414ed9fc9b540dd4052496')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (286, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-18 21:25:37.000' AS DateTime), 2, N'0117ae9ebd36a7f7b25ef9ecf4fea10cf20b361aee42393aeca684cd38769a57')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (287, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-18 21:25:40.000' AS DateTime), 2, N'fa03cf56a43f4038f1eae0f41486bb1334019a9701bea31cc5d5ce7e2011387c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (288, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-18 21:25:49.000' AS DateTime), 2, N'8679fa72f228dc34901f2a1ca25ce030e7ae43dc44a713ca4d70e9b0af852779')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (289, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-18 21:26:02.000' AS DateTime), 2, N'1318a730b18772108f783d60f9a1da27a2c4b0282ddc23e593bb1677d15e34f9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (290, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-18 21:26:11.000' AS DateTime), 2, N'ef367c4fec771b9ea0b9633fd68cb05af9d37de356477910356258aaf9d9ad5c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (291, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-18 21:27:21.000' AS DateTime), 2, N'e7ae4dfe0154beabf6703f9cde2920ff686ff097ad154f8713e6323b13c8b7e0')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (292, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-18 21:27:21.000' AS DateTime), 2, N'e7ae4dfe0154beabf6703f9cde2920ff686ff097ad154f8713e6323b13c8b7e0')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (293, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-19 20:33:17.000' AS DateTime), 2, N'120450e2e8da46390c5fefe0a63d2703170959062f5959b34520b27611b61ec2')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (294, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-19 20:33:27.000' AS DateTime), 2, N'5c7cc88968a49c7a745164f4d11eb03ab6e15a0eb1ec97287d75b4333664e4b4')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (295, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-19 20:37:55.000' AS DateTime), 2, N'b90504e08cadb33b807cd35f634068e525e077fa78cf000b64917f04bebfd98f')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (296, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-19 20:38:04.000' AS DateTime), 2, N'a391883afaafc16565d31d84e2c9eddb614cc0f2238c3fa2a2889d825a06e63c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (297, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-19 20:38:32.000' AS DateTime), 2, N'8a04410519d3ce3449b16075991af22e3c83f2e7926e3d9d7c15a3c4c56d5a2b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (298, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-19 20:38:43.000' AS DateTime), 2, N'da444de372cee7f9d66955d87d7ccc874c84aab128bd9fc1278944c441bd9057')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (299, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-19 20:39:13.000' AS DateTime), 2, N'ad79d2adcf5f6787926c3e75b6ebe6fae2e583be335e86439848eef5ec6cd7a3')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (300, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-19 20:39:18.000' AS DateTime), 2, N'0335e2684e46ac6eaa5a899d54137ee4ebf4d4eec809ea425adca1837b72ef3e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (301, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-19 20:40:14.000' AS DateTime), 2, N'4a7c1322b721386d9df1c3b18526105fadb89cb622fd3a8f34b805748ec054c2')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (302, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-19 20:40:34.000' AS DateTime), 2, N'52f8458552ae8cf233970e82d5bbfd669b2e25fbd6e478303d0306cd2d01b94c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (303, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-19 20:43:07.000' AS DateTime), 2, N'47804437e7d31555ac36a00f1f880b8d18302d6dc5a9bb02ee6d5b195ff6ebaa')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (304, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-19 20:43:13.000' AS DateTime), 2, N'26749dbc9f6d0cfd05acd389ae3b50a06bb3239c60b8934bd18a18eeaf2f8916')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (305, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-19 20:43:29.000' AS DateTime), 2, N'fed97cf554b12070404dc4684af4c814e2575be1275b395c86022d7a53db34e4')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (306, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-19 20:44:27.000' AS DateTime), 2, N'0dd61660cc61b2f9c480ef7f9aa5bdc9a5fdaf15a23b78e52817b9727b31b764')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (307, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-19 20:51:47.000' AS DateTime), 2, N'ce398ede62dec7071d77bf466bc344e43b8ada5d3b6031340143c05f5647ee48')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (308, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-22 19:32:06.000' AS DateTime), 2, N'4088d8bbdbaf0f04a8ac6426f578277bc5693bf60fb3ddf5c2a5036050af7144')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (309, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-22 19:32:38.000' AS DateTime), 2, N'a5baf9b28345800833db2eb82f1cd929cdb17b724a1101cb599fef3563043242')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (310, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-22 19:32:43.000' AS DateTime), 2, N'380aa515d05302408978076dff1b891b2ddc979e79f0275620e715372a230554')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (311, N'RecalculoDigitos', N'zWDy8jCgA3xzkYFMq9ILrLGWpGUY89A/DtfPeKntZehvzAG177+C6WbMsAsnhyf0', 1, CAST(N'2020-10-22 19:33:15.000' AS DateTime), 2, N'f7e19fb63554012d6528e32f9bc99f7e0f3dfd47552aee91b958f0050cc529cb')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (312, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-22 19:33:22.000' AS DateTime), 2, N'646977433e190789af46c3d2accf6eee349b643113b1dcfb2d41ecef8e468964')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (313, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-22 19:33:22.000' AS DateTime), 2, N'646977433e190789af46c3d2accf6eee349b643113b1dcfb2d41ecef8e468964')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (314, N'ErrorDVH', N'toBfu+aCEuJgeJenCEOEWQ==', 1, CAST(N'2020-10-22 19:41:28.000' AS DateTime), 1, N'22e82e421ce67ec26b8d21f54326c38413dc08ce5e55f16b3adfef1a2edcd2f7')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (315, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-22 19:42:27.000' AS DateTime), 2, N'74140f03cbe98c886963ef8e09f9c6acd74afee64b0c3e7d8529df48608798df')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (316, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-22 19:47:26.000' AS DateTime), 2, N'dd94edf8b08f16a44796374e65b21ce4fc477d424f89fcc49906d991b65914ef')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (317, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-22 19:47:48.000' AS DateTime), 2, N'4ef8a8c2903c74c09a26a42f6fe5466115cdb71fd5505068c790722240f7b478')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (318, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-22 19:49:25.000' AS DateTime), 2, N'41b9d2a0f4e9d19a17393d49a13ccc888795e566b457fd226ea7b233cb92dbe9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (319, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-22 19:58:20.000' AS DateTime), 2, N'36faa737a2e3ec9c5f06418a8529bad865c84fef33cbf68ce31686e65cc3e35c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (320, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-22 20:01:13.000' AS DateTime), 2, N'8ae9cb354d301ca9f7322c94749bdd3b0e4f9e9c63815a6e59e9838e139f8e6c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (321, N'RecalculoDigitos', N'zWDy8jCgA3xzkYFMq9ILrLGWpGUY89A/DtfPeKntZehvzAG177+C6WbMsAsnhyf0', 1, CAST(N'2020-10-22 20:01:27.000' AS DateTime), 2, N'a56c262c00a84830c9884de6923e01b751a2daf9b03edddeed155aed8201cb94')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (322, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-22 20:02:19.000' AS DateTime), 2, N'be6a991fdbe44a788c72df4cd6f530acc89cf8edbc63a2692a2cb7b801981b27')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (323, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-22 20:11:33.000' AS DateTime), 2, N'2e32cd2a9e7fbc26b3873f2ab9f3def14f4de35fb014ee50f1f0fa3c88e454f5')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (324, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 14:42:47.000' AS DateTime), 2, N'ea25faa81405925102443fcc453e1708fa2e273b77cb998cf353c2e6af99db48')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (325, N'RecalculoDigitos', N'zWDy8jCgA3xzkYFMq9ILrLGWpGUY89A/DtfPeKntZehvzAG177+C6WbMsAsnhyf0', 1, CAST(N'2020-10-25 14:43:11.000' AS DateTime), 2, N'b79668669655f8f3a642412cc496c34b0352cf44aabbf9da40163e495a1a974d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (326, N'RecalculoDigitos', N'zWDy8jCgA3xzkYFMq9ILrLGWpGUY89A/DtfPeKntZehvzAG177+C6WbMsAsnhyf0', 1, CAST(N'2020-10-25 14:43:14.000' AS DateTime), 2, N'efd451336a03fc3f13b99a0224deea413d6cac49907c31f028b3917e4c52206d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (327, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-25 14:43:23.000' AS DateTime), 2, N'9bff6f77da564710fddec5da32aaf50bea036c3de85e0a5074499943d2cf0cfd')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (328, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 14:43:56.000' AS DateTime), 2, N'1db9ba6c7479b5ab3b84336efc765de2d9c23ad9a7ce8a9da2226e9a7dae1eb6')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (329, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-25 14:44:35.000' AS DateTime), 2, N'c383fab7df122794c77be56275c127b1f79cf671809178c56cb692e1ba1b215c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (330, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 15:03:38.000' AS DateTime), 2, N'44af2989e50dc76a8e16fc10fea769bfb628139dadedbc4911d8ce860131439a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (331, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 15:04:15.000' AS DateTime), 2, N'98c94e94d95584bf6066b84cff0a4fb0a8eba9e622e807f9132a53bf33848e85')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (332, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-25 15:04:31.000' AS DateTime), 2, N'd06b60ca0db9f8e8e4a58bd3fc9b077d4dfcc661486b2ab452694f9ed4b588d5')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (333, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 15:05:16.000' AS DateTime), 2, N'7f652d8dea126e3567b16bb7b3eda5748c71c8125d0087a948c547490a39d495')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (334, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 15:07:54.000' AS DateTime), 2, N'2d9e93550fa756d61b7803fd5a0202f8deb1d02630fa03cca02a787747dae8b9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (335, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 15:09:35.000' AS DateTime), 2, N'817df3fcccf4d25b764f4d211c9b3160387556fd53a0f6ba5cad18e5ccf0dd8b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (336, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 15:11:07.000' AS DateTime), 2, N'bd4aba6742184b346884b9a1093f31e1bfcc0a7906f30457b755f7847a520d2d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (337, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-25 15:11:41.000' AS DateTime), 2, N'672023cba73ff63e1fbc9229ad86bedb57d1b929b8fdf279646da2d923feac26')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (338, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 15:12:31.000' AS DateTime), 2, N'8fb83160fc63880f1b0923ce347b69763d6e48501621c86c2e1f6e1ad2d9e213')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (339, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 15:13:48.000' AS DateTime), 2, N'192d19e0fbfa03400388a8dbee893239927cbef87012d0aa8a65b1827bd30301')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (340, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 15:14:17.000' AS DateTime), 2, N'd4ba989b4e641c9f6887456e43fa57faebd24ed697e6ca8317cb666385ead1e8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (341, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-25 15:14:45.000' AS DateTime), 2, N'fb818c1bcab816ef655a1e7d8ee6c54144cbad108cb36ed8baf1c1fe61ab6c5f')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (342, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 15:24:05.000' AS DateTime), 2, N'111e7ff2a84d77e06fd23710962ea7371ee36ea499c00bbb9a1c36a5bb439980')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (343, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-25 15:24:12.000' AS DateTime), 2, N'd64c61de5d83d92e957fe9129e203b7b9ecb92b3549f37a36954df04081d9050')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (344, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 15:42:37.000' AS DateTime), 2, N'ca2ec482de7f6e244cb7c86a0c7a114f21c7c91397efc2159bc348739cd47025')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (345, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-25 15:42:53.000' AS DateTime), 2, N'e7c27dc6621e908242f41e8ba9da13916c24167bb901319acc26ba5952dcf711')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (346, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 15:43:15.000' AS DateTime), 2, N'4db9252b8bf1daa7264018aef9a40d9e3346579de1f375051662754264af84ff')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (347, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-25 15:43:43.000' AS DateTime), 2, N'a65b4faa56c5ce7c7ff3378ade2ecd8fe46ad615b8cdff7873011dc328e61dc6')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (348, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 16:07:48.000' AS DateTime), 2, N'a61b25d86efc08d8de07ecbd5fa6297fb170d435d2e1d6aa8f3eae8e9153b2f3')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (349, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 16:16:05.000' AS DateTime), 2, N'012467a244233a74208a9b20914ddfe0cc7c49e9a3d896b0ff9278db3190c29c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (350, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 16:18:15.000' AS DateTime), 2, N'f0c0f72a63ddd013768dd19c87372feba5ce459c7df0ccd2ab9a29c132ee9a77')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (351, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-25 16:23:27.000' AS DateTime), 2, N'c383fab7df122794c77be56275c127b1f79cf671809178c56cb692e1ba1b215c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (352, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 17:12:20.000' AS DateTime), 2, N'4578df564be822f5ad61826b19e558f371f9374e7d33898098a82e1bc47b7bc3')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (353, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-25 17:13:02.000' AS DateTime), 2, N'09804de18bd1e523b81638b1db995025b46e7099016c12dbda249ec35b01889c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (354, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 17:32:11.000' AS DateTime), 2, N'95e7041548672b0dfe34d651a53bc6ff62038340bb8655f5b1f87eb4e3fc699f')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (355, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 17:50:32.000' AS DateTime), 2, N'1eea038d903c0823390a337ad308c61d2608aab3759422a53173901b612deed8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (356, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-25 17:51:41.000' AS DateTime), 2, N'4bc28f3150b87196ad7fb4f66dda84ab602116776c3850a3de7b8d6ddc6cfdee')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (357, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 17:52:04.000' AS DateTime), 2, N'31073fc3128e7625cda2a04fd6b0efc09609b0db6c6b406dba9b21173ec802c8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (358, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 17:57:03.000' AS DateTime), 2, N'd8c5207a210625b9acab0c5384fdcd4759ec865a21c00894083f934af1b8ca87')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (359, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-25 17:57:51.000' AS DateTime), 2, N'bb213eafcbfee093b1f371bd694ab4ebe3eb81436f0b545b3156875647688c73')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (360, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 17:58:42.000' AS DateTime), 2, N'dcad63e245029e8a3a217a33a71ed5d2ac81e5ee4b8fa2070683e155d68b42ab')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (361, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 18:03:36.000' AS DateTime), 2, N'8f4f076c9884a4ce5347b32d38b4d6789bd7aaf6e74ef0b3ff5fbdaceb5b9df8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (362, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 18:05:17.000' AS DateTime), 2, N'ff73036b322ea99e9a92a7d49dacc5da9052aa64b77fc11f16953a671114fdb0')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (363, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 18:16:02.000' AS DateTime), 2, N'cb5e73861987160596b1f0426fb621baeb4dcce2f26daf7e557668f42e8c9504')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (364, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-25 18:16:29.000' AS DateTime), 2, N'12b493958352d560c3382e80c472e58b223d9ee362f08167afde58b20ae489ed')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (365, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 18:22:58.000' AS DateTime), 2, N'17c55f1b814a236cd8531ffac7b0e903bba30c328a824ace6c5853fed388305c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (366, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 18:25:20.000' AS DateTime), 2, N'1aac8950055c9d1f872ff0e6a5abad7c3f8a54cea3e76d0c8116040a607f291a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (367, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 20:02:50.000' AS DateTime), 2, N'5c4cf2fd1bc6987a5034a7dc29f64e13d41fffd33ab0d9085e42e9706b8d535c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (368, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 20:04:38.000' AS DateTime), 2, N'0c10a65e9df6dfc625940578cb40fb2ae5c3b41f04893deaf41d5fdd67bd27ed')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (369, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 20:28:03.000' AS DateTime), 2, N'f3491eab815fee0fa0973fc228dc9f1a50cfe913715fcc089909889675d658bc')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (370, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 21:04:09.000' AS DateTime), 2, N'f0c2670ffab7d5c0b90d02a33e9ad87b4fe7b7ff2297b64d8954d078d8725e46')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (371, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 21:45:30.000' AS DateTime), 2, N'ce82e389e2b988ab19a0639d809bc39efef3e0e1b5f7979c7177909486982406')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (372, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 21:49:59.000' AS DateTime), 2, N'64c8e4cac6effc1ee7c975445a9361ba4f6f055ced90e0c8b588dfbdc74141b2')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (373, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-25 21:50:26.000' AS DateTime), 2, N'086d9c7358b589bad8693c49a21d2b6aec71e96f1e78ad6e1ac5844cefa43689')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (374, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-25 22:12:38.000' AS DateTime), 2, N'428a76ec0172417a31aa583292d1c02c167cc58e2330e65ae23fc0eb7257a9ad')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (375, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-25 22:20:16.000' AS DateTime), 2, N'147307349150b6e21744c4897c15a3ac0b775de3e334fa39f9eb42c741346bfa')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (376, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-26 17:02:22.000' AS DateTime), 2, N'10109d86f01001b8b69a780c4c8be17df9973d01cd3f7fd43969fc5397b05a25')
GO
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (377, N'ModificacionEmpleado', N'zxIzxvQnPhMCLjkI1vzvLc5ZD0O8utIflvhU+yPF+ICvbq2Gtr5VlFOUNsFCIyNfaXBXvT8UGdEq5ZxS318Z/A==', 3, CAST(N'2020-10-26 17:03:22.000' AS DateTime), 2, N'a4f7fc3d89e3bd3bc46ebf68874170133c1796ebfa4fa2fcd316d2a4a445c14d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (378, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-26 17:04:23.000' AS DateTime), 2, N'e131ac40607b09136956bf655aad083ccd305c0165d0c575915462b8c82ca16d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (379, N'ErrorDVV', N'MyrUC54j2PC4DABywvcZxQ==', 1, CAST(N'2020-10-26 17:04:29.000' AS DateTime), 1, N'9e606f8d552639d1d69259b3544e828c08980d82b90d2e2e5b3ef91f67fc0ab6')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (380, N'ErrorDVV', N'MyrUC54j2PC4DABywvcZxQ==', 1, CAST(N'2020-10-26 17:05:15.000' AS DateTime), 1, N'6317dd16beb49eb0dec22305bb271a5b80f158ee31045a76ac35bd3d25afa313')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (381, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-26 17:05:21.000' AS DateTime), 2, N'96adaac55f4a395fb36ef52a67d6d5b59cc092e651b1e08907542dc364084579')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (382, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-26 17:05:34.000' AS DateTime), 2, N'74d27c9e1b72345ea82d664f8111a1eede25852af8bd9810eda6e00a0fefc90d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (383, N'ErrorDVV', N'MyrUC54j2PC4DABywvcZxQ==', 1, CAST(N'2020-10-26 17:07:19.000' AS DateTime), 1, N'426ad24e092d873aa7630f70c3a25e376636ae0eb5477411a1d751b708fe9975')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (384, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-26 17:07:24.000' AS DateTime), 2, N'df0cc4613a309b0cf6eed83c76ae0c777302ad346c243109a99dab74e75b9534')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (385, N'RecalculoDigitos', N'zWDy8jCgA3xzkYFMq9ILrLGWpGUY89A/DtfPeKntZehvzAG177+C6WbMsAsnhyf0', 1, CAST(N'2020-10-26 17:07:30.000' AS DateTime), 2, N'89a894b27030ad31f4eff2597e9bd325c7e73874b2518413bce1876b5d0e56e8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (386, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-26 17:08:12.000' AS DateTime), 2, N'4d1c6ec913b1efcaef7710354b7366846babfc72fed3acc2108dfa3fd46ec305')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (387, N'ErrorDVV', N'MyrUC54j2PC4DABywvcZxQ==', 1, CAST(N'2020-10-26 17:08:18.000' AS DateTime), 1, N'20da999601b8cbef4858337b2efe10f380b276c40a4a026dfdc916abcd9bcc12')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (388, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-26 17:08:41.000' AS DateTime), 2, N'b86f77a225361a6f1824ad375c640902ed7a6e811d673f3dcc9ad2a4e73e8bfa')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (389, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-26 17:12:35.000' AS DateTime), 2, N'36deef49e85060ee64e0359f5ea9d0dbb1dd514a6d5093d75cc62f16560a4e89')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (390, N'ErrorDVV', N'MyrUC54j2PC4DABywvcZxQ==', 1, CAST(N'2020-10-26 17:14:53.000' AS DateTime), 1, N'0e91c4de78bbfca46d37c34e886f6f416131920c3f28232777c2bbeaa2091e05')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (391, N'ErrorDVV', N'MyrUC54j2PC4DABywvcZxQ==', 1, CAST(N'2020-10-26 17:16:36.000' AS DateTime), 1, N'c8bae78252210aeb4d45a29f9b00f7359a110c0bae576764634f5df65d4f74a1')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (392, N'ErrorDVV', N'MyrUC54j2PC4DABywvcZxQ==', 1, CAST(N'2020-10-26 17:19:18.000' AS DateTime), 1, N'39ba2ec3d0f725a2a045f77ea30e7ae6659f4449a623dc8adfdf45f2a5b28158')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (393, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-26 17:20:06.000' AS DateTime), 4, N'a3ac64c795aa482b4d1ad32180de43227d2b0be1b53039b1bba884d678ff4481')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (394, N'RecalculoDigitos', N'zWDy8jCgA3xzkYFMq9ILrLGWpGUY89A/DtfPeKntZehvzAG177+C6WbMsAsnhyf0', 1, CAST(N'2020-10-26 17:20:24.000' AS DateTime), 4, N'b14bdb8b53e64077a2ebacdaa76e0382c2d327e66b5b725d55c81930ff5cb81f')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (395, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-26 17:20:48.000' AS DateTime), 4, N'aa214c1ef5202f3af956dcdbb8fbeb54cd3630d5470ed654dc6a12a8cab1d561')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (396, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-26 17:21:32.000' AS DateTime), 4, N'3698c183ad5ba5f0a01491efc1127dd89414d20aff0a872cd401d589aef8d0e3')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (397, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-26 17:21:35.000' AS DateTime), 4, N'3df7accbb92ea0a076b4b7bce32eab539a8493816d01cbc8e0c6426e26905006')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (398, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-26 17:23:53.000' AS DateTime), 2, N'c77d978389023aa0f341dbf844eb0e1e9f1e93fa6e68cfb7c81e265de9d07d41')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (399, N'ModificacionEmpleado', N'zxIzxvQnPhMCLjkI1vzvLc5ZD0O8utIflvhU+yPF+ICHlAHhFlBwteUvSNS6Mv9lKRQlGIkoJFMYGMdpWaZbuA==', 3, CAST(N'2020-10-26 17:24:36.000' AS DateTime), 2, N'bff3069cf5eaa5a0724af2e274e31b463f50434bc1991c5540125a138e73903e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (400, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-26 17:27:09.000' AS DateTime), 2, N'899d29aa8ac0665aa12b798b767523e2d0b2c1b71df97fc06bb0ea5ff3299131')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (401, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-26 17:34:07.000' AS DateTime), 2, N'd8c5207a210625b9acab0c5384fdcd4759ec865a21c00894083f934af1b8ca87')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (402, N'ModificacionEmpleado', N'zxIzxvQnPhMCLjkI1vzvLc5ZD0O8utIflvhU+yPF+IAtCeo0OpifKLnlIuz+dcPb+fGQxlqihf59Qz1zy9hGuA==', 3, CAST(N'2020-10-26 17:35:09.000' AS DateTime), 2, N'82c819b5d74336c73072301bc06d13a38519eeb270cfae04936f15052e73b1ad')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (403, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-26 17:39:06.000' AS DateTime), 2, N'0ae012c55631bd9131ee036300c42aab1bbaa0e6742d645052f4eee2a33b7099')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (404, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-26 18:23:43.000' AS DateTime), 2, N'56ec6e0313a38c4504b2bc113151a2126724e290879fd27fa08220416ecbdb9c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (405, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-26 18:24:21.000' AS DateTime), 2, N'178f58642ecdbac060f77c449b51542a213b72d9533ac0a3e19b0f52ff6de537')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (406, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-26 18:29:30.000' AS DateTime), 2, N'1db9ba6c7479b5ab3b84336efc765de2d9c23ad9a7ce8a9da2226e9a7dae1eb6')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (407, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-26 18:29:44.000' AS DateTime), 2, N'd1250704c2572645c220000ccde060fe422a528082a5bb64b6318d1b697a8469')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (408, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-26 18:30:16.000' AS DateTime), 2, N'767edef22fd4a6d110cd509182e6aa7431b8e6399a0695ce33540868bed27e1d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (409, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-26 18:30:50.000' AS DateTime), 2, N'471147dea8efe6fa4b21a48f085b6bb1de4724ea45e67946aa7df6c6b81e7efb')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (410, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-26 19:15:58.000' AS DateTime), 2, N'79bbd862b49cc595aabddad79e624d5921567e8bfeb82377578b6ffa614c5c17')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (411, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-26 19:16:23.000' AS DateTime), 2, N'e36cf226ccb6912d576f487b812ce11a52104e7cd7175cc62c5eecface5f616d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (412, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-26 19:17:01.000' AS DateTime), 2, N'd4ba989b4e641c9f6887456e43fa57faebd24ed697e6ca8317cb666385ead1e8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (413, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-26 19:21:27.000' AS DateTime), 2, N'fed97cf554b12070404dc4684af4c814e2575be1275b395c86022d7a53db34e4')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (414, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-26 19:21:51.000' AS DateTime), 2, N'71f9f4eefbf2d8f7dbe5d368a5a9cc9abdb54fb310ef67821832128c7e8ddd47')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (415, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-26 19:22:08.000' AS DateTime), 2, N'38aa1948f0828208cb5f4fa8119745abb09061d8b46bf951ec6159ed5616d7ee')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (416, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-26 19:23:42.000' AS DateTime), 2, N'b2f7f8759dbf8d3530162a89dc6f1f4d9a1a9ac13d3a6a72409ffd96afa1a0a9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (417, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 19:08:11.000' AS DateTime), 2, N'a866dee1b13ca4e5caee29ec450362d55005f8cc0e0252706d3d394e6b2309ca')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (418, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-27 19:10:28.000' AS DateTime), 2, N'35dee2be8c6753504e2ee840bf661dbeb61732655fc19a5bec3c7d5364b73e00')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (419, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 19:11:55.000' AS DateTime), 2, N'9bb80a5a01746e850048438a27f01f6b7a2b960143a893625bd70e66eb3482a2')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (420, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 19:15:55.000' AS DateTime), 2, N'ce5739ada9801fa73b5b2e357eee2fd24e57f63c8de7354e14625251df1ae70d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (421, N'AltaEmpleado', N'Csj/JmMVP9y4eecwWSjLBPIo1vdkiTbcnvQXjl+6TpkMCuBiZZ5yo7acX6ft7ks9', 3, CAST(N'2020-10-27 19:16:26.000' AS DateTime), 2, N'ba81d27bf47d7b205999c29dbb4c458e7bb594182980ea848debab08ba3e36eb')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (422, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-27 19:17:06.000' AS DateTime), 2, N'cd8d86b3e95e1a9fa7019b86a4181d88d79d41763bfb6142a393caadb09d75ec')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (423, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 19:23:49.000' AS DateTime), 2, N'b179d427564a8b4077e0338cba2466a51d6bc11a58131f0392b7d6d340750ace')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (424, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-27 19:24:53.000' AS DateTime), 2, N'cd8d86b3e95e1a9fa7019b86a4181d88d79d41763bfb6142a393caadb09d75ec')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (425, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 19:31:45.000' AS DateTime), 2, N'17c95e64575df62fc7968cf18f4a8bf73375a72bdfb4498a11eda52ca4f74103')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (426, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-27 19:32:10.000' AS DateTime), 2, N'24bab17be7931b57370f63b49c40f5f27578ebfc9ee9f2caa8e4e6c8259c022d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (427, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 19:36:08.000' AS DateTime), 2, N'b301903882a21164b4d27617ff5d9d6bc5aa5cef134c1aeb736310c5d70e272a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (428, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-27 19:36:40.000' AS DateTime), 2, N'0be9a35ca4878183d781b477a727b6103104a9487292637e0f70df4a32a49ead')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (429, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 19:37:23.000' AS DateTime), 2, N'773f6214bd2edb64c234af45d1fec879c76bdb8014d4dccc30be01544299a60b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (430, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 20:02:20.000' AS DateTime), 2, N'a4c8aa1c46f82a0871bcb69bf4a28ec243d04dddeae28b52fb0b8e7c46f05c71')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (431, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 20:06:41.000' AS DateTime), 2, N'5512990cb4a731515e81c752dc786d698112e58ff19068b57e25d37dc9bacdf8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (432, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-27 20:07:13.000' AS DateTime), 2, N'4e4bc463da17ee4dfc08e6e5f26ba2706a06bf35c749cf89e1824923ecd4a26a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (433, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 20:09:39.000' AS DateTime), 2, N'8347bf1df1375f4bea9cb3b7a13e0f6c4368c41e865512918c28f8586fffbdbf')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (434, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-27 20:12:01.000' AS DateTime), 2, N'd3ba27d50d306d178a2486ebf7d8eb57d854595df39f64ef93ba42314d043e41')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (435, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 20:33:23.000' AS DateTime), 2, N'c77efd2a89ef46e158e36650dcd51e1a78f731e632ee6a77ecf645f3e81e0672')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (436, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 20:34:00.000' AS DateTime), 2, N'11ac12f10ce2d84a6903f0c6f781c752f31f5ac2074e0b39a9853c6fd5b9f864')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (437, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 20:36:30.000' AS DateTime), 2, N'd23c5226a21c8b6918fc57830bac4261a9b3b473335604b3bb49dd4f1860e23a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (438, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 20:47:22.000' AS DateTime), 2, N'3d80654a2a89bf31ddf61ac1033bba15b3ac9300f933d6f67a4d16e2a6fdd57f')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (439, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-27 20:47:36.000' AS DateTime), 2, N'df39b1c4cf9c4d8b5ff4efdb19bf8dae94a4719e72bb92bd03ed3e8920720cf2')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (440, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 20:48:06.000' AS DateTime), 2, N'c77d978389023aa0f341dbf844eb0e1e9f1e93fa6e68cfb7c81e265de9d07d41')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (441, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-27 20:48:59.000' AS DateTime), 2, N'fb123ae9391f7ae8c5d7101555d73d297abe397e121515172a30fed6b59fa5fe')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (442, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 20:50:10.000' AS DateTime), 2, N'ee3b35dfe4f7fd6e778d3df4f7f0cf98b1ab7ee1f40b96051749b9d7730e1c12')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (443, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-27 20:50:46.000' AS DateTime), 2, N'e32b275929cfb627833cb3f0abc313767e3ac2e8b340e4cf3362717a6f38c5a7')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (444, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 20:52:15.000' AS DateTime), 2, N'6cfd64f9243f7ec0d391fb98e7ef1c6e2236dfee9952121d821b4ac8dbd0426b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (445, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-27 20:52:29.000' AS DateTime), 2, N'2d5f95fbc3883506051b347c755e3bd27c7272acd2bf193e52b73089be0c0293')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (446, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 20:55:45.000' AS DateTime), 2, N'e87e76e834bb32e54b20f8a2b3a87ac39fc7311ef28b3f5af1cebae2a1fa2154')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (447, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-27 21:15:29.000' AS DateTime), 2, N'36f8459c3dbb7d41c7e3d73e17a9e6abe6c074808ed4b081918d0141552e782e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (448, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 21:15:37.000' AS DateTime), 2, N'f9cdd0499e1007197d7e9580c60b36ce6e7db0147938a8608e2ca3c2befe7b78')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (449, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-27 21:15:51.000' AS DateTime), 2, N'382e7c06b03b28691945de8eaf1cae176052b1ce5c2a9d73b148c65b6c2076d4')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (450, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 21:16:14.000' AS DateTime), 2, N'46852391fa2b1df8746ad7afc77713dcfbdd6363937988392fe48fa98a81bc15')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (451, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-27 21:16:35.000' AS DateTime), 2, N'36deef49e85060ee64e0359f5ea9d0dbb1dd514a6d5093d75cc62f16560a4e89')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (452, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 21:20:59.000' AS DateTime), 2, N'8f4f076c9884a4ce5347b32d38b4d6789bd7aaf6e74ef0b3ff5fbdaceb5b9df8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (453, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 21:26:30.000' AS DateTime), 2, N'bb00f5292e518a84bd302b1e84668c7ae0c1d6bd68321762e727a23f31dba890')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (454, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 21:39:48.000' AS DateTime), 2, N'0deafeeaa667c349134adc947e27818fda4951ad21d2323dd555148ac0ab6e60')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (455, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-27 21:40:13.000' AS DateTime), 2, N'32a26470c4cefcf8538afebe0d9447c112396086893dd2e2f2eea409d330c2de')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (456, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 21:41:11.000' AS DateTime), 2, N'b6b8d834de7c0f07827d337c92a16487798b7d87f394fd6ae1605a34fea7db72')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (457, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-27 21:41:27.000' AS DateTime), 2, N'25f991d0b989877e92d5f9e9a2b1cd94cc2df3269459a7b1cd6c40f32a465545')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (458, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 21:42:19.000' AS DateTime), 2, N'aa30e235aca2ec4472acbe8e61228c80aae4b7e4ffe5cfd1ff776af9f8fe8dba')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (459, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 21:52:46.000' AS DateTime), 2, N'34a54ba8079f67bc50f64034403c9ee8a286465adc28116e5c77f544505aca82')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (460, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 21:59:57.000' AS DateTime), 2, N'3ecd4c582559cefba686ce529a102616afcaf83079b79089d77761fdeb72b4f6')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (461, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 22:03:16.000' AS DateTime), 2, N'e05190ef9dd13b3dcca684f66de5fb14db9cd458788230de5c3a939c78b90777')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (462, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-27 22:04:20.000' AS DateTime), 2, N'13a2f431441a1561b4d6a3ddbd3394cc9744a98032c210c1342cc7c2d2dd8ecc')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (463, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-27 22:05:00.000' AS DateTime), 2, N'44fe91cd85ac4a9d87bb02dcb333b28311a0f3eed6aaf48f92ecc56c2d342e29')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (464, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-27 22:05:14.000' AS DateTime), 2, N'323fe64c33b1fb4a770fe75fc5defff4aedd4ce16050adec549a0becf45635a5')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (465, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-28 16:22:34.000' AS DateTime), 2, N'51c63b590ba4bebd747361ac9a77b866a776fcbf9a1ec6a5913bc98f39562fd9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (466, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-28 16:24:37.000' AS DateTime), 2, N'674aef205ddb6d5745aaed385de2f033e076999ef0d801ab85af4f5ceef3b8b6')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (467, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-28 16:25:27.000' AS DateTime), 2, N'50e93e8e596900c8d374b0e7af38c4e0cd7ddf74cfcb3837a8a7d1b31cca2b16')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (468, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-28 18:03:28.000' AS DateTime), 2, N'e3840c87465d44ac1938e45819e597d8cc0bae148c7bd095da2a03f8b77e430d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (469, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-28 18:07:35.000' AS DateTime), 2, N'773f6214bd2edb64c234af45d1fec879c76bdb8014d4dccc30be01544299a60b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (470, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-28 18:09:33.000' AS DateTime), 2, N'f547f5e6ba9c04a56c6af29c0af5b48bdc594b4bdc1c58ad30c659d9c2aa917d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (471, N'ErrorDVV', N'MyrUC54j2PC4DABywvcZxQ==', 1, CAST(N'2020-10-28 18:14:14.000' AS DateTime), 1, N'3222eb0f2dbed625a172e74cfa6f286b694f18d6f91b4df4f462f0a786c085d7')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (472, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-28 18:14:15.000' AS DateTime), 2, N'b6f19cf8bdfb8ea2278ba12ac79fa90327c8426564b189cb88540722a83bd26a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (473, N'RecalculoDigitos', N'zWDy8jCgA3xzkYFMq9ILrLGWpGUY89A/DtfPeKntZehvzAG177+C6WbMsAsnhyf0', 1, CAST(N'2020-10-28 18:14:21.000' AS DateTime), 2, N'7d9f7d5719747a38e3df6eda97fe2c4e2397a3a1fb193976eabc8dc4bcc492dd')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (474, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-28 18:15:00.000' AS DateTime), 2, N'0405346c19dc31c1741f3e364311ea324d705e8a448cbebd1f87d75a765d0515')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (475, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-28 18:15:07.000' AS DateTime), 2, N'550bb8cbf387bd3fa4223ad99243b9149bb53b98283c5b4709e26c14892783e2')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (476, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-28 18:15:13.000' AS DateTime), 2, N'376c390ad2184501ee7d3e31c306f9530ba8c6e7fd65afe2aefbb55cf75149b6')
GO
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (477, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-28 18:20:35.000' AS DateTime), 2, N'da83fbf76612cc85c3604d14a6d8ba57d2da55dacfe2ca7f4d14c267073bcedd')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (478, N'ModificacionUsuario', N'zxIzxvQnPhMCLjkI1vzvLU1gySbWkimpaJd4faNEUH1P5Uv4zyLBMxgkM7VHBMn4', 2, CAST(N'2020-10-28 18:21:26.000' AS DateTime), 2, N'693bbb7fa7b33eaa502d011b4ff8f518d7b8314aae6d9093c1042520bcd658b8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (479, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-28 18:28:55.000' AS DateTime), 2, N'26fea89c85ae2c2b14f97a07d9c03cbed58325952fcf66846f4d5c8a80704fb8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (480, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-28 18:29:19.000' AS DateTime), 2, N'cc7e99f92206de628009c602fcb79360915102b62477135a7f7cbe06bc61bcdd')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (481, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-28 18:29:57.000' AS DateTime), 2, N'342afab6cafc8ab22dea4f33b427e155eefc7214e322d9c6f21072a780026495')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (482, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-28 18:30:10.000' AS DateTime), 2, N'd4446f487c66c31d0f5b23b0c82277d6f45d5f08552ae48905d76094ec488805')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (483, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-28 18:30:29.000' AS DateTime), 2, N'69d6135bd3066436260df7d028b1ea034c8940e81b85a0bf6c177cf5c6266d62')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (484, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-28 18:30:37.000' AS DateTime), 2, N'3f8c74ad10dde65215ff59acebede4c76036f9fbb9f1f4460f98ff7332ccc9da')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (485, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-28 18:58:50.000' AS DateTime), 2, N'f31432c83ef95c3a16423663ef6ffb2f27bd65f3459a36d23b081313452b3f2d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (486, N'RecalculoDigitos', N'zWDy8jCgA3xzkYFMq9ILrLGWpGUY89A/DtfPeKntZehvzAG177+C6WbMsAsnhyf0', 1, CAST(N'2020-10-28 18:59:01.000' AS DateTime), 2, N'9c2586ba1d4996c439481737e023537dbe5e34a6ab5313f87c430caa609d99c1')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (487, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-28 19:03:06.000' AS DateTime), 2, N'a8c64dbad38a4bcd5b6e403fa11c40975f04a20cca37b9bdc8b42ab99643b649')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (488, N'RecalculoDigitos', N'zWDy8jCgA3xzkYFMq9ILrLGWpGUY89A/DtfPeKntZehvzAG177+C6WbMsAsnhyf0', 1, CAST(N'2020-10-28 19:03:29.000' AS DateTime), 2, N'c4309e6cd08a0b7e9ddedfc4a4c985afd2d62374d66d5f68688a25214794f48d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (489, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 11:20:38.000' AS DateTime), 2, N'bceeba2d0fdc10343ec8c839c3cb90671f1627531bbd9587530819884e77f1bc')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (490, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 11:22:19.000' AS DateTime), 2, N'98772e674deb421bd39706c9a800f1065493ff5991ce20c7c7d616499c6cf43a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (491, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 11:24:39.000' AS DateTime), 2, N'137a9cf71b349444428242359ed7fb65c3e2d30a6ee9accbb73e5701caa26e98')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (492, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 11:27:51.000' AS DateTime), 2, N'579a207e2dd0288e349848d86c8c36faa037a6e7f4af62e0a6b644777342630b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (493, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 11:32:41.000' AS DateTime), 2, N'ce82e389e2b988ab19a0639d809bc39efef3e0e1b5f7979c7177909486982406')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (494, N'ModificacionUsuario', N'zxIzxvQnPhMCLjkI1vzvLU1gySbWkimpaJd4faNEUH0Z3XLAZ1J6HW8SLKP4n3eZ', 2, CAST(N'2020-10-29 11:33:05.000' AS DateTime), 2, N'2bbf1f9b8b5eb9ebe94e47043cf6f35dea022c2f28007fca45db815f54c79293')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (495, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 11:37:04.000' AS DateTime), 2, N'012467a244233a74208a9b20914ddfe0cc7c49e9a3d896b0ff9278db3190c29c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (496, N'RecalculoDigitos', N'zWDy8jCgA3xzkYFMq9ILrLGWpGUY89A/DtfPeKntZehvzAG177+C6WbMsAsnhyf0', 1, CAST(N'2020-10-29 11:37:11.000' AS DateTime), 2, N'75c06c1dbc05271387f37f6af3a8fad1a9df19ae4f75fc7fe26477a87fd7fc75')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (497, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 11:37:14.000' AS DateTime), 2, N'464a9b0ba265fd8e9e2abd2cc68514e19d0e0e07720ecc3d415a186c5ef4e2db')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (498, N'ErrorDVH', N'MxcRPkwhEvMlJK7DAkkKqi1eLEEsBKyLTE2BQcymvBs=', 1, CAST(N'2020-10-29 11:37:19.000' AS DateTime), 1, N'eaa361a7f6aee34048ec34a969aa473cd25d307ecaba4411993c48563842b6d3')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (499, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 11:37:27.000' AS DateTime), 2, N'645688b8ccae347703b49c5dd75a6998ee9f14ceb10415431f1f6bb73d58cbf5')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (500, N'RecalculoDigitos', N'zWDy8jCgA3xzkYFMq9ILrLGWpGUY89A/DtfPeKntZehvzAG177+C6WbMsAsnhyf0', 1, CAST(N'2020-10-29 11:37:50.000' AS DateTime), 2, N'e1db33cc83a67b13a1671a89f179383d780ffe0768cf5bd1fe9d33bab6dcfed8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (501, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 11:37:54.000' AS DateTime), 2, N'd04c56a538c1e34ef97e6e33a924f992d3521de3f549052f54e0255c5793fd7b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (502, N'ErrorDVH', N'MxcRPkwhEvMlJK7DAkkKqi1eLEEsBKyLTE2BQcymvBs=', 1, CAST(N'2020-10-29 11:37:59.000' AS DateTime), 1, N'27e1f2e2e0f0b4323209a8a2d33c9eaf185eecc5b2d0c4726e821488ded52cf3')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (503, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 11:38:53.000' AS DateTime), 2, N'f13c8ca2648472c6edd0a6133b81ba67eab7bd013521948c93b88ef7dbb7ef34')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (504, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 11:39:00.000' AS DateTime), 2, N'7f2de87edc714c074e923241b5c1e7f39d6445cd818013f14c78e14cf1c98057')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (505, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 11:39:09.000' AS DateTime), 2, N'5a0fd67a6bcf33832dd4a9706bd4ee7654cd98333600cd9fb36080ff84579eb7')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (506, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 11:39:17.000' AS DateTime), 2, N'ff206609d0d2c3c9cf5f5d1824f8740877fb2e9794ec13e59dcb5f7ced71bfad')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (507, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 11:40:23.000' AS DateTime), 2, N'3683ea6254a35090a87fcc04e112a80902279bf5e570531b4a11e67c0e50aa8d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (508, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 11:43:08.000' AS DateTime), 2, N'78c72d81e4d455eb7f225f8dc20417cadcf3ace989db882087dab5c4b9c2c37d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (509, N'ModificacionUsuario', N'zxIzxvQnPhMCLjkI1vzvLU1gySbWkimpaJd4faNEUH3EVhktWTWrZd2Iv8NGbqiF', 2, CAST(N'2020-10-29 11:43:55.000' AS DateTime), 2, N'00a47365de0a76cd72e4eabb9dd3d0562e06d2e810493bb923e56a41fb03c041')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (510, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 11:44:35.000' AS DateTime), 2, N'c383fab7df122794c77be56275c127b1f79cf671809178c56cb692e1ba1b215c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (511, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 11:48:27.000' AS DateTime), 2, N'17c55f1b814a236cd8531ffac7b0e903bba30c328a824ace6c5853fed388305c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (512, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 11:49:31.000' AS DateTime), 2, N'c54204621171f8825ebf867273dd013eaa0a34718224508b0a413b3d9bd1cef6')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (513, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 11:50:57.000' AS DateTime), 2, N'ea25faa81405925102443fcc453e1708fa2e273b77cb998cf353c2e6af99db48')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (514, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 11:51:58.000' AS DateTime), 2, N'5e7f4f9a804b532ec86b9d3060b3dfad1243bcfef0ff2a87dbb65faa5e7eafb7')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (515, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 11:53:47.000' AS DateTime), 2, N'17c95e64575df62fc7968cf18f4a8bf73375a72bdfb4498a11eda52ca4f74103')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (516, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 11:54:03.000' AS DateTime), 2, N'971559ce644fd1ed350d2f568f953333fc38ed4245033b9f9a14ac4a59cccfec')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (517, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 11:55:22.000' AS DateTime), 2, N'b230febb21fdfd3a845a41c215f61b36603ef6e2dc2b0537f64473b3531f091c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (518, N'ModificacionUsuario', N'zxIzxvQnPhMCLjkI1vzvLU1gySbWkimpaJd4faNEUH3XZUlD7jqIoqeZsveYAKWF', 2, CAST(N'2020-10-29 11:56:16.000' AS DateTime), 2, N'ef9456306f3dd547b5506bc7f6d7a264f1dd80b683960ed9618842fa0ba7338b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (519, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 12:01:23.000' AS DateTime), 2, N'c9f2a88076224b55786ea66190edc098936f08fbd903399d95b1e67625dc33a8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (520, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 14:32:54.000' AS DateTime), 2, N'8caa7229424246defd221e6431ca407fe68987364fe6f8b0701c2779024da5df')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (521, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 14:33:01.000' AS DateTime), 2, N'4e4bc463da17ee4dfc08e6e5f26ba2706a06bf35c749cf89e1824923ecd4a26a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (522, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 14:52:31.000' AS DateTime), 2, N'cb0759032d48102e5342e136678c3f5d120beafcb328f01007fc8f721dbb15f1')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (523, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 14:53:01.000' AS DateTime), 2, N'382e7c06b03b28691945de8eaf1cae176052b1ce5c2a9d73b148c65b6c2076d4')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (524, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 14:54:11.000' AS DateTime), 2, N'23fe988e3018745bdc07b72c0a9220ed8a522d8c2a78758852da9a8bbb5235dc')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (525, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 14:54:52.000' AS DateTime), 2, N'a0c99a3bdf769c21cfa488b0bccdc4c0b07cf494d148e98c66cf90382bf1ed83')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (526, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 17:24:19.000' AS DateTime), 2, N'9be325421a2548052758d9cdb0cb9a6687ed7dd877a264539d5774287433a944')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (527, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 17:24:40.000' AS DateTime), 2, N'2f1faab0f02d01978b68de40a40ae119b52f0942d6b49c10398ecea8ec04b367')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (528, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 17:25:02.000' AS DateTime), 2, N'e230f33bb6d92c102ed62876608e38f116b97c1d6af2f70a9eb8ee819f6fff0f')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (529, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 17:26:30.000' AS DateTime), 2, N'e2c12d730ce285541182f47a22b947caf78febabd5f7163f4dec6738204c2292')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (530, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 17:26:40.000' AS DateTime), 2, N'cbb2b7197489ebae81881098cc0dbeabf7430f52ea48b0e2cb1a86b19bda4123')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (531, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 17:31:17.000' AS DateTime), 2, N'9df069f5c1e5302ce017c62bff2b12a9184ea433a7d6b2a80e8c87ed18d65c95')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (532, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 17:34:11.000' AS DateTime), 2, N'cc637891e79cb2010f8e1fd720c1877ecdf4c1a4e2d355220d4ead512478229e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (533, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 17:47:41.000' AS DateTime), 2, N'2c5ed418fefb3a4ee2d6274493d632beda46a61f6b409b14f60a24010073165f')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (534, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 17:50:26.000' AS DateTime), 2, N'55edc4c7bb88b77b48049300b659f21684e98e8a7509d8067867a16348e45a47')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (535, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 17:54:40.000' AS DateTime), 2, N'137a9cf71b349444428242359ed7fb65c3e2d30a6ee9accbb73e5701caa26e98')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (536, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 17:54:53.000' AS DateTime), 2, N'976a74b5228b76edeedac8d6474bbae2ca668513161ee2616e4353ebb56650b3')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (537, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 17:55:53.000' AS DateTime), 2, N'a7e005a47f2c12cef97a935dc407f3af503c257d9dec76d47b6737bcc6814d90')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (538, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 17:56:04.000' AS DateTime), 2, N'3d8559f838ccef87db33e646b4bf8a3325efb7e6fa7e12cbc1884c594279c910')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (539, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 17:56:22.000' AS DateTime), 2, N'99bec8c0bc1dc9e73230dd0cbc779e5e41219edd771a1c29402e5b5bed656c49')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (540, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 18:13:53.000' AS DateTime), 2, N'c4f9c8618714eef54a26c1133d2b5ae7e80183801f9d032daaf0646636475a70')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (541, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 18:14:25.000' AS DateTime), 2, N'7cbc699818d93ad0be226ba601e96d1129bd1dbf7058b13808728310a83fe334')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (542, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 18:15:11.000' AS DateTime), 2, N'dcc12dcfd1a051e59ddaa14e4d04a28d18cf1cd4a38cf0241383e639674c618f')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (543, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 18:15:19.000' AS DateTime), 2, N'07330dbb5f8765f0eb1003e39805e8f756ae404e61440776b56df4c73a5ceab6')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (544, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 18:25:36.000' AS DateTime), 2, N'5750caa6e20f8ac4820fadf19ed9ea288a9ad28f3fc431aa4b070cf28d3562c9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (545, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 18:25:42.000' AS DateTime), 2, N'6d92cc3ff1f8f08c9c28470a147ecbefdb50d6830f8d7a8c3674c2959bd4d8f8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (546, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 18:26:29.000' AS DateTime), 2, N'ee5aa3fd36c041e429457f54484e721f42f0c48f9922c3169c367940188abc02')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (547, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 18:26:43.000' AS DateTime), 2, N'4385e51dd72471b682023efab5419aa9e6b05d7b5f27ecafd2fb3e7ed87abcd4')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (548, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 18:27:43.000' AS DateTime), 2, N'53f462aa43af1eccad7d7d107b8abfe6879d941b3b70f36cfbcf64b25086641a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (549, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 18:30:04.000' AS DateTime), 2, N'ef108163e05e4616470cbff6a7e49138872f4cfd780e114612272d90e9a0b22e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (550, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 18:40:27.000' AS DateTime), 2, N'152aa8bd98f193fa26e705dc2789e57d98fa26fb959d973028150509e6060bf3')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (551, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 18:40:30.000' AS DateTime), 2, N'9028adf3fa4d3b2073da48835bc06c9bdf38e3db2eae13e172763fa6b65ae19c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (552, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 18:40:40.000' AS DateTime), 2, N'dcc12dcfd1a051e59ddaa14e4d04a28d18cf1cd4a38cf0241383e639674c618f')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (553, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 18:40:46.000' AS DateTime), 2, N'9020927a2ec41fc363cde6e78f7d254dc7fb5bc2387c7164d80e4419493a6e1c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (554, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 18:40:46.000' AS DateTime), 2, N'9020927a2ec41fc363cde6e78f7d254dc7fb5bc2387c7164d80e4419493a6e1c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (555, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 18:41:46.000' AS DateTime), 2, N'dcad63e245029e8a3a217a33a71ed5d2ac81e5ee4b8fa2070683e155d68b42ab')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (556, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 18:41:56.000' AS DateTime), 2, N'7df6b3a1e4a0a41102c39b7d9950419a25da82b559ebdb0d699d8ba7bc8f751b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (557, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 18:44:17.000' AS DateTime), 2, N'c5dc291a2222ff200fe798b1e0f1e1c5b462f406cf1d8b09d1912ec4f4a6d5ff')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (558, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 18:44:25.000' AS DateTime), 2, N'4385e51dd72471b682023efab5419aa9e6b05d7b5f27ecafd2fb3e7ed87abcd4')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (559, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 18:45:04.000' AS DateTime), 2, N'820ffd87aae1ecc7049d8b2a2315b5d45a1d4fafd6e482b4e526f7ecb1d79272')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (560, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 18:45:25.000' AS DateTime), 2, N'1bc5dbd54a0dc7e7299456d58d4c3e1d846da26b6ac5f4e6d49a26f33813be13')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (561, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 18:53:22.000' AS DateTime), 2, N'7962dda8c0c01409cf1a7c942828bb1645e4a3e571d33d41044157b2714257c9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (562, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 18:53:34.000' AS DateTime), 2, N'0ae012c55631bd9131ee036300c42aab1bbaa0e6742d645052f4eee2a33b7099')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (563, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 20:06:03.000' AS DateTime), 2, N'30d7fa8c6a6989b3746ffd90d25206a6545c3fd248cd907029c72ee6f6220f55')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (564, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 20:45:50.000' AS DateTime), 2, N'b230febb21fdfd3a845a41c215f61b36603ef6e2dc2b0537f64473b3531f091c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (565, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 20:46:23.000' AS DateTime), 2, N'017ea73cca7c43cef11b5666d3aaa7526a9ed77157ecc6f93caca004746b29a0')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (566, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-10-29 20:48:00.000' AS DateTime), 2, N'0addb4db6bd61bc6e35e029f3271f8c38ca62399d547b157af846f9b32f6e846')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (567, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-10-29 20:48:20.000' AS DateTime), 2, N'edcdda9990b7615ec30bb6027c0bfd8ac61f3a5a09d01a71cac22cf962d9d929')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (568, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-01 19:39:21.000' AS DateTime), 2, N'fb98371ba7150770f4fd455c8ad0a1b901e58a330107953aa534d8888f3e38ed')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (569, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-01 19:40:34.000' AS DateTime), 2, N'325b311c41b8c2f178ef106b2be81154d9d7cb0df1169b3ed784431f4331123c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (570, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-01 19:43:36.000' AS DateTime), 2, N'f4df53f361c131b4d94ebe3aa6fbb36e16f00ee65d5afe29d6d34cd40fa88f4c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (571, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-01 19:43:44.000' AS DateTime), 2, N'68181c0769b322e9b51443c8f4ae872634671c338fcdbe09b04ca5d8b56077c6')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (572, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-01 19:45:24.000' AS DateTime), 2, N'3661c89c39c16823a1bd73996ece317f12a3f0882391cea29cd1643f7f4efe49')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (573, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-01 19:45:43.000' AS DateTime), 2, N'4ebfc352102ad96d75b27eb5d28b031c4c927f7f92afa06f0d6a3c2cb0424b25')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (574, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-01 19:46:13.000' AS DateTime), 2, N'ea03c329c66c92dfb45cdfa8d52676ba76fffe70be47cb452241498d18694749')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (575, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-01 19:47:04.000' AS DateTime), 2, N'2792abd8461a837aba31cb3bdce6ec519a0ed23a2eacf2a7c84d8b371d52656e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (576, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-01 19:47:20.000' AS DateTime), 2, N'090f6e307b995b4173efa15779200f74e8d96a4e388e110cf4a09a7df05ee33f')
GO
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (577, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-01 19:48:31.000' AS DateTime), 2, N'5dae18a35c0e978a1acfce88159d46d09a762544f6ea9f30da78c843a33c7a51')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (578, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-01 19:52:52.000' AS DateTime), 2, N'294e533b1cf6d4c860566c7b563b1d48bb45740b8c5639b7ed169d90eb99f881')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (579, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-01 19:53:20.000' AS DateTime), 2, N'17c55f1b814a236cd8531ffac7b0e903bba30c328a824ace6c5853fed388305c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (580, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-01 19:55:37.000' AS DateTime), 2, N'd70e4ccdae12a51314c4763a730e173114edc2b99608614a38668a184dcb2064')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (581, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-01 19:55:46.000' AS DateTime), 2, N'4c26acf70c67169c71f950d46790ba26213ae397d8bc1e307880592e1fcec7f0')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (582, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-01 19:57:04.000' AS DateTime), 2, N'60e93174aed687c0c32ff6c6b55ea4ff6945f8a1c52837eabe17db34b144ec45')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (583, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-01 19:58:19.000' AS DateTime), 2, N'312d2caf057672cf71292be7837f74f9a0269d49994cae1e2744d7e3be696f57')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (584, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-01 19:58:53.000' AS DateTime), 2, N'30f69551047c4f065c5d89106add61dfd494e54fed10cca58672e015dd2b49d3')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (585, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-01 19:59:15.000' AS DateTime), 2, N'0156c1ee8a61f0353cde7a356391012fa30745d483f923c993d07ed819b5ae21')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (586, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-01 20:07:32.000' AS DateTime), 2, N'cfe8506e20560307e7b5b98927827df437abbd7cce018ce09c22bd16e56abe62')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (587, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-01 20:08:10.000' AS DateTime), 2, N'9aef4e859b7ac0cefa70a0d9bf672484541a8581b13ef2c31fa39ec41de3e07e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (588, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-02 12:26:41.000' AS DateTime), 2, N'916393196a10ef9dee43ab4fc41f775f857cf2961bd4058a15cede762acb183e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (589, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-02 12:29:04.000' AS DateTime), 2, N'85d06fc914019e13b3b3b8a239169d2c8c9fabe2c26a3925394fc8bbaed440e8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (590, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-02 12:49:18.000' AS DateTime), 2, N'7feba3a6e27973c8140398da035beb3b4796fb322e8857081acaea1b351220ac')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (591, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-02 12:49:26.000' AS DateTime), 2, N'2413b54a212386266a5bd1d6d144b24559c966e9df68ef305e22afae7200e7ff')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (592, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-02 12:49:49.000' AS DateTime), 2, N'2f2edd8af18c24c762d01596d1469873f9f4625ca0be9f8acedbeb6b1127911a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (593, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-02 12:50:19.000' AS DateTime), 2, N'a3a57a526a573e044672b24e6e2a8899a5396ef416000c76d099b3a07e4637f2')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (594, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-02 12:51:40.000' AS DateTime), 2, N'5f512eb652cbde7f1c24724d03d41a8f3d3de34c0d056bf5d22efc00685eb484')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (595, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-02 12:54:36.000' AS DateTime), 2, N'7bb702894691f855f627ba41710a19628e5b4758ab4912e9949edf16eb076e06')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (596, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-02 12:55:03.000' AS DateTime), 2, N'2a7c81aee362281909451b3996bd754fe752b918179d01520806cd4f729a3753')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (597, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-02 13:02:46.000' AS DateTime), 2, N'cdc442ef782823925e4f8e14f119d1f38b3a830823d50fb058a2503149ef97d0')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (598, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-02 13:02:48.000' AS DateTime), 2, N'e71230592aa68bfbac1c5772f21a6b5832febd963c4c416ea4115d357e8c542c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (599, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-02 13:02:49.000' AS DateTime), 2, N'ead13154f4ff70a22446ca08b5f8903ae2920163bc686e074456f54fd6edfce2')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (600, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-02 13:03:18.000' AS DateTime), 2, N'cdc442ef782823925e4f8e14f119d1f38b3a830823d50fb058a2503149ef97d0')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (601, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-02 13:03:41.000' AS DateTime), 2, N'e72b4bc09862090121078686b9818055f326bd1301d3214a741d3196fbd1d88a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (602, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-02 13:04:07.000' AS DateTime), 2, N'a1803c2d837a7aebd94851ce2b985691b30de7f9eee480b56c9d154ea853d665')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (603, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-02 13:05:32.000' AS DateTime), 2, N'97c326b44ca13fb815afdc7d809651d555d9efc1b81e9ed9d402533660618e5e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (604, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-02 13:06:11.000' AS DateTime), 2, N'f1ead1ca9425e47311b2a17aaa9543bf74fab1ee898b5a84b64b340d67c2138d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (605, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-05 19:36:14.000' AS DateTime), 2, N'26a1030ab674fccab1e15d93c798717e3c6bfc404187a94f62ee7f6bc650a4a3')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (606, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-05 19:41:32.000' AS DateTime), 2, N'5a30ef02efda4ed0c1c99d6cc2732f58d009c25a80abe4f0f532acb81aaaf2a5')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (607, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-05 19:41:43.000' AS DateTime), 2, N'286fc4d27e4737d53443c877011051b72b3495b55db136b38247cb250cdbf676')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (608, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-05 19:41:56.000' AS DateTime), 2, N'3f3b3f7def08f3bea2bb33a75ae95347c8ee09ea08b69959b21290859d0510ab')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (609, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-05 19:41:58.000' AS DateTime), 2, N'2835957ed3aefa4c57fd0563560cd07eeb71a28c85ed65a78d979ed44a244828')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (610, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-05 19:41:58.000' AS DateTime), 2, N'2835957ed3aefa4c57fd0563560cd07eeb71a28c85ed65a78d979ed44a244828')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (611, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-08 20:33:25.000' AS DateTime), 2, N'da0d6d976f12b0d8ec1c3182333a2db6225c45f23986a02e4487a0a9eed78918')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (612, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-08 20:34:18.000' AS DateTime), 2, N'9da9fa4d44a82402cbc6762083c0b19011e5f289c22877218a1029c2296a6487')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (613, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-08 20:54:26.000' AS DateTime), 2, N'd6d8007bbf685f4ae733b0e99afbd41c02e7f36eec835c7c1a72a1106e9f4cab')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (614, N'BackUp', N'OVlGiW0knG1EcgRD2aMQLXp6zmAMAmzzagvbMnu8g3c=', 3, CAST(N'2020-11-08 20:54:54.000' AS DateTime), 2, N'673960f7a68755b890aea957cd25e4496bc633bfdb147607eb35b23df63c9db3')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (615, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-08 20:55:55.000' AS DateTime), 2, N'410f4d52e231ce632913d9257a0712ba7e37a948556b18addd458e0aa67c3f02')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (616, N'BackUp', N'OVlGiW0knG1EcgRD2aMQLXp6zmAMAmzzagvbMnu8g3c=', 3, CAST(N'2020-11-08 20:56:25.000' AS DateTime), 2, N'e237dfbfdb4ca310bfb6656e93da9ab45b3094675bb4e7ecfc334f490354fc31')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (617, N'BackUp', N'OVlGiW0knG1EcgRD2aMQLXp6zmAMAmzzagvbMnu8g3c=', 3, CAST(N'2020-11-08 20:57:05.000' AS DateTime), 2, N'1d78e33431357deb6c08ff299e1bc81a3cd14fd332dd351aa4dcf1692e605e52')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (618, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-08 20:57:17.000' AS DateTime), 2, N'af40f0f135a14de30f7e4046072924ab5695fc8a33f4d9d098314000efbc827e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (619, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-08 21:23:46.000' AS DateTime), 2, N'b56f459e5ba56efa61c8a03ef61556cc0b850453724847c687ee238743d10f3e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (620, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-08 21:24:17.000' AS DateTime), 2, N'aca0168ce70da68467ef2c784a3315a0fc43835d9700cf2c1b6310c5f94df8b9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (621, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-08 21:24:50.000' AS DateTime), 2, N'9628e8bbe0d623d5e5bd34650713bfdb92aacff1ddc80db511b6663c861ebfd8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (622, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-08 21:26:26.000' AS DateTime), 2, N'd6d8007bbf685f4ae733b0e99afbd41c02e7f36eec835c7c1a72a1106e9f4cab')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (623, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-08 21:27:48.000' AS DateTime), 2, N'ace631ecbff64e151db8a5e7ce737dff0b6327e57dd14cf96edc46058ce0ae42')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (624, N'BackUp', N'OVlGiW0knG1EcgRD2aMQLXp6zmAMAmzzagvbMnu8g3c=', 3, CAST(N'2020-11-08 21:28:23.000' AS DateTime), 2, N'f5d1b424d320e695004cda0bc69d8a296bb758d0f6fde70d27cb0eb409f15559')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (625, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-08 21:28:54.000' AS DateTime), 2, N'1384d0fe321b6dfb5eabb1fea8ff1c48b769c1e86704392174e57e22f803e127')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (626, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-08 21:29:35.000' AS DateTime), 2, N'dcec50f6f4b18cfeca4f7cec042e13323e07e656035632b7878fdc3415717694')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (627, N'BackUp', N'OVlGiW0knG1EcgRD2aMQLXp6zmAMAmzzagvbMnu8g3c=', 3, CAST(N'2020-11-08 21:30:07.000' AS DateTime), 2, N'5165fcf1bfbd0bb25dfad625e37991f4f94b91ba20be54aeee1212030319259d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (628, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-08 21:32:32.000' AS DateTime), 2, N'f1582eb27e555b46dc4fd22c1a6d21b27c4b7746a4fd0356b9bb3f8072b9a503')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (629, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-08 21:40:18.000' AS DateTime), 2, N'98641f8016a01d3563afe3bf4a88b0b3a31ef064e201b8fe69a1e1b0026b8ac2')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (630, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-08 21:40:54.000' AS DateTime), 2, N'2d315cfb996dda0f8b65b6d88845472ab4051ad23bac61bfc2da7b1becf25345')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (631, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-08 21:49:37.000' AS DateTime), 2, N'ed6d266a23e7553ef3b470e93f9a0421518c4ffff36b51b74722f50c73323cc5')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (632, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-08 21:50:44.000' AS DateTime), 2, N'40d1fc3e59607e0039d0cdf5c0ccd16ac9eabd01f637fc3d26b6bbef1effd422')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (633, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-08 21:51:51.000' AS DateTime), 2, N'7aa72566a64a4850d1d64936f384993d9b089a60d3a240e0da5f10fd18d6ea4a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (634, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-09 18:46:10.000' AS DateTime), 2, N'1efbbbe4fab36cc3941b5739011ccede52bee828b3fe5f5294db215ff0c0145e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (635, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-09 18:47:41.000' AS DateTime), 2, N'b391b02e66f29769aa84c6541108a3539889eff0199251d35036dcceb9d8fbe0')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (636, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-09 18:49:26.000' AS DateTime), 2, N'd636cfd51171c6a3bd446708aaae1ca0ec7ddecf07d710d6ee85eee540337bca')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (637, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-09 19:47:39.000' AS DateTime), 2, N'58dec2db4458419794b9a2c706eac322a53edcf66fd19665a279d021b9546cd4')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (638, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-09 19:49:04.000' AS DateTime), 2, N'452b708a5c4c5567137cccbb9abc42b2b2102949d70b4117fccf4e2eb5c55231')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (639, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-09 20:21:47.000' AS DateTime), 2, N'cfd06a4915a6bb933b2d3a2c1708c7be70555339326ae9b0b6d4e763a05f035d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (640, N'BackUp', N'OVlGiW0knG1EcgRD2aMQLXp6zmAMAmzzagvbMnu8g3c=', 3, CAST(N'2020-11-09 20:22:31.000' AS DateTime), 2, N'ba23a9913e6a298b813ef689d10a309618f02905e00b3cece6d4045d7d0af1fb')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (641, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-09 20:26:05.000' AS DateTime), 2, N'f328747f64d115b8f0facb458029780706cb702ff422e59a31514e1f563b5ec3')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (642, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 18:58:36.000' AS DateTime), 2, N'6ecb8a014f0f01c3fa50d30a5971bbcfb53c9fd0af56883e54bc20498d2380ad')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (643, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 18:59:50.000' AS DateTime), 2, N'8031b1232e59b6bccf955c3e32f63231b7e23b31f5e60d5fff703f37cdb44988')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (644, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 19:03:36.000' AS DateTime), 2, N'548c4127608646c9d224eb12dbc5c8ff5c9240e8078f096cfae36ffa1cabf7bf')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (645, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 19:04:37.000' AS DateTime), 2, N'638e349458b0445e7ca9a33fe8065d892ff2b01acb174c99f90a4be03aa7dfea')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (646, N'AltaCliente', N'Csj/JmMVP9y4eecwWSjLBHA6atatwAYw2S4I7TTRkCA=', 3, CAST(N'2020-11-12 19:05:54.000' AS DateTime), 2, N'9a74bdfc7434c84398424d40566cca64e0c7fe66f87d30443fea8d049a71048c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (647, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 19:09:23.000' AS DateTime), 2, N'34a54ba8079f67bc50f64034403c9ee8a286465adc28116e5c77f544505aca82')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (648, N'AltaCliente', N'Csj/JmMVP9y4eecwWSjLBHA6atatwAYw2S4I7TTRkCA=', 3, CAST(N'2020-11-12 19:11:10.000' AS DateTime), 2, N'96a35737d25149965bf54191f592b17bf103444c425c907f797eb4bfe8956683')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (649, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-12 19:11:25.000' AS DateTime), 2, N'8bbd511fe1acc5ecfcca2b47dba253b1efa19ddc70005f95e02a490be3bdc7b9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (650, N'ErrorDVH', N'UBFwCj7l+zd0/U2UweK8D6pzRnjwv7Ql8nFVhz8iB1M=', 1, CAST(N'2020-11-12 19:11:34.000' AS DateTime), 1, N'89590396e712c2392362bd2617455f96c654b1b76c3f612517e72a3f05f24331')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (651, N'ErrorDVH', N'UBFwCj7l+zd0/U2UweK8D6pzRnjwv7Ql8nFVhz8iB1M=', 1, CAST(N'2020-11-12 19:12:28.000' AS DateTime), 1, N'816cc01bd88f554b914c19194140f1d91f741bc0d42581cad3765524ebfc9c3b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (652, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 19:12:31.000' AS DateTime), 2, N'95e7041548672b0dfe34d651a53bc6ff62038340bb8655f5b1f87eb4e3fc699f')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (653, N'RecalculoDigitos', N'zWDy8jCgA3xzkYFMq9ILrLGWpGUY89A/DtfPeKntZehvzAG177+C6WbMsAsnhyf0', 1, CAST(N'2020-11-12 19:12:38.000' AS DateTime), 2, N'484906b7ced5ff4e4bab787fefffc7c7bb8c559d64f022297a89902b4ae75c19')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (654, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-12 19:13:11.000' AS DateTime), 2, N'5478a6d8988c8df293d297af6c01f6fd9ddc597afae4e4c16f0f675913e9aeea')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (655, N'ErrorDVH', N'UBFwCj7l+zd0/U2UweK8D6pzRnjwv7Ql8nFVhz8iB1M=', 1, CAST(N'2020-11-12 19:14:49.000' AS DateTime), 1, N'b4ac2d60c4ed5ce80bdb1065c3e5e41d88be4e847da4e1a8e08147e08b5efcec')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (656, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 19:14:51.000' AS DateTime), 2, N'b245e3dd84542074bf0bb2a4a0bd055ba1cbdbe41e5f40032347efd3f3965419')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (657, N'AltaCliente', N'Csj/JmMVP9y4eecwWSjLBKjH/o0jTBH+bDHcyu7kfPk=', 3, CAST(N'2020-11-12 19:17:44.000' AS DateTime), 2, N'3841b9472ec8f9eb1476bf6005379ae6e4be9c4d836d6934a278ac18b145b109')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (658, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-12 19:17:48.000' AS DateTime), 2, N'c1787702bbfe323452965de53bf03d2196a56f8a1641047a088ed74e0a5dd11b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (659, N'ErrorDVH', N'UBFwCj7l+zd0/U2UweK8DzGdVgqqwcKjslTjeRmIPRQlgUvzN8AGHzoRA8wMnDedEAX2196qSJobpCp5iJpIiw==', 1, CAST(N'2020-11-12 19:17:55.000' AS DateTime), 1, N'8dc7fcfb449096445d5076953eea92a5e6efe1d49a72fa9b38fa0449a005d320')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (660, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 19:17:57.000' AS DateTime), 2, N'aa7d9ba473d9068d570d2b7d2455820b2329e8fb31cfa822f6886974977c06a0')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (661, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-12 19:18:13.000' AS DateTime), 2, N'ca88744f772a678a8680b904869fb17868b3fcea0f41acd69b5fd9df28ddefbf')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (662, N'ErrorDVH', N'UBFwCj7l+zd0/U2UweK8DzGdVgqqwcKjslTjeRmIPRQlgUvzN8AGHzoRA8wMnDedEAX2196qSJobpCp5iJpIiw==', 1, CAST(N'2020-11-12 19:23:36.000' AS DateTime), 1, N'd2d58cfe45e4251b09df35ae6d6677ad7a8263043758d02857415acce09380b7')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (663, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 19:23:39.000' AS DateTime), 2, N'3cc143ef28c6cd2cd35227daa880a1dcf8bf10b6b51b16c501ee80c754ebbb19')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (664, N'AltaCliente', N'Csj/JmMVP9y4eecwWSjLBCM6XMMCfUwtfPq6Iz+KmyHLLZZzfKG6qfvBzBo0lejK', 3, CAST(N'2020-11-12 19:25:50.000' AS DateTime), 2, N'025cffdfca85fc01679851ce27c9412ac079e4e264a7eb0fe41643a3d69b0c1b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (665, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-12 19:25:54.000' AS DateTime), 2, N'6dec7a44253d8cc4045476d51927b9b3d2e4449df20c583d2190a6cd1b8b4a2d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (666, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-12 19:25:55.000' AS DateTime), 2, N'86ec34c0e928f58bafac84a13781046f03fb1d0eab896d7ff7b9fb621c2949ce')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (667, N'ErrorDVH', N'UBFwCj7l+zd0/U2UweK8DzGdVgqqwcKjslTjeRmIPRQlgUvzN8AGHzoRA8wMnDed5CdbKL80yJHj1nCqxJpAgqpzzfZMuPINJGVngb2HPj8=', 1, CAST(N'2020-11-12 19:26:00.000' AS DateTime), 1, N'e660ad5672d9c34328abb8e0317a44a2120f9d15e51f2d1ac285908240ec4faa')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (668, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 19:26:02.000' AS DateTime), 2, N'32d09272f071de6aeeb815713ec3870cd8237740f09473e9a554e080ef1c553e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (669, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-12 19:26:36.000' AS DateTime), 2, N'aa825c3c4ee0750cc9acf6002222c9e7440a17c5ff189047a37bfae60d7ec4ff')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (670, N'ErrorDVH', N'UBFwCj7l+zd0/U2UweK8DzGdVgqqwcKjslTjeRmIPRQlgUvzN8AGHzoRA8wMnDed5CdbKL80yJHj1nCqxJpAgqpzzfZMuPINJGVngb2HPj8=', 1, CAST(N'2020-11-12 19:26:41.000' AS DateTime), 1, N'0a258cd93d765cf7e2665ac20eda28b7820af6c95a3af1455c4ffaceb5b8ab24')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (671, N'ErrorDVH', N'UBFwCj7l+zd0/U2UweK8DzGdVgqqwcKjslTjeRmIPRQlgUvzN8AGHzoRA8wMnDed5CdbKL80yJHj1nCqxJpAgqpzzfZMuPINJGVngb2HPj8=', 1, CAST(N'2020-11-12 19:30:24.000' AS DateTime), 1, N'6151b379437e3df6ca6079e1049d37ac00d1f4d16e9d98e43878d66da163cae7')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (672, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 19:30:27.000' AS DateTime), 2, N'f6f29def344edee0ed15ca9da366a21f85bc7f81a155b24f0ca180bd2017a14c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (673, N'AltaCliente', N'Csj/JmMVP9y4eecwWSjLBCM6XMMCfUwtfPq6Iz+KmyEp3NsMu/clk2Uhbt9xMyMn', 3, CAST(N'2020-11-12 19:30:51.000' AS DateTime), 2, N'd6ae79fa94b76168c7f223d2a48cc4dc97e77f12ba5e4afb444e2c66cad856f4')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (674, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-12 19:30:55.000' AS DateTime), 2, N'659eb47ee608dda2deecd5ea5ef4a0bb0322bdd73b61faed710c13fcbc1f1165')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (675, N'ErrorDVH', N'UBFwCj7l+zd0/U2UweK8DzGdVgqqwcKjslTjeRmIPRQlgUvzN8AGHzoRA8wMnDed5CdbKL80yJHj1nCqxJpAgqpzzfZMuPINJGVngb2HPj8=', 1, CAST(N'2020-11-12 19:30:59.000' AS DateTime), 1, N'3ab38b6de30dc209b5a177bae5d6e81c22460f95f977a0b37d98a6a003ede0ff')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (676, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 19:31:01.000' AS DateTime), 2, N'64ba72a79324ce02d4601368e7f0c31b9e857c5165e25b0c97168019aeada0d8')
GO
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (677, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-12 19:31:52.000' AS DateTime), 2, N'4bc28f3150b87196ad7fb4f66dda84ab602116776c3850a3de7b8d6ddc6cfdee')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (678, N'ErrorDVV', N'9X/7C4T5aX9Q8yxmeqMijQ==', 1, CAST(N'2020-11-12 19:31:58.000' AS DateTime), 1, N'83d45def4a6f0866fdbb3569b85098be8edf0d03d8ac0a5f9cc3024cb64dd6aa')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (679, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 19:31:59.000' AS DateTime), 2, N'e6d41ea3588d917b23808182bde8317c45eb6dbe788c8a51808633eb62ad8e73')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (680, N'RecalculoDigitos', N'zWDy8jCgA3xzkYFMq9ILrLGWpGUY89A/DtfPeKntZehvzAG177+C6WbMsAsnhyf0', 1, CAST(N'2020-11-12 19:32:07.000' AS DateTime), 2, N'7d9f7d5719747a38e3df6eda97fe2c4e2397a3a1fb193976eabc8dc4bcc492dd')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (681, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-12 19:32:10.000' AS DateTime), 2, N'43d0d13d482089054021bbba481538f50c480d1426e27da48e3f4e94f7da92e8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (682, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 19:32:20.000' AS DateTime), 2, N'ae7a0d8db89e6000cf17ecaf19dbbdd89e4ff11ee2f94d23cbad418ff11b97e1')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (683, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-12 19:32:23.000' AS DateTime), 2, N'3e1cf002d4e4bd8e79f2e84220b416bd867776d1d93245c9f78c382154adf7a8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (684, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 19:47:08.000' AS DateTime), 2, N'a94846f7fd7b5804c346cef24b3cc2988173c6c90f2f89dfff2e115114624b6f')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (685, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-12 19:47:17.000' AS DateTime), 2, N'8c24561c704d7b447a637262345913ebf6c83093aaa82bf3c6fe9930da2141c9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (686, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 19:48:48.000' AS DateTime), 2, N'eccb0726af5a2feb158a085ad763d8d82f845012087f15b2d4925053cec359a3')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (687, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-12 19:49:15.000' AS DateTime), 2, N'e9a1df25aec54f6893d709593b77c3dd6a162985078f24c781240ed285b45087')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (688, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 19:50:01.000' AS DateTime), 2, N'cf620a6d30e708edd021d1d6ceb55fcd0b20a478d3bc92d727d316c13e88a101')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (689, N'AltaCliente', N'Csj/JmMVP9y4eecwWSjLBGFqOrbp9AsW8B//YPGxG9kJbp/flnYZMMgyVlQIDdVv', 3, CAST(N'2020-11-12 19:50:49.000' AS DateTime), 2, N'ca9486efbe2dc08636b539a657a97052b6f439e3feb8ac11e075c7c24232afa8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (690, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-12 19:51:50.000' AS DateTime), 2, N'cbaac22e55d10c64dbdb59d598b2eaeeff3b83e8cd941be18eb222d16411c479')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (691, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 23:11:29.000' AS DateTime), 2, N'65e8041349815ef31d83edad35d3c7b1278e90d6b3a0f004e6d609a18fca036c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (692, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 23:11:52.000' AS DateTime), 2, N'ad11af43454565154733e77b03442bd757314c7a5697c604c323e509953f0de8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (693, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 23:13:01.000' AS DateTime), 2, N'903d80db3f5dd8d5b393737c43bd47482ffa1dad05560a30a2be8ca42fc30ced')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (694, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-12 23:13:20.000' AS DateTime), 2, N'132b2defb74e0b3948d1c343748c3e6bdcebbc858ce97260c190dbe3163c49d3')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (695, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 23:14:13.000' AS DateTime), 2, N'8aeccb103931840ceebb1595bf9796956c2739bee01f8b6992d90c165287df15')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (696, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-12 23:15:09.000' AS DateTime), 2, N'096be9dcc332ff994020a0dbe322b0c369f20d3a54378ac3dc570208e28badad')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (697, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 23:34:45.000' AS DateTime), 2, N'd4ba989b4e641c9f6887456e43fa57faebd24ed697e6ca8317cb666385ead1e8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (698, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-12 23:37:19.000' AS DateTime), 2, N'21dc511f5afeb7d5aa76a2351067def179e07e5e027cf7271f2949b048da1ae1')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (699, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-12 23:37:44.000' AS DateTime), 2, N'7eeb74ea74d38460e1f53a9d9c76e36569a95905389f3f75c45a2f7907c867f9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (700, N'ErrorDVV', N'9X/7C4T5aX9Q8yxmeqMijQ==', 1, CAST(N'2020-11-14 20:41:42.000' AS DateTime), 1, N'8d02a1a96654b85f6608a9d1d06f95f9f5d3a2ade81e014ca560c9dad26f4961')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (701, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-14 20:41:43.000' AS DateTime), 2, N'8bcc52089da59f41f87b4b0ec32bf4622fd8a3dc35a5977ba94007341a5a4d1d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (702, N'RecalculoDigitos', N'zWDy8jCgA3xzkYFMq9ILrLGWpGUY89A/DtfPeKntZehvzAG177+C6WbMsAsnhyf0', 1, CAST(N'2020-11-14 20:41:50.000' AS DateTime), 2, N'111db6d83f7c0b1c4322b708bb5aa768bba51e38f593117295368bf7220cfc43')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (703, N'AltaCliente', N'Csj/JmMVP9y4eecwWSjLBGFqOrbp9AsW8B//YPGxG9kJbp/flnYZMMgyVlQIDdVv', 3, CAST(N'2020-11-14 20:42:31.000' AS DateTime), 2, N'109d808bc858be89dac4b7fad2c0cdf0ac39b4b1e83b4901d9aea8af20249769')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (704, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-14 20:42:36.000' AS DateTime), 2, N'3f8960574e822ce7983989cf90915e9681e9bf11965252207c9a0ef93f9f54c6')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (705, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-14 20:42:43.000' AS DateTime), 2, N'95e7041548672b0dfe34d651a53bc6ff62038340bb8655f5b1f87eb4e3fc699f')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (706, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-14 20:42:45.000' AS DateTime), 2, N'7a074f370d9673bd0be34067e5d40dfe6f6c5ea904064704b5e4a23fce6fb4f6')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (707, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-14 20:43:07.000' AS DateTime), 2, N'5acf2d198c7b92995f9b6aefbc1fc85b81dde617e4b758dfa7412d668f517b01')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (708, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-14 20:43:22.000' AS DateTime), 2, N'be6a991fdbe44a788c72df4cd6f530acc89cf8edbc63a2692a2cb7b801981b27')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (709, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-14 20:46:26.000' AS DateTime), 2, N'316780bd09847b25f6c32558996dd1b9d36eeda70caaf6dc4c467169a5064629')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (710, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-14 20:49:05.000' AS DateTime), 2, N'767edef22fd4a6d110cd509182e6aa7431b8e6399a0695ce33540868bed27e1d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (711, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-14 20:50:47.000' AS DateTime), 2, N'90db830424c7a93d2f8b5e87fcdbd8aaae42729cff75ce1ddac95c7fd2974c52')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (712, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-14 20:54:54.000' AS DateTime), 2, N'd36989b33df7749e487c412ae251d128c2ab5eca2f7c463729e4649a42836669')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (713, N'BackUp', N'OVlGiW0knG1EcgRD2aMQLXp6zmAMAmzzagvbMnu8g3c=', 3, CAST(N'2020-11-14 20:58:59.000' AS DateTime), 2, N'b221af53e0f8db6512e8062807aad07f226751b24f6e8dc571ddf7c075c4e684')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (714, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-14 21:01:00.000' AS DateTime), 2, N'4a568f4ef228ebdfe905ed66256374d2e70b22c185734235387ec3329e2adcb6')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (715, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-14 21:42:50.000' AS DateTime), 2, N'cf620a6d30e708edd021d1d6ceb55fcd0b20a478d3bc92d727d316c13e88a101')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (716, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-14 21:43:30.000' AS DateTime), 2, N'298107be5cfdf7367e713f83af4522f6fb9219f5a1b9b53d7eb9b553944ca332')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (717, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-14 21:49:43.000' AS DateTime), 2, N'7efa306f631cd1c8800e8cca3d49048334bd9d28764466d6995b81847b20fc6b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (718, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-14 21:50:33.000' AS DateTime), 2, N'ca33ea932897d61de81b009c237add975924efeb249a95292f1503e062a28a06')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (719, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-14 21:54:33.000' AS DateTime), 2, N'd9a6ca23b32293ddf0cf8e1e2f32081df458dab387670c36bea71549e8fe6761')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (720, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-14 21:55:20.000' AS DateTime), 2, N'6908b4222df1505c9ee060c4491e639da4764c7a89f87ec1c2731cbbdd15ee9b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (721, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-14 21:56:11.000' AS DateTime), 2, N'99075c24a63169a26939abdf81e3fb6847cc606a347251c5ecc6973cbdf1a697')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (722, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-14 21:56:26.000' AS DateTime), 2, N'4159cada09403cec5108b5ee4686acf52f8e025925123e43e97b8f7c323d303f')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (723, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-14 22:04:53.000' AS DateTime), 2, N'1f3d6b9b09595b664356d9c4cfd3b90f3b5d35b5638841b5276da2f361c4277d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (724, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-14 22:05:47.000' AS DateTime), 2, N'8a0a56c0b7fdd0c09dac3a844caf25025bf9011656f42b69a779ffea7e484e51')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (725, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-14 22:06:14.000' AS DateTime), 2, N'2e38ccaec92cc6c0e5e367aa34e8f978fed18dec8eeb9cc548926085464a03fe')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (726, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-14 22:06:30.000' AS DateTime), 2, N'abc87dcc79189f883f446ee4e8ae4efb3d1cf75b148d1668653729e999fb9279')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (727, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-14 22:13:49.000' AS DateTime), 2, N'a866dee1b13ca4e5caee29ec450362d55005f8cc0e0252706d3d394e6b2309ca')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (728, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-14 22:15:49.000' AS DateTime), 2, N'7e238c6c320d651db195f407131bfea58da91e12625a8dd58121eb0c05ef58aa')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (729, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-14 22:17:04.000' AS DateTime), 2, N'd1737191f5835425b5250cd40bf908da68fd6b92c4310cd5e3b80a26ee8bd025')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (730, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-14 22:17:46.000' AS DateTime), 2, N'58ddebedf929ffc87804d49668945ab6ca7373e7f0f97ad33d5ee533aeb86084')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (731, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 02:10:33.000' AS DateTime), 2, N'e74d3cf8e6098fe391db3b24a930e39a047987a7f17e09e1229e68acbe55b70f')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (732, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 02:14:47.000' AS DateTime), 2, N'4088d8bbdbaf0f04a8ac6426f578277bc5693bf60fb3ddf5c2a5036050af7144')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (733, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 02:16:10.000' AS DateTime), 2, N'306cbea2dcdb8bde0d9161501400fde9dfe97aecb5f195db79b207bcc7447c90')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (734, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 02:16:47.000' AS DateTime), 2, N'74d27c9e1b72345ea82d664f8111a1eede25852af8bd9810eda6e00a0fefc90d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (735, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 02:19:15.000' AS DateTime), 2, N'47804437e7d31555ac36a00f1f880b8d18302d6dc5a9bb02ee6d5b195ff6ebaa')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (736, N'ModificacionCliente', N'UpENVc6DN2sv9PInfeUPRPnNEHs+Wnz/BZA3aK+Dkzf1G+L8fF8C7/58HOJutOkpnSVnmFW9LEhisLiREqCOaQ==', 3, CAST(N'2020-11-15 02:19:28.000' AS DateTime), 2, N'e628596233d7c33d5323f06dce44147c7ed7a67dec249a86a27126f9dd4655b8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (737, N'AltaCliente', N'Csj/JmMVP9y4eecwWSjLBCeByZgWiX4ecutH1+2gjfgjqRUWllJ4+ActGgSdPeww', 3, CAST(N'2020-11-15 02:20:20.000' AS DateTime), 2, N'ad8fdd6585956d9639c995c3fc618e107ee2c9310d4985164a341ad7105b06a9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (738, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 02:20:46.000' AS DateTime), 2, N'4e4bc463da17ee4dfc08e6e5f26ba2706a06bf35c749cf89e1824923ecd4a26a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (739, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 02:32:48.000' AS DateTime), 2, N'd36989b33df7749e487c412ae251d128c2ab5eca2f7c463729e4649a42836669')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (740, N'BajaCliente', N'3Scf0DIA6JTwjJuUHJuRQU7zd2pZHfXArGPEMCYmHC8i5VoV0nirwK8usQz+cGZXH6k6DvL7hISa0bPFnMOD7RMySYVSXBYNj7hia7uH3HU=', 2, CAST(N'2020-11-15 02:32:53.000' AS DateTime), 2, N'189244e7f47756e8ea73e4749d6e3e3b36216a1bf06749d13f7a88ea5abfeeba')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (741, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 02:32:58.000' AS DateTime), 2, N'97a1d535ac709d6f47fbc75fef29e5f2f63e1642a59453dc7b8104984f0c96fa')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (742, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 02:33:05.000' AS DateTime), 2, N'98e1683167eb5e989e676b4be89a60c227d8cf07f3b509ab5d2285e36820df98')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (743, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 02:33:14.000' AS DateTime), 2, N'e1ed53055c6de9d1e2f9bb965b182c0ee82146a1889fa5a569c32e5cc92b3adb')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (744, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 02:34:15.000' AS DateTime), 2, N'854326ccf93c633bbfc510e47ab11cd0da0ba75c84773519333442c2340031d0')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (745, N'BajaCliente', N'3Scf0DIA6JTwjJuUHJuRQRwX1MwCovfWhlAdxOahb4LU0Pl2Eydly0JtjSYAvQGX53puLZQkq1gzY1vX+8JaOMo4q+spWWq1YmknqAZ6ueI=', 2, CAST(N'2020-11-15 02:34:32.000' AS DateTime), 2, N'11e5620a3ebef9f6e459c4cb286830e8c32013bf27d7f1886e637a6112386b47')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (746, N'ModificacionCliente', N'UpENVc6DN2sv9PInfeUPRPnNEHs+Wnz/BZA3aK+Dkzf1G+L8fF8C7/58HOJutOkpnSVnmFW9LEhisLiREqCOaQ==', 3, CAST(N'2020-11-15 02:34:40.000' AS DateTime), 2, N'03830933ae5271b5f6cc493eb1772e1ba48ea23f58c188ecdd1996a4c2301aa3')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (747, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 02:35:15.000' AS DateTime), 2, N'17ef0ef54c1e83552b8136d7d85f355211b86aa9398f0b7307327a8e930883ac')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (748, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 02:38:26.000' AS DateTime), 2, N'3cbb711cb45cea6a89d2887e23ff60cfd696022a5b0ae3986ed7246375fa6908')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (749, N'BajaCliente', N'3Scf0DIA6JTwjJuUHJuRQYAdsxDb2jpszwJsPePADSNjxwAMQo1y2E0IHj7YKnEp', 2, CAST(N'2020-11-15 02:38:51.000' AS DateTime), 2, N'60d6f5c668e25c3c1fcd4bcad5bb2c5fe8d59064e93819364ad936eccfe54dd3')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (750, N'ModificacionCliente', N'UpENVc6DN2sv9PInfeUPRPnNEHs+Wnz/BZA3aK+Dkzf1G+L8fF8C7/58HOJutOkpnSVnmFW9LEhisLiREqCOaQ==', 3, CAST(N'2020-11-15 02:39:24.000' AS DateTime), 2, N'3afdad883ed523213372a7a0a1870d7a7ccae38d395552086f4e9b4cef598235')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (751, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 02:40:03.000' AS DateTime), 2, N'164f3bcbb5cc2258cc0589d57417a9e438cb9f83bf58799be93da2343b3ace3a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (752, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 02:44:56.000' AS DateTime), 2, N'c2292308e7518884de52922df71a2b760366cc220605d9c69d382c02ae2dbce9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (753, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 02:45:06.000' AS DateTime), 2, N'471147dea8efe6fa4b21a48f085b6bb1de4724ea45e67946aa7df6c6b81e7efb')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (754, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 02:45:53.000' AS DateTime), 2, N'bcdc3705e6117d30bdb9a2e39f4de376f31b181c3be2280be586e59d3605345c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (755, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 02:46:14.000' AS DateTime), 2, N'62fe14a825465a5f94067b17fe645cb42fff0bb6a097c40919117de4e5761760')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (756, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 02:47:12.000' AS DateTime), 2, N'84fc5be586caccad214a37f5df1d0144f65f505a64ac400b1d9cb706c5d14f11')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (757, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 02:47:47.000' AS DateTime), 2, N'dff808e4b762927abc2e10fa5c5b79f07c8defb8b218337081d8d45159c288a6')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (758, N'ModificacionCliente', N'UpENVc6DN2sv9PInfeUPRPnNEHs+Wnz/BZA3aK+Dkzfkj0f4WSXKosFWkouudGvF5huxnlK+gK11odOKDp7TJA==', 3, CAST(N'2020-11-15 02:50:16.000' AS DateTime), 2, N'9bdaf89cb73dfb5ed457f6f25df3b498dfaa043a87479e9827f9fc26acc30515')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (759, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 02:50:37.000' AS DateTime), 2, N'846c2417358adec73d4acbfaadf4244f458757f02ada579a598d16849a643c5a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (760, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 03:16:32.000' AS DateTime), 2, N'8d78f415318b2d5dca494a104be17fcdcd61f654ad20bd9fe45599f01f417cd7')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (761, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 03:18:10.000' AS DateTime), 2, N'e2e3a61475eb7d19841830398970f03963a7a32e13c36658ecbab2b9017b5b7d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (762, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 03:18:33.000' AS DateTime), 2, N'7a1e22d11bb4e2260ab781d5bf4b64ed79cc8d0138c1b69aab994b042738593d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (763, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 03:19:32.000' AS DateTime), 2, N'5cf5d527852cfb56086352ab74b320f3b612f3fbdd169ad787a476f3f685355e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (764, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 03:22:53.000' AS DateTime), 2, N'854326ccf93c633bbfc510e47ab11cd0da0ba75c84773519333442c2340031d0')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (765, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 13:50:12.000' AS DateTime), 2, N'7dff543a68f932e19e30340789b7b155e069a02b7e62ab6dde3b90bc4f3e9d80')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (766, N'AltaMaterial', N'DoFJdWxdvDQ3tD0RP0EC8WJN+9nn7l2BI16c5GsWHH4=', 3, CAST(N'2020-11-15 13:50:35.000' AS DateTime), 2, N'9300154e69ec47ea6c8d94f03e531e4aff471dbe953a3b9175d4c6cb2638b1f4')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (767, N'AltaMaterial', N'DoFJdWxdvDQ3tD0RP0EC8RTDNdRH1hKrc5tos+7ntsU=', 3, CAST(N'2020-11-15 13:51:17.000' AS DateTime), 2, N'30edf585a24c76b63a73183453e9a82762a3c0ddcc81fba6d658f7c2ca20b9eb')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (768, N'AltaMaterial', N'DoFJdWxdvDQ3tD0RP0EC8bIKs7mv4oMgZnti0uhJ8n0=', 3, CAST(N'2020-11-15 13:51:30.000' AS DateTime), 2, N'34c65561c3ff00a80176972e3ce1f8da9ce490e6a58395a5121155108b836838')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (769, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 13:51:37.000' AS DateTime), 2, N'640848a3c4872ff6449f960a64a6070a025403f74f2f103c7bbf597b734fbea9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (770, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 13:51:38.000' AS DateTime), 2, N'f3c81e9eb21f38f41bda5d484684f9a000433e45187ada1eb8f22e40caf59e81')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (771, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 13:51:56.000' AS DateTime), 2, N'b2f7f8759dbf8d3530162a89dc6f1f4d9a1a9ac13d3a6a72409ffd96afa1a0a9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (772, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 13:51:56.000' AS DateTime), 2, N'b2f7f8759dbf8d3530162a89dc6f1f4d9a1a9ac13d3a6a72409ffd96afa1a0a9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (773, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 14:01:50.000' AS DateTime), 2, N'c3d2698d85fdc2947d8d3d27745d91389f53d0fee925e04b3e15f5f9ee720c97')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (774, N'AltaMaterial', N'DoFJdWxdvDQ3tD0RP0EC8RUNWO9dTrpDqM34Q1mgVfL7QQxmhsucHDx3WHWLclaU', 3, CAST(N'2020-11-15 14:02:25.000' AS DateTime), 2, N'2026a49b177fed126ce0641721fc8d7a1cc9dd59700654b6c52b701cfa0a338c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (775, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 14:19:16.000' AS DateTime), 2, N'3583184abb308a54d9a1b416523d396de8ecd3056f6347264d1d1d9984d1e379')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (776, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 14:19:48.000' AS DateTime), 2, N'4640ca86e5d8c8dd8f4dcd4fb5240dce53aa449151ecc5430a74c0e3bc516ce3')
GO
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (777, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 14:21:39.000' AS DateTime), 2, N'766c546700cfc8c23f54c880e7fc5d8bd5288141ed480ebfdc61922dce8955f0')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (778, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 14:22:07.000' AS DateTime), 2, N'04afbba4169b810ea175d7d3a021d3cf3f99859f0e6308807ab3901b5b59a027')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (779, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 14:33:56.000' AS DateTime), 2, N'd633a6d2b6ee0555cc419a922565ac63f3caa7574f5304614df178cacc248bc1')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (780, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 14:34:25.000' AS DateTime), 2, N'9707b69a71f9727b54e6e95f6f6ae4c10b92d6b7b7f3fb836cd34a48feb46948')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (781, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 14:35:28.000' AS DateTime), 2, N'7962dda8c0c01409cf1a7c942828bb1645e4a3e571d33d41044157b2714257c9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (782, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 17:21:06.000' AS DateTime), 2, N'6c9ae85b95b47ddbccbb50fc5887907423537c87401556517ada223636f80cdd')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (783, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 17:21:30.000' AS DateTime), 2, N'a7702e1adb575c853ae3cf49eacfe7829105f5ba7310803d890bf2b5a42d4cb9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (784, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 18:51:03.000' AS DateTime), 2, N'88f9be6c87c556d458281fb18d10c5cfc9fc1c8e7cb78cf1fdd89f05b13d22a7')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (785, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 18:51:20.000' AS DateTime), 2, N'52162fbfe821acf78ecc249989e356babf23a60176fead157d9e8f8355391945')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (786, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 18:51:51.000' AS DateTime), 2, N'7cdb5b19e9d1558f2273cb7dd41d58d87c5a4e8973382d9d77f2ada46d8885b9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (787, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 18:51:53.000' AS DateTime), 2, N'6079394ed753b30f2c6b3ce47d1fe50c168337c9b3109ed52aeeccb9646e25c7')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (788, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 18:55:33.000' AS DateTime), 2, N'48ea0478d76b8302d0c5727a39c509cc065f43339d97c8565f94c2eff5c78919')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (789, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 18:56:04.000' AS DateTime), 2, N'55edc4c7bb88b77b48049300b659f21684e98e8a7509d8067867a16348e45a47')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (790, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 19:05:34.000' AS DateTime), 2, N'51ed1d0d34435a35dae770dd17fa42ee928e412bab7ca7518cf3b31bfc12b59b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (791, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 19:06:03.000' AS DateTime), 2, N'25f991d0b989877e92d5f9e9a2b1cd94cc2df3269459a7b1cd6c40f32a465545')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (792, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 19:08:23.000' AS DateTime), 2, N'74140f03cbe98c886963ef8e09f9c6acd74afee64b0c3e7d8529df48608798df')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (793, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 19:08:51.000' AS DateTime), 2, N'a0c99a3bdf769c21cfa488b0bccdc4c0b07cf494d148e98c66cf90382bf1ed83')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (794, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 19:20:40.000' AS DateTime), 2, N'72eed6d02d624a337193fee7ee86b373da82b9f2e523f31fdf768269a9fe4542')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (795, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 19:21:45.000' AS DateTime), 2, N'd864e4d7094beec8c5b2ffb65cf1e1a684dea3542102f197c22a93287344ad40')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (796, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 19:23:03.000' AS DateTime), 2, N'88f9be6c87c556d458281fb18d10c5cfc9fc1c8e7cb78cf1fdd89f05b13d22a7')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (797, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 19:23:35.000' AS DateTime), 2, N'73cb4158a27e9ff4ca0af83a15f1d1c7135ba2d79f5eafac37f18aa944ff67a5')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (798, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 19:36:17.000' AS DateTime), 2, N'13e81496205ee18f729655918cea4cd8af71db0ccede58bceef8188e064085bc')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (799, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 19:36:41.000' AS DateTime), 2, N'7cbc699818d93ad0be226ba601e96d1129bd1dbf7058b13808728310a83fe334')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (800, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 19:37:56.000' AS DateTime), 2, N'de104fe4011e64b146ae6dc3c3cf83bf096d22356e895e7fed7d93adfa505f15')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (801, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 20:22:59.000' AS DateTime), 2, N'a5088f24ab59a72b214809db1be8a053ad1a45501bccfe9791db0665efb6ddea')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (802, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-15 20:25:24.000' AS DateTime), 2, N'6cc018210bfebc05b57d08543f2a997a31427b03e0b6255168acd920d743ecd9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (803, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-15 20:26:29.000' AS DateTime), 2, N'0eee192063b804211a6903cad8cde562a5960dd5d114731b9a5594dcb292fff4')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (804, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-16 12:22:29.000' AS DateTime), 2, N'30c0aeda58d70521e31be49a55e6cc0ba6fed34d7e5231b08c88c8981a9ce712')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (805, N'BajaCliente', N'3Scf0DIA6JTwjJuUHJuRQWaYk/AKfCSZvB0smrDD8f704iup9YpHYLWLq9OtFE/d', 2, CAST(N'2020-11-16 12:25:17.000' AS DateTime), 2, N'59c6d5a7eb750224a84fef1db6273c657a015c5bf4af0f984dc0888f61837bba')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (806, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-16 12:26:48.000' AS DateTime), 2, N'f5c3fc9eff16c5d6318a67b38ede6bda61633933ed987d3a70ea06ade8a266db')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (807, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-16 12:27:58.000' AS DateTime), 2, N'37796556c07fee9f33ebe2e628d1159b1da6d72a845f4e37cbe1ebc05dc8097e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (808, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-16 12:28:08.000' AS DateTime), 2, N'86b44114b46496f250ba62d9c2f3ea4dc0c0346c13cb9782b79d8d0525c189be')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (809, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-16 19:45:23.000' AS DateTime), 2, N'8e02fedc7c607ccd8c085488012ec0cfa12483e45464da893a577ef00be02d21')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (810, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-16 19:46:54.000' AS DateTime), 2, N'e92da0af8d0ea87b4e3379e46e1b70cbc26dcef8cdf2b3376eefccd67255f231')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (811, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-16 19:47:50.000' AS DateTime), 2, N'7074626c6c6ce16ab3ee1363024f4663c85e2632f44e0c4f6a8e20914034d9f5')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (812, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-16 19:48:44.000' AS DateTime), 2, N'1ad5f1fd143ea125f9d9d5519e3cbdb6814ff0d3eef39c4375df167e186b491a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (813, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-16 19:49:55.000' AS DateTime), 2, N'd2505e523c3ec1295870ae8c73a8ce5c4342cfe5aa393001b051c06877213e38')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (814, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-16 19:52:50.000' AS DateTime), 2, N'36faa737a2e3ec9c5f06418a8529bad865c84fef33cbf68ce31686e65cc3e35c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (815, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-16 19:54:38.000' AS DateTime), 2, N'779cf700f0c6fd4310152e353453cac3e07d96c63ab3c355c7e707e7d10340cc')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (816, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-16 19:55:38.000' AS DateTime), 2, N'2413b54a212386266a5bd1d6d144b24559c966e9df68ef305e22afae7200e7ff')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (817, N'ModificacionCliente', N'UpENVc6DN2sv9PInfeUPRPnNEHs+Wnz/BZA3aK+Dkzfkj0f4WSXKosFWkouudGvF5huxnlK+gK11odOKDp7TJA==', 3, CAST(N'2020-11-16 19:57:49.000' AS DateTime), 2, N'484d432ceec4af024793f14e3518306cea845d836dec72ff608e150b9a931b08')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (818, N'AltaCliente', N'Csj/JmMVP9y4eecwWSjLBDXQaJwi+eHxOs8z+r3v0lYO+GCrJfSUZJY8NgFkFfKX', 3, CAST(N'2020-11-16 19:59:42.000' AS DateTime), 2, N'ccefdf35fdb08f14aadca2865936d41a2c6fa314799b4e4e283df138f3cca7a0')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (819, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-16 20:01:30.000' AS DateTime), 2, N'a971d479c28799e6e97fa50ae5b88e7a75816688c5fb27a3d58fe2078b12afca')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (820, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-16 20:19:49.000' AS DateTime), 2, N'7f3e20f4b2b1d3458e65f98b4347f1a440163a156cdefc0e060cd6b9ba540459')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (821, N'AltaCotizacion', N'PEUoKHRI/VZQdZ+Gmr3cmKN0fee9H2CInfLVfvjEWyvIPFG3sNtbtI2PJROEbm9Ioq6qmbdye5XwgEwln1OYJg==', 3, CAST(N'2020-11-16 20:20:17.000' AS DateTime), 2, N'a58eed03b9479922f23cf8d67a2380425f4d5873f10f835032400823552bf2c3')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (822, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-16 20:27:14.000' AS DateTime), 2, N'28e9984e62ca36ac5d5c2a8649d38c89aae809a288a75096381a928f1bce9b8b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (823, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-17 19:09:10.000' AS DateTime), 2, N'73d53091ffd89746b6cd191e2af074a0473b04e97598510f95829a421463e63f')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (824, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-17 19:20:07.000' AS DateTime), 2, N'8bf7f4a5c483dd159265241a601209cceed757fb38432d558a6f1fb9d3bd2e11')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (825, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-17 21:16:35.000' AS DateTime), 2, N'2b301ca0b98cd0decf787cfaca34fcc774d1e27935083fa7e650039bc6febf91')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (826, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-17 21:20:22.000' AS DateTime), 2, N'49da17bcebd8ca1a2ab01c996bbba39f4dff8a1802d21dd879a62cdf52984b9f')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (827, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-17 21:21:06.000' AS DateTime), 2, N'78871c164b7942ac2a3c7207326ffebb426a2c47e59e9f55f66b01dd11e9bccc')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (828, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-17 21:21:09.000' AS DateTime), 2, N'71c1c45100baebbff4eb15b144dc03af1773ec6ada6e21a3fe10ba3d9d8496a7')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (829, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-17 21:28:31.000' AS DateTime), 2, N'0c4f5a3dae6b2e0dc1d614504296b684675d028444082c1d2d49b13ba5f7c872')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (830, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-17 21:30:15.000' AS DateTime), 2, N'c6b9d41635fac2e0144e3c4cb3985d853f22db272a0fbd66cc612126716ce0da')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (831, N'AceptarCotizacion', N'NcuSxTp3GgpIZgW+Uys8jZKcukQQCi1WoRHPiMcUyRuMYds3YLCEzeHuW43cRdx3ZKhd3CwfUtY+pSH3sxa+tQ==', 3, CAST(N'2020-11-17 21:30:39.000' AS DateTime), 2, N'ff148d94db35b8dfbebfaa4a6e26a0916c87e4fe09e4c827ea7a1ca8ca928f65')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (832, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-17 21:33:38.000' AS DateTime), 2, N'ce66befe4bfd6568254c86bc52309a4c81028b555756d3c640942ab98462fda5')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (833, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-17 21:33:56.000' AS DateTime), 2, N'bf2b1ba3b4f8b0d7625f6a81b0f9a760870956d42c6c5c23940589c40cf87dad')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (834, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-17 21:34:50.000' AS DateTime), 2, N'537c73a1049c0514725740572e56d4e301817b58af543c4805bc4a2f137fbf3b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (835, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-17 22:24:25.000' AS DateTime), 2, N'3698c183ad5ba5f0a01491efc1127dd89414d20aff0a872cd401d589aef8d0e3')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (836, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-17 22:25:30.000' AS DateTime), 2, N'87d6916647257c1fe5f7a9334487e2b7d64f2e7f49d69e25f05733c020d17cba')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (837, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-17 22:27:47.000' AS DateTime), 2, N'4d3e560b0725aa52558f6899fcad197328547a22c554fa808fdde3eb5bc9c1d8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (838, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-17 22:28:22.000' AS DateTime), 2, N'37e46e7889287244bfd3d1884ce313f6715388438e209acababc0a5640dcdded')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (839, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-17 22:41:51.000' AS DateTime), 2, N'1f0389cd15b50e97fc407a4ec3942972871ae4799fc3bdff4a49ed4a39da39da')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (840, N'AltaCotizacion', N'PEUoKHRI/VZQdZ+Gmr3cmKN0fee9H2CInfLVfvjEWyvIPFG3sNtbtI2PJROEbm9Ioq6qmbdye5XwgEwln1OYJg==', 3, CAST(N'2020-11-17 22:42:12.000' AS DateTime), 2, N'15607daca2fe965a0d771309ef3b5c32232276268982b9391ff7b48d4670fe72')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (841, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-17 22:43:08.000' AS DateTime), 2, N'97a1d535ac709d6f47fbc75fef29e5f2f63e1642a59453dc7b8104984f0c96fa')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (842, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-17 22:43:10.000' AS DateTime), 2, N'61cd83058d8605f865e71417c2bd2e776cf27087bb9efcc70072d4580e72d559')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (843, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-17 22:47:47.000' AS DateTime), 2, N'45a8a20bfc3963f678c9c2fdb453d8677ff86188a458b398e77c8461da653ceb')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (844, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-17 22:48:31.000' AS DateTime), 2, N'b2f7f8759dbf8d3530162a89dc6f1f4d9a1a9ac13d3a6a72409ffd96afa1a0a9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (845, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-17 22:50:43.000' AS DateTime), 2, N'1aac8950055c9d1f872ff0e6a5abad7c3f8a54cea3e76d0c8116040a607f291a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (846, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-17 22:51:06.000' AS DateTime), 2, N'b209df8797c0666676280f0dca3ee2abc16cdffe1c7cbe149f5ac390d006c653')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (847, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-17 22:59:31.000' AS DateTime), 2, N'c6a6986d3ab4daf0000216c352f1bf9d35561d19c1201b38898f28f8e1b4695d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (848, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-17 23:00:15.000' AS DateTime), 2, N'e35f2ddb42cbc82bad2906504b9b1eadbc9809a76381dd362e87ea24edaa0fb5')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (849, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 13:03:56.000' AS DateTime), 2, N'b6fa12ef9f515609a0f8c73a0938736e1ef70b6271b3ca2af66c9dc2347c76a8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (850, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 13:04:33.000' AS DateTime), 2, N'b4546cf47b170e3397569c64a9993f46031cfcece2c757ea84006a13932d79d8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (851, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 13:05:03.000' AS DateTime), 2, N'4ea5eb96472230a9388905e47fffa7c60836fd6220e6231db670d3196acb4a37')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (852, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 13:06:50.000' AS DateTime), 2, N'2f5a4baf8a9317b6ffd8634a8089b24f17c9c8469d46e962074df0677cdda761')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (853, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 13:08:14.000' AS DateTime), 2, N'30c0aeda58d70521e31be49a55e6cc0ba6fed34d7e5231b08c88c8981a9ce712')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (854, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 13:08:42.000' AS DateTime), 2, N'facec6b324368e1727153519f096ca596600c83d05b744b2fa909c24275854d7')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (855, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 13:12:59.000' AS DateTime), 2, N'bcf70a5d17ae7f711bad579932934288bf60881f97456f134682cf1384ec45e6')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (856, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 13:16:22.000' AS DateTime), 2, N'3c9d0d6eed93ca4574756e4560de6d97e3b33261a011b6a718bf4cda9128fe2b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (857, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 13:27:56.000' AS DateTime), 2, N'd77d068d91127d2bb8258fba7fb263e08a86a122c9bf6109f881c5c55b40c4a4')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (858, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 13:29:51.000' AS DateTime), 2, N'4fcfb3591ee8fd26e9837c7b841f0c915dfc91ba41f23fa1f217eded81637c58')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (859, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 13:37:17.000' AS DateTime), 2, N'9083cad37970bfe6b8ef7f2165b880fb88557da89d5021939c22791bbc12ac65')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (860, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 13:40:40.000' AS DateTime), 2, N'08b5a3ca65b1875509f1606deeecc3a3290ea44426e2183307451ec3920425f9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (861, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 13:40:47.000' AS DateTime), 2, N'0a98f2efba0913465919184887ec9a5649e3e3ef77d372a96ffd234ba95f0483')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (862, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 13:41:13.000' AS DateTime), 2, N'feb89be894b4f6a8e15778a79d0c19850313f07c969fbf22b57f48cb1b2c800d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (863, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 13:41:49.000' AS DateTime), 2, N'de3e5df24a094b81bee301fe7e8ee0fe7a1b2ee33c049ba1adb18390872d2b19')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (864, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 13:42:30.000' AS DateTime), 2, N'6a73ddb66461f09e199c3724ad3f3505bdc60a2eedfae4b3b9ed207870464b72')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (865, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 14:02:46.000' AS DateTime), 2, N'4b89ebc29cfdd41221b3e7440f96b824e3b0665e29f669427a3c9a325e890aaa')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (866, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 14:05:18.000' AS DateTime), 2, N'0dd61660cc61b2f9c480ef7f9aa5bdc9a5fdaf15a23b78e52817b9727b31b764')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (867, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 15:12:03.000' AS DateTime), 2, N'3d04d7863e585853c94c5d372ff084582a3f10bff26350e7485d9988750e6511')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (868, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 15:12:57.000' AS DateTime), 2, N'c81813a6c03ddb408fa7b806f5a40a4d6fa536e4ed81969033d2b57c79a2c94b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (869, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 15:15:13.000' AS DateTime), 2, N'82cd356ca2157e643c0c591a6ccadc8e472b2e4018044b2ed59f59926f0d4968')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (870, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 15:15:27.000' AS DateTime), 2, N'917c35fe206baf66a864cc5bf7796c3956f1c5101a7185b4fcfb86e180f08198')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (871, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 16:28:24.000' AS DateTime), 2, N'3cc143ef28c6cd2cd35227daa880a1dcf8bf10b6b51b16c501ee80c754ebbb19')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (872, N'AltaCotizacion', N'PEUoKHRI/VZQdZ+Gmr3cmKN0fee9H2CInfLVfvjEWyvIPFG3sNtbtI2PJROEbm9Ioq6qmbdye5XwgEwln1OYJg==', 3, CAST(N'2020-11-18 16:32:02.000' AS DateTime), 2, N'd2bd69754c35a7a39c058bcac2497fa14218251bc4ad56d95e35ee43b3d51453')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (873, N'AltaCotizacion', N'PEUoKHRI/VZQdZ+Gmr3cmKN0fee9H2CInfLVfvjEWysmIDjM6vAbCsNCUs1S/lhUkx3NcG4eFIhibc7lDuu70A==', 3, CAST(N'2020-11-18 16:35:11.000' AS DateTime), 2, N'53854b72b1cf9bc4048df1a36ae4cabbec60fdca3c080aec6595b13e93e55135')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (874, N'AceptarCotizacion', N'qbsOYnLJAIW0g/cYSnSJHvlO/yoEGWnTCyIshCoEPCA=', 3, CAST(N'2020-11-18 16:35:42.000' AS DateTime), 2, N'e1111b131ff7f2feae687737308490fb3c1e2645d88e7c42e5fe26144965c8e7')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (875, N'AceptarCotizacion', N'qbsOYnLJAIW0g/cYSnSJHkYqOxXpinPBjgLwkCicy8o=', 3, CAST(N'2020-11-18 16:37:59.000' AS DateTime), 2, N'df61fe0a0639de581775e127bc466d971a04cdab62573e08a4b2186d1ede030e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (876, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 16:38:26.000' AS DateTime), 2, N'cb1a904d86d33d8b55623ea611611e14e68e39e4a521ceb0ae730633231c6bf1')
GO
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (877, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 17:21:52.000' AS DateTime), 2, N'69ab01e661f950f5db4e104d1b0f1cf452601bb8cc2803ef2d387ebd2e2e4a52')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (878, N'AltaCotizacion', N'PEUoKHRI/VZQdZ+Gmr3cmKN0fee9H2CInfLVfvjEWysmIDjM6vAbCsNCUs1S/lhUkx3NcG4eFIhibc7lDuu70A==', 3, CAST(N'2020-11-18 17:22:38.000' AS DateTime), 2, N'e5271bae01d78e7a16eac4e9c8615cab0ef5e99ec8daa794aa6d98071c4b12a6')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (879, N'AceptarCotizacion', N'qbsOYnLJAIW0g/cYSnSJHmmAmb8p3wi62XQwH0ozYl8=', 3, CAST(N'2020-11-18 17:22:54.000' AS DateTime), 2, N'7963e2d0a59c46216ee30ad1f3e7fa588c7bf2ef825a03af6544f53412f10785')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (880, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 17:23:51.000' AS DateTime), 2, N'351add610348ce85eccf063cf29e5f03377757f7e5b31b9a24f63d867ceaadac')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (881, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 17:31:47.000' AS DateTime), 2, N'fbeb3d5f8bcebc31f260dce44083f7f53b16fbc6988504952e5af9e673791048')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (882, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 17:32:03.000' AS DateTime), 2, N'f86bf9b8b54df53689377dd9e79a0f790c936adebebdd64b6596c6bfa4380ad4')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (883, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 17:36:12.000' AS DateTime), 2, N'5f87d6d943d070b2eab26a6734e6d6cd90b171cef1be5ed12858f31543ae4e7e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (884, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 17:37:01.000' AS DateTime), 2, N'a5088f24ab59a72b214809db1be8a053ad1a45501bccfe9791db0665efb6ddea')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (885, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 17:45:54.000' AS DateTime), 2, N'92c214ea2e7034bb68b91596f7a8ba5ffb6a4cc9b829262f37a609bf68d10ce4')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (886, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 17:46:21.000' AS DateTime), 2, N'7613b2abe9a2ad67299a1f73dfaaac3ce94f8fe23c9c2aa62ff2cb48726cc43e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (887, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 19:05:59.000' AS DateTime), 2, N'eddde242ff76bcfe6c342fd96adac18ee67b06383388676aa56e8226b2034710')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (888, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 19:07:30.000' AS DateTime), 2, N'2e15910659af555bba4fb3b5ad02f2c0b0baa6bffab60a793e91e091e42b378d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (889, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 19:08:26.000' AS DateTime), 2, N'aa7d9ba473d9068d570d2b7d2455820b2329e8fb31cfa822f6886974977c06a0')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (890, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 19:08:45.000' AS DateTime), 2, N'1eed922e2506050b8dc735b23f4c4115302926955e09481f193f4797b4ce0f04')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (891, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 19:12:04.000' AS DateTime), 2, N'b230febb21fdfd3a845a41c215f61b36603ef6e2dc2b0537f64473b3531f091c')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (892, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 19:12:10.000' AS DateTime), 2, N'e0563f1a0f1d4ded77a1900b9d007b2a24bdb3e22f3b404ed3b370572e88584e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (893, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 19:12:28.000' AS DateTime), 2, N'69d6135bd3066436260df7d028b1ea034c8940e81b85a0bf6c177cf5c6266d62')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (894, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 19:12:35.000' AS DateTime), 2, N'19aaf5249a530f8c4241c098a7ab0c2d03b75b97a8d5e389498169bbd3a94ce6')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (895, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 19:13:51.000' AS DateTime), 2, N'faee7b52fd29bf68fac214459944367f98d8d6358474da964ba06325b53a2ca4')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (896, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 19:14:29.000' AS DateTime), 2, N'45a53d6dbd1ba3260f66bcd216b2d8b8a9578cba0242b74a2c15816f994a76c8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (897, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 19:14:31.000' AS DateTime), 2, N'66ea27df79a6ca83f637d08b3b9a81b6fa094e6ed9a73cb4f9dc7edc4d29ad43')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (898, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 19:37:31.000' AS DateTime), 2, N'4e0e673968e709cb9d9f04f6419c68aef292b9701eb79bbe331dbed913012cc8')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (899, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 19:37:42.000' AS DateTime), 2, N'22dd8541fd06a9a60d99f8a45df831c407d6716f0ec477f5e227f1567be60a4b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (900, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 19:50:48.000' AS DateTime), 2, N'93d38114d98e1d77878bbf705cfd084d5861542a361e36cac306bacee3f1f971')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (901, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 19:51:07.000' AS DateTime), 2, N'a9714f638dd484d159ecd093b8986e69f49c9871665604d766674792574b2e85')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (902, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 19:51:39.000' AS DateTime), 2, N'468e43c2ff8fb0e50d977fe353192a1debe2a62ffe42821e800fa7fa12462006')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (903, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 19:51:52.000' AS DateTime), 2, N'9cde90d8e2256cc3ff330ff8d5e425a3ad4aa984a7e408324e71489f38e05bb9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (904, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 19:52:55.000' AS DateTime), 2, N'0efa6a0952360c93c942bb636be0514df39e0177fc792de7f70273ff4dc8bd6d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (905, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 19:55:39.000' AS DateTime), 2, N'02554c82703a1ad75cf9b2ae5e697502c370ec8a8d823e36e7999323fe54c1e6')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (906, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 19:59:57.000' AS DateTime), 2, N'ea452c2ffc1e9c876b13ee020bbe18c38c049680087859e7063b98a1538fb270')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (907, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 20:00:27.000' AS DateTime), 2, N'c6b9d41635fac2e0144e3c4cb3985d853f22db272a0fbd66cc612126716ce0da')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (908, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 20:00:55.000' AS DateTime), 2, N'b712911cfd3b0b8f10526b1a698f4cecd272f79024c7dca81147e546a3b24bf1')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (909, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 20:01:08.000' AS DateTime), 2, N'0f042bcc0eabe009c2e8dd5976d2d6681aa2a221efa5fa2f36e70e37545ecf47')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (910, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 20:01:10.000' AS DateTime), 2, N'a9997cea12ea8f5aaa2c13999eea9c3b48f3cc8edb969ffebcfea71baf20c6d6')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (911, N'ErrorDVV', N'9X/7C4T5aX9Q8yxmeqMijQ==', 1, CAST(N'2020-11-18 20:01:35.000' AS DateTime), 1, N'266c7f2efc60626d91ea6262d06a76d3a32801959f4869ceba21b5833a9f155e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (912, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 20:01:39.000' AS DateTime), 2, N'1d647d4fa8b947f881477b458e9a8b2851daaf710e6aaa6ebb0c6d134c7ef807')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (913, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 20:01:46.000' AS DateTime), 2, N'b3fe762902bb298d91a1c9f5aad80eee5968dff511c7b58b10e513a3a07efff2')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (914, N'ErrorDVV', N'9X/7C4T5aX9Q8yxmeqMijQ==', 1, CAST(N'2020-11-18 20:01:59.000' AS DateTime), 1, N'fc1395bd8467d4d2a30b4b295460315a67389a1fb02446c9ad0d7ffeb74a82ca')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (915, N'ErrorDVV', N'9X/7C4T5aX9Q8yxmeqMijQ==', 1, CAST(N'2020-11-18 20:06:38.000' AS DateTime), 1, N'8a5d89505b24741a5747a7d4f07199c76be8ddc72cb2ada78010fcf41b38537a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (916, N'ErrorDVV', N'9X/7C4T5aX9Q8yxmeqMijQ==', 1, CAST(N'2020-11-18 20:07:14.000' AS DateTime), 1, N'c6f6afad4071fb09d13f5099abb1f11cb006d773ebf01c6b5f6a6238413de7b3')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (917, N'ErrorDVV', N'9X/7C4T5aX9Q8yxmeqMijQ==', 1, CAST(N'2020-11-18 20:07:43.000' AS DateTime), 1, N'9e55234c278b2b2489a275d69e5c1115efeb37fa248cd054d4e55c8d13d80d6a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (918, N'ErrorDVV', N'9X/7C4T5aX9Q8yxmeqMijQ==', 1, CAST(N'2020-11-18 20:08:15.000' AS DateTime), 1, N'9e55234c278b2b2489a275d69e5c1115efeb37fa248cd054d4e55c8d13d80d6a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (919, N'ErrorDVV', N'9X/7C4T5aX9Q8yxmeqMijQ==', 1, CAST(N'2020-11-18 20:11:22.000' AS DateTime), 1, N'2609a718ac36b06f2f6b6a57915a70e4dd9ebdc7477745058028d5d5d3c12961')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (920, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 20:11:23.000' AS DateTime), 2, N'2b3474d6ddf9a83f3c8c6171de01ef8ccb7827a489fe23133c613fa20efc7347')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (921, N'RecalculoDigitos', N'zWDy8jCgA3xzkYFMq9ILrLGWpGUY89A/DtfPeKntZehvzAG177+C6WbMsAsnhyf0', 1, CAST(N'2020-11-18 20:11:32.000' AS DateTime), 2, N'3c06ff8ba56a3757d6e25ccc3c7baa47f3f46dc81dc7de36a8b102a5614fc5ac')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (922, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 21:51:14.000' AS DateTime), 2, N'ce5846e7d01a45ae8ff36117860813e030f460929043daaf8f0994ff7a554454')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (923, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 21:52:26.000' AS DateTime), 2, N'929205b92ec4d114340e7293ae02e8496e0921aea27cad274069d6e5caa5d670')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (924, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 21:55:40.000' AS DateTime), 2, N'70e368c3facd02527c2e53f6d9dcea03ba4089fb3d5af9c2d28f3ac44c92b373')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (925, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 21:57:54.000' AS DateTime), 2, N'754ab24ecc651cac041713e85fd04419847dd6256b8d952fe758873fda44bc58')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (926, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 21:58:37.000' AS DateTime), 2, N'1225f62fc0ee00b280ccf07aa25f101738c7fe047b583ab4daa9ad78fe2f4661')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (927, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 22:05:14.000' AS DateTime), 2, N'faf4472495b6bf42c56e009e13a6b3d4f9f89fe5319d3434637f97a97544cdab')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (928, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 22:06:45.000' AS DateTime), 2, N'fad16ffe44e92f5752d17b494081f5b0fefcf363ed7c2b4081e3866e98c19b28')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (929, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 22:11:37.000' AS DateTime), 2, N'23fe988e3018745bdc07b72c0a9220ed8a522d8c2a78758852da9a8bbb5235dc')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (930, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 22:12:45.000' AS DateTime), 2, N'683f056e6d85b45b215d6e887c88d18f22e91721f8c909e743e331ce6bf5fca5')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (931, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 23:01:01.000' AS DateTime), 2, N'11abd95e68d69966b172a59f07d12a0a2c96783d2ba1aef71b342af987f9b0e4')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (932, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 23:01:41.000' AS DateTime), 2, N'd7c9a0c235100a02dbfb06a1f342cf98ad34a9f1ba967d4e84d6cac4b3e6bd56')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (933, N'ModificacionCliente', N'UpENVc6DN2sv9PInfeUPRPnNEHs+Wnz/BZA3aK+Dkzf1G+L8fF8C7/58HOJutOkpnSVnmFW9LEhisLiREqCOaQ==', 3, CAST(N'2020-11-18 23:02:03.000' AS DateTime), 2, N'7bededc286125b8471196478854a4a5af524c1116e440a674d8a3d46be5c0e35')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (934, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 23:03:58.000' AS DateTime), 2, N'5c93866664ff889a788a8444a0c8b73547240efbe42a4c19996a07c7d3ef46d9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (935, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 23:04:22.000' AS DateTime), 2, N'bd4aba6742184b346884b9a1093f31e1bfcc0a7906f30457b755f7847a520d2d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (936, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 23:04:53.000' AS DateTime), 2, N'98772e674deb421bd39706c9a800f1065493ff5991ce20c7c7d616499c6cf43a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (937, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 23:06:48.000' AS DateTime), 2, N'8031b1232e59b6bccf955c3e32f63231b7e23b31f5e60d5fff703f37cdb44988')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (938, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-18 23:19:41.000' AS DateTime), 2, N'32213c5ee52199a27fa28ce34ae0686fd599a2a7a10435ab21859bfc8fe667c9')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (939, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-18 23:23:44.000' AS DateTime), 2, N'facec6b324368e1727153519f096ca596600c83d05b744b2fa909c24275854d7')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (940, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-19 14:31:39.000' AS DateTime), 2, N'df78e017f2a610ab5e6457c57769ce23d5d39a332bda3ab7cad50d6c59b5be66')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (941, N'BackUp', N'OVlGiW0knG1EcgRD2aMQLXp6zmAMAmzzagvbMnu8g3c=', 3, CAST(N'2020-11-19 14:35:20.000' AS DateTime), 2, N'bbac2d054e83755922a2aab343f72954e096c0601570205891fc349ed533b54a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (942, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-19 14:35:28.000' AS DateTime), 2, N'e200784f5995723d4d36671d020d77be3353ff75ae55414adb71894d0eaf838d')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (943, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-19 14:42:00.000' AS DateTime), 2, N'83d0224abc41146d43563e3a2312ac0aff386ee9042f5f737a4469fdd10c0a4f')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (944, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-19 14:42:08.000' AS DateTime), 2, N'0ff0cebb84360240b96f3784bbfca6cd0711d3e3bbb8e891fe6717acfffbb51a')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (945, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-19 15:14:26.000' AS DateTime), 2, N'638e349458b0445e7ca9a33fe8065d892ff2b01acb174c99f90a4be03aa7dfea')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (946, N'BackUp', N'OVlGiW0knG1EcgRD2aMQLXp6zmAMAmzzagvbMnu8g3c=', 3, CAST(N'2020-11-19 15:15:20.000' AS DateTime), 2, N'2428013fb270def47a974d3e79552d24100a0a3f835fd6120506d9ac5a892e5e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (947, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-19 15:16:46.000' AS DateTime), 2, N'63356f76ada14458d4cf00dc48a9516da2ef606b43e73aba3d30324a0031061b')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (948, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-19 15:17:15.000' AS DateTime), 2, N'73cb4158a27e9ff4ca0af83a15f1d1c7135ba2d79f5eafac37f18aa944ff67a5')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (949, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-19 15:27:17.000' AS DateTime), 2, N'3e4fd87b9a4d17291b6c9f6cc7a0b94dd3d9ad7e9a97889c3ec48aa7df22dacc')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (950, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-19 15:27:29.000' AS DateTime), 2, N'0fa5df3746f1f76e489c6a609735d6636d000b7e81c631f2196aff4402623f49')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (951, N'Login', N'1XiMC3KzT8kV7TvBdw+p1Q==', 3, CAST(N'2020-11-19 15:28:41.000' AS DateTime), 2, N'7d5fe98eb3476945d9ff772fa523e6ec1ab8cc3e46384d1a443122f07992057e')
INSERT [dbo].[Bitacora] ([ID], [Accion], [Descripcion], [ID_Criticidad], [FechaHora], [U_id], [DVH]) VALUES (952, N'Logout', N'fxAAmH0aDeEU3tKK9uFm+Q==', 3, CAST(N'2020-11-19 15:29:04.000' AS DateTime), 2, N'a0c99a3bdf769c21cfa488b0bccdc4c0b07cf494d148e98c66cf90382bf1ed83')
SET IDENTITY_INSERT [dbo].[Bitacora] OFF
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([ID], [C_nombre], [C_apellido], [C_direccion], [C_fechanac], [C_mail], [C_telefono], [C_DNI], [C_baja], [DVH]) VALUES (7, N'PgisHnP13vFeSb7dVxolmg==', N'LfoKlelTannGri5hkSwhbA==', N'Capello 1125', CAST(N'2020-11-14' AS Date), N'jGzLi9OGsdUdDIKfIwBht6r/+963vcmqP5pQS1lOn68=', N'1532326551', N'39558418', 0, N'9282ca80ba862ba6eb719c35087f6e76c99ea4b3a56ee578cd12a071652c50e7')
INSERT [dbo].[Clientes] ([ID], [C_nombre], [C_apellido], [C_direccion], [C_fechanac], [C_mail], [C_telefono], [C_DNI], [C_baja], [DVH]) VALUES (8, N'pHc6QJxwWtxobpjQAZx96A==', N'qeiDvOfQyXBPQWPTvC1rlw==', N'Calle Falsa 123', CAST(N'2020-11-15' AS Date), N'C26Hdgafj7GPnOy0Sbk6emHXrcVtrXsJwJSpd5OxIvg=', N'1523562312', N'36569854', 0, N'07a4ea2dc08a0c3ad37f4cd09dd280addc2eb3c6d81565b1a470329f6bd5a561')
INSERT [dbo].[Clientes] ([ID], [C_nombre], [C_apellido], [C_direccion], [C_fechanac], [C_mail], [C_telefono], [C_DNI], [C_baja], [DVH]) VALUES (9, N'pHc6QJxwWtxobpjQAZx96A==', N'hG3lSpdtEqPVYoWmmx6BsA==', N'Falsa 1234', CAST(N'2000-02-01' AS Date), N'/rn89LeZ98cIt2M8gq5UZ8zdU8903maNa9/jdCXWdtI=', N'1523689562', N'12345678', 0, N'0ac939d21ba8515e8bbb894ca3af40d19c49374bbb2a286396193f674653920f')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
SET IDENTITY_INSERT [dbo].[Colores] ON 

INSERT [dbo].[Colores] ([ID], [C_nombre]) VALUES (1, N'G.Crespoasda')
INSERT [dbo].[Colores] ([ID], [C_nombre]) VALUES (1001, N'G.Crespo')
SET IDENTITY_INSERT [dbo].[Colores] OFF
SET IDENTITY_INSERT [dbo].[Controles] ON 

INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (1, 1, N'lblemp')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (3, 1, N'lblnombreusu')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (4, 1, N'lblidioma')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (5, 1, N'gbdatos')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (6, 1, N'btnconfirmar')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (7, 1, N'btncancelar')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (8, 1, N'Alta_Usuario')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (10, 2, N'gbfiltro')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (11, 2, N'lblfiltro')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (15, 2, N'btnbuscar')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (16, 2, N'btnclean')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (17, 2, N'gbusuarios')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (18, 2, N'btnModificar')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (19, 2, N'btnBorrar')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (20, 2, N'btncerrar')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (21, 2, N'Mostrar_Usuario')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (22, 3, N'gbUsuSelect')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (23, 3, N'lblusu')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (24, 3, N'gbModificar')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (25, 3, N'lblNombre')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (26, 3, N'lblNuevaPass')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (27, 3, N'lblRepetirPass')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (28, 3, N'lblIdioma')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (29, 3, N'btnConfirmar')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (30, 3, N'btnCancelar')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (31, 3, N'Mod_Usuario')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (32, 4, N'salirToolStripMenuItem1')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (33, 4, N'archivoToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (34, 4, N'CerrarSesionToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (35, 4, N'cambiarContraseñaToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (36, 4, N'altaUsuarioToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (37, 4, N'MostrarUsuariosToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (38, 4, N'familiasToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (39, 4, N'usuariosToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (40, 4, N'bitacoraToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (41, 4, N'empleadosToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (42, 4, N'altaToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (43, 4, N'modificarToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (44, 4, N'asignarToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (45, 4, N'visualizarToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (46, 4, N'permisosToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (47, 4, N'asignarToolStripMenuItem1')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (48, 4, N'visualizarToolStripMenuItem1')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (49, 4, N'clientesToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (50, 4, N'altaToolStripMenuItem2')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (51, 4, N'listarToolStripMenuItem1')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (52, 4, N'cotizacionesToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (53, 4, N'nuevoToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (54, 4, N'pedidosToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (55, 4, N'filamentosToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (56, 4, N'altaToolStripMenuItem1')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (57, 4, N'listarToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (58, 5, N'gbpass')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (59, 5, N'lblpass')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (60, 5, N'lblrepass')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (61, 5, N'btnconfirm')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (62, 5, N'btncancelar')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (63, 5, N'Cambiar_Contraseña')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (64, 6, N'gbfiltro')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (65, 6, N'rbFecha')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (66, 6, N'rbCriticidad')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (67, 6, N'rbtexto')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (68, 6, N'lbldesde')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (70, 6, N'lblhasta')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (71, 6, N'btnbuscar')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (72, 6, N'btnclean')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (73, 6, N'gbbitacora')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (74, 6, N'btnRecalcular')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (75, 6, N'btnrestore')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (76, 6, N'btncancelar')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (77, 6, N'Error_Base')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (78, 4, N'idiomaToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (79, 4, N'españolToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (80, 4, N'inglesToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (81, 4, N'gestionarPedidosToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (82, 4, N'gestionarCotizaionesToolStripMenuItem')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (83, 7, N'gbempleado')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (84, 7, N'lblnombre')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (85, 7, N'lblapellido')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (86, 7, N'lblfecha')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (87, 7, N'lbldirec')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (88, 7, N'lblDNI')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (89, 7, N'lblmail')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (90, 7, N'lblcontacto')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (91, 7, N'btnconfirmar')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (92, 7, N'btncancelar')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (93, 7, N'Alta_Empleado')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (94, 8, N'lblarchivo')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (95, 8, N'btnrestore')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (96, 8, N'btncancelar')
INSERT [dbo].[Controles] ([ID], [F_id], [Nombre]) VALUES (97, 8, N'Restore')
SET IDENTITY_INSERT [dbo].[Controles] OFF
SET IDENTITY_INSERT [dbo].[Cotizaciones] ON 

INSERT [dbo].[Cotizaciones] ([ID], [E_ID], [C_ID], [C_preciofinal], [C_ruta], [C_Fecha], [C_Detalle]) VALUES (3, 2, 7, N'596', N'C:\Users\gonza\Desktop\Cubo.stl', CAST(N'2020-11-17' AS Date), N'Hola que tal')
INSERT [dbo].[Cotizaciones] ([ID], [E_ID], [C_ID], [C_preciofinal], [C_ruta], [C_Fecha], [C_Detalle]) VALUES (4, 2, 7, N'596', N'C:\Users\gonza\AppData\Local\Programs\Microsoft VS Code\Code.exe', CAST(N'2020-11-17' AS Date), N'asd')
INSERT [dbo].[Cotizaciones] ([ID], [E_ID], [C_ID], [C_preciofinal], [C_ruta], [C_Fecha], [C_Detalle]) VALUES (5, 2, 7, N'512', N'C:\Users\gonza\Desktop\2020-11-11 15-23-22.mp4', CAST(N'2020-11-17' AS Date), N'qwe')
INSERT [dbo].[Cotizaciones] ([ID], [E_ID], [C_ID], [C_preciofinal], [C_ruta], [C_Fecha], [C_Detalle]) VALUES (6, 2, 7, N'800', N'C:\Users\gonza\Desktop\CV Gonzalo Crespo Del Toro.pdf', CAST(N'2020-11-18' AS Date), N'En verde')
INSERT [dbo].[Cotizaciones] ([ID], [E_ID], [C_ID], [C_preciofinal], [C_ruta], [C_Fecha], [C_Detalle]) VALUES (7, 2, 8, N'340', N'C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\Common7\IDE\devenv.exe', CAST(N'2020-11-18' AS Date), N'5415')
INSERT [dbo].[Cotizaciones] ([ID], [E_ID], [C_ID], [C_preciofinal], [C_ruta], [C_Fecha], [C_Detalle]) VALUES (8, 2, 8, N'740', N'C:\Users\gonza\Desktop\Copia de Lote_de_pruebas_TD.xlsx', CAST(N'2020-11-18' AS Date), N'En verde')
SET IDENTITY_INSERT [dbo].[Cotizaciones] OFF
SET IDENTITY_INSERT [dbo].[Criticidad] ON 

INSERT [dbo].[Criticidad] ([ID], [Descripcion]) VALUES (1, N'Alta')
INSERT [dbo].[Criticidad] ([ID], [Descripcion]) VALUES (2, N'Media')
INSERT [dbo].[Criticidad] ([ID], [Descripcion]) VALUES (3, N'Baja')
SET IDENTITY_INSERT [dbo].[Criticidad] OFF
INSERT [dbo].[DigitoVerificadorVertical] ([Tabla], [DVV]) VALUES (N'Bitacora', N'bf96e3d9212698baf86fcd62cd7adea30951b69d381ed4746746b594855ebabe')
INSERT [dbo].[DigitoVerificadorVertical] ([Tabla], [DVV]) VALUES (N'Clientes', N'a3a4d3dabcb8f8e52c03050053f431665a7923af1452d499894966c0e69da05f')
INSERT [dbo].[DigitoVerificadorVertical] ([Tabla], [DVV]) VALUES (N'Usuarios', N'1ed305f866fe73a059e31ad5258b1f4e690b73053cabfc00c1e211df176d741c')
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([ID], [E_nombre], [E_apellido], [E_DNI], [E_fechanac], [E_mail], [E_direccion], [E_telefono]) VALUES (1, N'Sistema', N'Sistema', N'0', N'1/1/1', N'Sistema', N'Sistema', N'Sistema')
INSERT [dbo].[Empleados] ([ID], [E_nombre], [E_apellido], [E_DNI], [E_fechanac], [E_mail], [E_direccion], [E_telefono]) VALUES (2, N'Gonzalo', N'Crespo', N'39558417', N'01/04/1996', N'Gonzalo.com', N'Hola', N'42565214')
INSERT [dbo].[Empleados] ([ID], [E_nombre], [E_apellido], [E_DNI], [E_fechanac], [E_mail], [E_direccion], [E_telefono]) VALUES (3, N'Gonzalo', N'Del Toro', N'39-558-417', N'8/10/2020 00:00:00', N'gonzalocrespodeltoro@gmail.com', N'casa', N'123456789')
INSERT [dbo].[Empleados] ([ID], [E_nombre], [E_apellido], [E_DNI], [E_fechanac], [E_mail], [E_direccion], [E_telefono]) VALUES (4, N'Damian', N'Suare Sanche', N'39-556-854', N'8/10/2020 00:00:00', N'hasgdjahgsd@akjshdka', N'Donde quiero', N'1234565456')
INSERT [dbo].[Empleados] ([ID], [E_nombre], [E_apellido], [E_DNI], [E_fechanac], [E_mail], [E_direccion], [E_telefono]) VALUES (5, N'Damian', N'Forte', N'12-332-122', N'1/2/1990 00:00:00', N'Hola@hola.com', N'Falsa 123', N'123456')
INSERT [dbo].[Empleados] ([ID], [E_nombre], [E_apellido], [E_DNI], [E_fechanac], [E_mail], [E_direccion], [E_telefono]) VALUES (6, N'Ricardo', N'Arjona', N'20321545', N'7/2/1996 00:00:00', N'Ricardito@hotmail.com', N'False 123456', N'15324566544')
SET IDENTITY_INSERT [dbo].[Empleados] OFF
SET IDENTITY_INSERT [dbo].[Estados] ON 

INSERT [dbo].[Estados] ([ID], [E_estado]) VALUES (1, N'Pendiente')
INSERT [dbo].[Estados] ([ID], [E_estado]) VALUES (2, N'En Proceso')
INSERT [dbo].[Estados] ([ID], [E_estado]) VALUES (3, N'Terminado')
SET IDENTITY_INSERT [dbo].[Estados] OFF
SET IDENTITY_INSERT [dbo].[Formularios] ON 

INSERT [dbo].[Formularios] ([ID], [Nombre]) VALUES (1, N'AltaUsu')
INSERT [dbo].[Formularios] ([ID], [Nombre]) VALUES (2, N'MostrarUsu')
INSERT [dbo].[Formularios] ([ID], [Nombre]) VALUES (3, N'ModUsu')
INSERT [dbo].[Formularios] ([ID], [Nombre]) VALUES (4, N'Menu')
INSERT [dbo].[Formularios] ([ID], [Nombre]) VALUES (5, N'CambiarPass')
INSERT [dbo].[Formularios] ([ID], [Nombre]) VALUES (6, N'Bitacora')
INSERT [dbo].[Formularios] ([ID], [Nombre]) VALUES (7, N'AltaEmp')
INSERT [dbo].[Formularios] ([ID], [Nombre]) VALUES (8, N'Restore')
SET IDENTITY_INSERT [dbo].[Formularios] OFF
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 1, N'Empleado')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 1, N'Employee')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 3, N'Nombre Usu.')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 3, N'User Name')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 4, N'Idioma')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 4, N'Language')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 5, N'Datos de usuario')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 5, N'User data')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 6, N'Confirmar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 6, N'Confirm')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 7, N'Cancelar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 7, N'Cancel')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 8, N'Nuevo Usuario')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 8, N'New User')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 10, N'Filtro')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 10, N'Filter')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 11, N'Filtrar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 41, N'Empleados')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 41, N'Employees')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 42, N'Alta')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 42, N'New')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 43, N'Listar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 43, N'List')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 44, N'Asignar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 44, N'Assign')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 41, N'Empleados')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 41, N'employees')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 41, N'Empleados')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 41, N'Empleados')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 45, N'Visualizar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 45, N'Visualize')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 78, N'Idioma')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 78, N'Languague')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 79, N'Español')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 79, N'Spanish')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 80, N'Ingles')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 80, N'English')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 81, N'Gestionar Pedidos')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 81, N'Manage Orders')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 82, N'Gestionar Cotizaciones')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 82, N'Manage Quotes')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 83, N'Nuevo Empleado')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 83, N'New Employee')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 84, N'Nombre')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 84, N'Name')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 85, N'Apellido')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 85, N'Last Name')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 86, N'Fecha Nac.')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 86, N'Bith. Date')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 87, N'Direccion')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 87, N'Adress')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 88, N'DNI')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 88, N'DNI')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 89, N'Email')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 89, N'Email')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 90, N'Contacto')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 90, N'Contact')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 91, N'Confirmar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 91, N'Confirm')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 92, N'Cancelar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 92, N'Cancel')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 93, N'Alta Empleado')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 93, N'New Employee')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 94, N'Archivo')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 94, N'File')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 95, N'Realizar Restore')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 95, N'Restore')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 96, N'Cancelar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 96, N'Cancel')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 97, N'Restaurar Backup')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 97, N'Restore Backup')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 11, N'Filter')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 15, N'Buscar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 15, N'Find')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 16, N'Limpiar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 16, N'Clear')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 17, N'Usuarios')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 17, N'Users')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 18, N'Modificar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 18, N'Alter')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 19, N'Borrar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 19, N'Delete')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 20, N'Cerrar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 20, N'Close')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 21, N'Mostrar Usuarios')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 21, N'Users List')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 22, N'Usuario Seleccionado')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 22, N'Selected User')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 23, N'Usuario')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 23, N'User')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 24, N'Modificar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 24, N'Alter')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 25, N'Nombre')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 25, N'User Name')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 26, N'Nueva Pass')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 26, N'New Pass')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 27, N'Repetir Pass')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 27, N'Repeat Pass')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 28, N'Idioma')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 28, N'Language')
GO
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 29, N'Confirmar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 29, N'Confirm')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 30, N'Cancelar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 30, N'Cancel')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 31, N'Modificar Usuario')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 31, N'Alter User')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 32, N'Salir')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 32, N'Exit')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 33, N'Archivo')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 33, N'Archive')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 34, N'Cerrar Sesion')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 34, N'Sign out')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 35, N'Cambiar contraseña')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 35, N'Change Password')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 36, N'Alta')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 36, N'New')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 37, N'Listar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 37, N'List')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 39, N'Usuarios')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 39, N'Users')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 40, N'Bitacora')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 40, N'History')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 38, N'Familias')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 38, N'Families')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 46, N'Patente')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 46, N'Patent')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 47, N'Asignar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 47, N'Assign')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 48, N'Visualizar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 48, N'Visualize')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 49, N'Clientes')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 49, N'Clients')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 50, N'Alta')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 50, N'New')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 51, N'Listar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 51, N'List')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 52, N'Cotizaciones')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 52, N'Quotes')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 53, N'Nuevo')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 53, N'New')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 54, N'Pedidos')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 54, N'Orders')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 55, N'Filamentos')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 55, N'Filaments')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 56, N'Alta')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 56, N'New')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 57, N'Listar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 57, N'List')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 58, N'Nueva Contraseña')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 58, N'New Password')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 59, N'Contraseña')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 59, N'Password')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 60, N'Rep.Contraseña')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 60, N'Rep.Password')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 61, N'Confirmar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 61, N'Confirm')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 62, N'Cancelar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 62, N'Cancel')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 63, N'Cambiar Contraseña')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 63, N'Change Password')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 64, N'Filtro')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 64, N'Filter')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 65, N'Fecha')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 65, N'Date')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 66, N'Criticidad')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 66, N'Criticality')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 67, N'Texto')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 67, N'Text')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 68, N'Desde')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 68, N'From')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 70, N'Hasta')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 70, N'To')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 71, N'Filtrar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 71, N'Filter')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 72, N'Limpiar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 72, N'Clear')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 73, N'Bitacora')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 73, N'History')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 74, N'Recalcular Digitos')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 74, N'Recalculate Digits')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 75, N'Realizar restore')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 75, N'Restore')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 76, N'Cancelar')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 76, N'Cancel')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (1, 77, N'Administrador')
INSERT [dbo].[Idioma_Controles] ([I_id], [C_id], [Texto]) VALUES (2, 77, N'Manager')
SET IDENTITY_INSERT [dbo].[Idiomas] ON 

INSERT [dbo].[Idiomas] ([ID], [Idioma]) VALUES (1, N'Español')
INSERT [dbo].[Idiomas] ([ID], [Idioma]) VALUES (2, N'Ingles')
SET IDENTITY_INSERT [dbo].[Idiomas] OFF
SET IDENTITY_INSERT [dbo].[Pedidos] ON 

INSERT [dbo].[Pedidos] ([ID], [C_id], [E_id], [P_Fecha]) VALUES (1, 4, 3, CAST(N'2020-11-17' AS Date))
INSERT [dbo].[Pedidos] ([ID], [C_id], [E_id], [P_Fecha]) VALUES (2, 5, 1, CAST(N'2020-11-17' AS Date))
INSERT [dbo].[Pedidos] ([ID], [C_id], [E_id], [P_Fecha]) VALUES (3, 6, 3, CAST(N'2020-11-18' AS Date))
INSERT [dbo].[Pedidos] ([ID], [C_id], [E_id], [P_Fecha]) VALUES (4, 7, 1, CAST(N'2020-11-18' AS Date))
INSERT [dbo].[Pedidos] ([ID], [C_id], [E_id], [P_Fecha]) VALUES (5, 8, 1, CAST(N'2020-11-18' AS Date))
SET IDENTITY_INSERT [dbo].[Pedidos] OFF
SET IDENTITY_INSERT [dbo].[Tipo_Filamento] ON 

INSERT [dbo].[Tipo_Filamento] ([ID], [TF_tipo], [TF_Precio]) VALUES (1, N'PLA', 1200)
INSERT [dbo].[Tipo_Filamento] ([ID], [TF_tipo], [TF_Precio]) VALUES (2, N'Flex', 3000)
INSERT [dbo].[Tipo_Filamento] ([ID], [TF_tipo], [TF_Precio]) VALUES (3, N'ABS', 2000)
INSERT [dbo].[Tipo_Filamento] ([ID], [TF_tipo], [TF_Precio]) VALUES (4, N'PLA GRILLON', 2000)
SET IDENTITY_INSERT [dbo].[Tipo_Filamento] OFF
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([ID], [Nombre], [Pass], [Contador], [Bloqueado], [Emp_id], [Idioma_id], [DVH]) VALUES (1, N'Sistema', N'Sistema', 0, 0, 1, 1, N'a0bfc677ee874e5a894d98dec84817ff1042edd5952d69bee6e7409b43d0ac70')
INSERT [dbo].[Usuarios] ([ID], [Nombre], [Pass], [Contador], [Bloqueado], [Emp_id], [Idioma_id], [DVH]) VALUES (2, N'VDLKJPKoTIp9tDmkpg3fFw==', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0, 0, 2, 2, N'e75f994dd48ef1799d6fcb0d4a72e51dd2e8ca6f64d8e58ada14831dfbb05162')
INSERT [dbo].[Usuarios] ([ID], [Nombre], [Pass], [Contador], [Bloqueado], [Emp_id], [Idioma_id], [DVH]) VALUES (4, N'mdqDBlzCkHMenNJ4o/8F/Q==', N'aedf978a7c5f5885aa9e427f038e7856a3da56af48db20cbee5d457088f0585d', 0, 0, 3, 1, N'47ace07521c4881d51396fb0250e838cfd1ebe7684f51651ec957e5943c72460')
INSERT [dbo].[Usuarios] ([ID], [Nombre], [Pass], [Contador], [Bloqueado], [Emp_id], [Idioma_id], [DVH]) VALUES (5, N'ZdJqvFYTVEcBZgvQlMCyYg==', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0, 0, 4, 2, N'672848ebfbfec0c00c2445001b604d519e650bf7fb7deef8a4a5a0da4c72f0a4')
INSERT [dbo].[Usuarios] ([ID], [Nombre], [Pass], [Contador], [Bloqueado], [Emp_id], [Idioma_id], [DVH]) VALUES (6, N'dLa+MQuYqjhAK6xepz9sSw==', N'ce1458bbe2de221394705d2d150a8285ccfaa2ebf99c21afe774fd01636605dc', 0, 0, 6, 1, N'0267822e38e938bbc31dba148cdef4b8088277de426d00a09aee00a301082781')
INSERT [dbo].[Usuarios] ([ID], [Nombre], [Pass], [Contador], [Bloqueado], [Emp_id], [Idioma_id], [DVH]) VALUES (7, N'paYFPnKHu5slOpjXY9juTw==', N'83f2705a9d2ee2857f9f6702d938d10460c1d1d9efed6cb80e8e4e822b4f8151', 0, 0, 5, 2, N'fb13b867817e9f44e515fd4e56169da5c3f9db7c22311ed914bc04554bb8aaa0')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
ALTER TABLE [dbo].[Bitacora]  WITH CHECK ADD  CONSTRAINT [FK_Bitacora_Criticidad] FOREIGN KEY([ID_Criticidad])
REFERENCES [dbo].[Criticidad] ([ID])
GO
ALTER TABLE [dbo].[Bitacora] CHECK CONSTRAINT [FK_Bitacora_Criticidad]
GO
ALTER TABLE [dbo].[Bitacora]  WITH CHECK ADD  CONSTRAINT [FK_Bitacora_Usuarios] FOREIGN KEY([U_id])
REFERENCES [dbo].[Usuarios] ([ID])
GO
ALTER TABLE [dbo].[Bitacora] CHECK CONSTRAINT [FK_Bitacora_Usuarios]
GO
ALTER TABLE [dbo].[Controles]  WITH CHECK ADD  CONSTRAINT [FK_Controles_Formularios] FOREIGN KEY([F_id])
REFERENCES [dbo].[Formularios] ([ID])
GO
ALTER TABLE [dbo].[Controles] CHECK CONSTRAINT [FK_Controles_Formularios]
GO
ALTER TABLE [dbo].[Cotizaciones]  WITH CHECK ADD  CONSTRAINT [FK_Cotizaciones_Clientes] FOREIGN KEY([C_ID])
REFERENCES [dbo].[Clientes] ([ID])
GO
ALTER TABLE [dbo].[Cotizaciones] CHECK CONSTRAINT [FK_Cotizaciones_Clientes]
GO
ALTER TABLE [dbo].[Cotizaciones]  WITH CHECK ADD  CONSTRAINT [FK_Cotizaciones_Empleados] FOREIGN KEY([E_ID])
REFERENCES [dbo].[Empleados] ([ID])
GO
ALTER TABLE [dbo].[Cotizaciones] CHECK CONSTRAINT [FK_Cotizaciones_Empleados]
GO
ALTER TABLE [dbo].[Detalle_Venta]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Venta_Productos] FOREIGN KEY([P_id])
REFERENCES [dbo].[Productos] ([ID])
GO
ALTER TABLE [dbo].[Detalle_Venta] CHECK CONSTRAINT [FK_Detalle_Venta_Productos]
GO
ALTER TABLE [dbo].[Detalle_Venta]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Venta_Ventas] FOREIGN KEY([V_id])
REFERENCES [dbo].[Ventas] ([ID])
GO
ALTER TABLE [dbo].[Detalle_Venta] CHECK CONSTRAINT [FK_Detalle_Venta_Ventas]
GO
ALTER TABLE [dbo].[Fam_Pat]  WITH CHECK ADD  CONSTRAINT [FK_Fam_Pat_Familias] FOREIGN KEY([F_id])
REFERENCES [dbo].[Familias] ([ID])
GO
ALTER TABLE [dbo].[Fam_Pat] CHECK CONSTRAINT [FK_Fam_Pat_Familias]
GO
ALTER TABLE [dbo].[Fam_Pat]  WITH CHECK ADD  CONSTRAINT [FK_Fam_Pat_Patentes] FOREIGN KEY([P_id])
REFERENCES [dbo].[Patentes] ([ID])
GO
ALTER TABLE [dbo].[Fam_Pat] CHECK CONSTRAINT [FK_Fam_Pat_Patentes]
GO
ALTER TABLE [dbo].[Filamentos]  WITH CHECK ADD  CONSTRAINT [FK_Filamentos_Colores] FOREIGN KEY([C_id])
REFERENCES [dbo].[Colores] ([ID])
GO
ALTER TABLE [dbo].[Filamentos] CHECK CONSTRAINT [FK_Filamentos_Colores]
GO
ALTER TABLE [dbo].[Filamentos]  WITH CHECK ADD  CONSTRAINT [FK_Filamentos_Tipo_Filamento] FOREIGN KEY([T_id])
REFERENCES [dbo].[Tipo_Filamento] ([ID])
GO
ALTER TABLE [dbo].[Filamentos] CHECK CONSTRAINT [FK_Filamentos_Tipo_Filamento]
GO
ALTER TABLE [dbo].[Idioma_Controles]  WITH CHECK ADD  CONSTRAINT [FK_Idioma_Controles_Controles] FOREIGN KEY([C_id])
REFERENCES [dbo].[Controles] ([ID])
GO
ALTER TABLE [dbo].[Idioma_Controles] CHECK CONSTRAINT [FK_Idioma_Controles_Controles]
GO
ALTER TABLE [dbo].[Idioma_Controles]  WITH CHECK ADD  CONSTRAINT [FK_Idioma_Controles_Idiomas] FOREIGN KEY([I_id])
REFERENCES [dbo].[Idiomas] ([ID])
GO
ALTER TABLE [dbo].[Idioma_Controles] CHECK CONSTRAINT [FK_Idioma_Controles_Idiomas]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Cotizaciones] FOREIGN KEY([C_id])
REFERENCES [dbo].[Cotizaciones] ([ID])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Cotizaciones]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Estados] FOREIGN KEY([E_id])
REFERENCES [dbo].[Estados] ([ID])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Estados]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Filamentos] FOREIGN KEY([F_id])
REFERENCES [dbo].[Filamentos] ([ID])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Filamentos]
GO
ALTER TABLE [dbo].[Usu_Fam]  WITH CHECK ADD  CONSTRAINT [FK_Usu_Fam_Familias] FOREIGN KEY([F_id])
REFERENCES [dbo].[Familias] ([ID])
GO
ALTER TABLE [dbo].[Usu_Fam] CHECK CONSTRAINT [FK_Usu_Fam_Familias]
GO
ALTER TABLE [dbo].[Usu_Fam]  WITH CHECK ADD  CONSTRAINT [FK_Usu_Fam_Usuarios] FOREIGN KEY([U_id])
REFERENCES [dbo].[Usuarios] ([ID])
GO
ALTER TABLE [dbo].[Usu_Fam] CHECK CONSTRAINT [FK_Usu_Fam_Usuarios]
GO
ALTER TABLE [dbo].[Usu_Pat]  WITH CHECK ADD  CONSTRAINT [FK_Usu_Pat_Patentes] FOREIGN KEY([P_id])
REFERENCES [dbo].[Patentes] ([ID])
GO
ALTER TABLE [dbo].[Usu_Pat] CHECK CONSTRAINT [FK_Usu_Pat_Patentes]
GO
ALTER TABLE [dbo].[Usu_Pat]  WITH CHECK ADD  CONSTRAINT [FK_Usu_Pat_Usuarios] FOREIGN KEY([U_id])
REFERENCES [dbo].[Usuarios] ([ID])
GO
ALTER TABLE [dbo].[Usu_Pat] CHECK CONSTRAINT [FK_Usu_Pat_Usuarios]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Empleados] FOREIGN KEY([Emp_id])
REFERENCES [dbo].[Empleados] ([ID])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Empleados]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Idiomas] FOREIGN KEY([Idioma_id])
REFERENCES [dbo].[Idiomas] ([ID])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Idiomas]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Clientes] FOREIGN KEY([C_id])
REFERENCES [dbo].[Clientes] ([ID])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Clientes]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Empleados] FOREIGN KEY([E_id])
REFERENCES [dbo].[Empleados] ([ID])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Empleados]
GO
