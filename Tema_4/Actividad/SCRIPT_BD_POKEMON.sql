CREATE DATABASE Pokemon;
GO
USE Pokemon;
GO
/****** Object:  Table [dbo].[efecto_secundario]    Script Date: 24/01/2023 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[efecto_secundario](
	[id_efecto_secundario] [int] NOT NULL,
	[efecto_secundario] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_efecto_secundario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estadisticas_base]    Script Date: 24/01/2023 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estadisticas_base](
	[numero_pokedex] [int] NOT NULL,
	[ps] [int] NOT NULL,
	[ataque] [int] NOT NULL,
	[defensa] [int] NOT NULL,
	[especial] [int] NOT NULL,
	[velocidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[numero_pokedex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evoluciona_de]    Script Date: 24/01/2023 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evoluciona_de](
	[pokemon_evolucionado] [int] NOT NULL,
	[pokemon_origen] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pokemon_evolucionado] ASC,
	[pokemon_origen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[forma_aprendizaje]    Script Date: 24/01/2023 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[forma_aprendizaje](
	[id_forma_aprendizaje] [int] NOT NULL,
	[id_tipo_aprendizaje] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_forma_aprendizaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[forma_evolucion]    Script Date: 24/01/2023 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[forma_evolucion](
	[id_forma_evolucion] [int] NOT NULL,
	[tipo_evolucion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_forma_evolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MO]    Script Date: 24/01/2023 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MO](
	[id_forma_aprendizaje] [int] NOT NULL,
	[MO] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_forma_aprendizaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movimiento]    Script Date: 24/01/2023 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movimiento](
	[id_movimiento] [int] NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[potencia] [int] NOT NULL,
	[precision_mov] [int] NOT NULL,
	[descripcion] [varchar](500) NOT NULL,
	[pp] [int] NOT NULL,
	[id_tipo] [int] NOT NULL,
	[prioridad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_movimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movimiento_efecto_secundario]    Script Date: 24/01/2023 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movimiento_efecto_secundario](
	[id_movimiento] [int] NOT NULL,
	[id_efecto_secundario] [int] NOT NULL,
	[probabilidad] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_movimiento] ASC,
	[id_efecto_secundario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MT]    Script Date: 24/01/2023 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MT](
	[id_forma_aprendizaje] [int] NOT NULL,
	[MT] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_forma_aprendizaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nivel_aprendizaje]    Script Date: 24/01/2023 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nivel_aprendizaje](
	[id_forma_aprendizaje] [int] NOT NULL,
	[nivel] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_forma_aprendizaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nivel_evolucion]    Script Date: 24/01/2023 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nivel_evolucion](
	[id_forma_evolucion] [int] NOT NULL,
	[nivel] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_forma_evolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[piedra]    Script Date: 24/01/2023 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[piedra](
	[id_forma_evolucion] [int] NOT NULL,
	[id_tipo_piedra] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_forma_evolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pokemon]    Script Date: 24/01/2023 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pokemon](
	[numero_pokedex] [int] NOT NULL,
	[nombre] [varchar](15) NOT NULL,
	[peso] [float] NOT NULL,
	[altura] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[numero_pokedex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pokemon_forma_evolucion]    Script Date: 24/01/2023 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pokemon_forma_evolucion](
	[numero_pokedex] [int] NOT NULL,
	[id_forma_evolucion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[numero_pokedex] ASC,
	[id_forma_evolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pokemon_movimiento_forma]    Script Date: 24/01/2023 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pokemon_movimiento_forma](
	[numero_pokedex] [int] NOT NULL,
	[id_movimiento] [int] NOT NULL,
	[id_forma_aprendizaje] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[numero_pokedex] ASC,
	[id_movimiento] ASC,
	[id_forma_aprendizaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pokemon_tipo]    Script Date: 24/01/2023 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pokemon_tipo](
	[numero_pokedex] [int] NOT NULL,
	[id_tipo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[numero_pokedex] ASC,
	[id_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo]    Script Date: 24/01/2023 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo](
	[id_tipo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](10) NOT NULL,
	[id_tipo_ataque] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_ataque]    Script Date: 24/01/2023 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_ataque](
	[id_tipo_ataque] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](8) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_ataque] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_evolucion]    Script Date: 24/01/2023 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_evolucion](
	[id_tipo_evolucion] [int] NOT NULL,
	[tipo_evolucion] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_evolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_forma_aprendizaje]    Script Date: 24/01/2023 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_forma_aprendizaje](
	[id_tipo_aprendizaje] [int] NOT NULL,
	[tipo_aprendizaje] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_aprendizaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_piedra]    Script Date: 24/01/2023 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_piedra](
	[id_tipo_piedra] [int] NOT NULL,
	[nombre_piedra] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_piedra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[efecto_secundario] ([id_efecto_secundario], [efecto_secundario]) VALUES (1, N'Bajar velocidad')
GO
INSERT [dbo].[efecto_secundario] ([id_efecto_secundario], [efecto_secundario]) VALUES (2, N'Probabilidad de critico')
GO
INSERT [dbo].[efecto_secundario] ([id_efecto_secundario], [efecto_secundario]) VALUES (3, N'Imposibilidad de atacar')
GO
INSERT [dbo].[efecto_secundario] ([id_efecto_secundario], [efecto_secundario]) VALUES (4, N'Envenenamiento leve')
GO
INSERT [dbo].[efecto_secundario] ([id_efecto_secundario], [efecto_secundario]) VALUES (5, N'Paralizar')
GO
INSERT [dbo].[efecto_secundario] ([id_efecto_secundario], [efecto_secundario]) VALUES (6, N'Quemar')
GO
INSERT [dbo].[efecto_secundario] ([id_efecto_secundario], [efecto_secundario]) VALUES (7, N'Congelar')
GO
INSERT [dbo].[efecto_secundario] ([id_efecto_secundario], [efecto_secundario]) VALUES (8, N'Bajar ataque')
GO
INSERT [dbo].[efecto_secundario] ([id_efecto_secundario], [efecto_secundario]) VALUES (9, N'Retroceso')
GO
INSERT [dbo].[efecto_secundario] ([id_efecto_secundario], [efecto_secundario]) VALUES (10, N'Confusión')
GO
INSERT [dbo].[efecto_secundario] ([id_efecto_secundario], [efecto_secundario]) VALUES (11, N'Bajar especial')
GO
INSERT [dbo].[efecto_secundario] ([id_efecto_secundario], [efecto_secundario]) VALUES (12, N'Bajar defensa')
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (1, 45, 49, 49, 65, 45)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (2, 60, 62, 63, 80, 60)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (3, 80, 82, 83, 100, 80)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (4, 39, 52, 43, 55, 65)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (5, 58, 64, 58, 73, 80)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (6, 78, 84, 78, 97, 100)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (7, 44, 48, 65, 57, 43)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (8, 59, 63, 80, 73, 58)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (9, 79, 83, 100, 95, 78)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (10, 45, 30, 35, 20, 45)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (11, 50, 20, 55, 25, 30)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (12, 60, 45, 50, 80, 70)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (13, 40, 35, 30, 20, 50)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (14, 45, 25, 50, 25, 35)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (15, 65, 80, 40, 63, 75)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (16, 40, 45, 40, 35, 56)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (17, 63, 60, 55, 50, 71)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (18, 83, 80, 75, 70, 91)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (19, 30, 56, 35, 30, 72)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (20, 55, 81, 60, 60, 97)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (21, 40, 60, 30, 31, 70)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (22, 65, 90, 65, 61, 100)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (23, 35, 60, 44, 47, 55)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (24, 60, 85, 69, 65, 79)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (25, 35, 55, 30, 45, 90)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (26, 60, 90, 55, 85, 100)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (27, 50, 75, 85, 25, 40)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (28, 75, 100, 110, 50, 65)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (29, 55, 47, 52, 40, 41)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (30, 70, 62, 67, 55, 56)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (31, 90, 82, 87, 80, 76)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (32, 46, 57, 40, 40, 50)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (33, 61, 72, 57, 55, 65)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (34, 81, 82, 77, 80, 85)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (35, 70, 45, 48, 63, 35)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (36, 95, 70, 73, 87, 60)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (37, 38, 41, 40, 57, 65)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (38, 73, 76, 75, 91, 100)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (39, 115, 45, 20, 30, 20)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (40, 140, 70, 45, 63, 45)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (41, 40, 45, 35, 35, 55)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (42, 75, 80, 70, 70, 90)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (43, 45, 50, 55, 70, 30)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (44, 60, 65, 70, 80, 40)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (45, 75, 80, 85, 95, 50)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (46, 35, 70, 55, 50, 25)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (47, 60, 95, 80, 70, 30)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (48, 60, 55, 50, 47, 45)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (49, 70, 65, 60, 83, 90)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (50, 10, 55, 25, 40, 95)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (51, 35, 80, 50, 60, 120)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (52, 40, 45, 35, 40, 90)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (53, 65, 70, 60, 65, 115)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (54, 50, 52, 48, 57, 55)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (55, 80, 82, 78, 87, 85)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (56, 40, 80, 35, 40, 70)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (57, 65, 105, 60, 65, 95)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (58, 55, 70, 45, 60, 60)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (59, 90, 110, 80, 90, 95)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (60, 45, 49, 49, 65, 45)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (61, 65, 65, 65, 50, 90)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (62, 90, 85, 95, 80, 70)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (63, 25, 20, 15, 80, 90)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (64, 40, 35, 30, 95, 105)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (65, 55, 50, 45, 110, 120)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (66, 70, 80, 50, 35, 35)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (67, 80, 100, 70, 55, 45)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (68, 90, 130, 80, 75, 55)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (69, 50, 75, 35, 50, 40)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (70, 65, 90, 50, 65, 40)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (71, 80, 105, 65, 80, 70)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (72, 40, 40, 35, 75, 70)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (73, 80, 70, 65, 100, 100)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (74, 40, 80, 100, 30, 20)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (75, 55, 95, 115, 45, 35)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (76, 80, 110, 130, 60, 45)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (77, 50, 85, 55, 65, 90)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (78, 65, 100, 70, 80, 105)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (79, 90, 65, 65, 80, 15)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (80, 95, 75, 110, 90, 30)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (81, 25, 35, 70, 75, 45)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (82, 50, 60, 95, 95, 70)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (83, 52, 65, 55, 60, 60)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (84, 55, 100, 64, 50, 90)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (85, 60, 110, 70, 60, 100)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (86, 65, 45, 55, 58, 45)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (87, 90, 70, 80, 83, 70)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (88, 80, 80, 50, 45, 25)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (89, 105, 105, 75, 83, 50)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (90, 30, 65, 100, 35, 40)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (91, 50, 95, 180, 65, 70)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (92, 30, 35, 30, 68, 80)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (93, 45, 50, 45, 85, 95)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (94, 60, 65, 60, 103, 110)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (95, 35, 45, 160, 37, 70)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (96, 60, 48, 45, 67, 42)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (97, 85, 73, 70, 94, 67)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (98, 30, 105, 90, 25, 50)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (99, 55, 130, 115, 50, 75)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (100, 40, 30, 50, 55, 100)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (101, 60, 50, 70, 80, 140)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (102, 60, 40, 80, 53, 40)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (103, 95, 95, 85, 95, 55)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (104, 50, 50, 95, 55, 35)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (105, 60, 80, 110, 65, 45)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (106, 50, 120, 53, 73, 87)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (107, 50, 105, 79, 73, 76)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (108, 90, 55, 75, 67, 30)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (109, 40, 65, 95, 53, 35)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (110, 65, 90, 120, 77, 60)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (111, 80, 85, 95, 30, 25)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (112, 105, 130, 120, 45, 40)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (113, 250, 5, 5, 70, 50)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (114, 65, 55, 115, 70, 60)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (115, 105, 95, 80, 60, 90)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (116, 30, 40, 70, 48, 60)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (117, 55, 65, 95, 70, 85)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (118, 45, 67, 60, 43, 63)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (119, 80, 92, 65, 72, 68)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (120, 30, 45, 55, 63, 85)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (121, 60, 75, 85, 93, 115)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (122, 40, 45, 65, 110, 90)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (123, 70, 110, 80, 68, 105)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (124, 65, 50, 35, 105, 95)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (125, 65, 83, 57, 95, 105)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (126, 65, 95, 57, 90, 105)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (127, 65, 125, 100, 63, 85)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (128, 75, 100, 95, 55, 110)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (129, 20, 10, 55, 17, 80)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (130, 95, 125, 79, 80, 81)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (131, 130, 85, 80, 90, 60)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (132, 48, 48, 48, 48, 48)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (133, 55, 55, 50, 55, 55)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (134, 130, 65, 60, 103, 65)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (135, 65, 65, 60, 103, 130)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (136, 65, 130, 60, 103, 65)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (137, 65, 60, 70, 80, 40)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (138, 35, 40, 100, 73, 35)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (139, 70, 60, 125, 93, 55)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (140, 30, 80, 90, 50, 55)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (141, 60, 115, 105, 67, 80)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (142, 80, 105, 65, 67, 130)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (143, 160, 110, 65, 88, 30)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (144, 90, 85, 100, 110, 85)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (145, 90, 90, 85, 83, 100)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (146, 90, 100, 90, 105, 90)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (147, 41, 64, 45, 50, 50)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (148, 61, 84, 65, 70, 70)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (149, 91, 134, 95, 100, 80)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (150, 106, 110, 90, 122, 130)
GO
INSERT [dbo].[estadisticas_base] ([numero_pokedex], [ps], [ataque], [defensa], [especial], [velocidad]) VALUES (151, 100, 100, 100, 100, 100)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (2, 1)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (3, 2)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (5, 4)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (6, 5)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (8, 7)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (9, 8)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (11, 10)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (12, 11)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (14, 13)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (15, 14)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (17, 16)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (18, 17)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (20, 19)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (22, 21)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (24, 23)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (26, 25)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (28, 27)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (30, 29)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (31, 30)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (33, 32)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (34, 33)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (36, 35)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (38, 37)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (40, 39)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (42, 41)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (44, 43)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (45, 44)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (47, 46)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (49, 48)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (51, 50)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (53, 52)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (55, 54)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (57, 56)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (59, 58)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (61, 60)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (62, 61)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (64, 63)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (65, 64)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (67, 66)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (68, 67)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (70, 69)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (71, 70)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (73, 72)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (75, 74)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (76, 75)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (78, 77)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (80, 79)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (82, 81)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (85, 84)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (87, 86)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (89, 88)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (91, 90)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (93, 92)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (94, 93)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (97, 96)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (99, 98)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (101, 100)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (103, 102)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (105, 104)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (110, 109)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (112, 111)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (117, 116)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (119, 118)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (121, 120)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (130, 129)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (134, 133)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (135, 133)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (136, 133)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (139, 138)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (141, 140)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (148, 147)
GO
INSERT [dbo].[evoluciona_de] ([pokemon_evolucionado], [pokemon_origen]) VALUES (149, 148)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (1, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (2, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (3, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (4, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (5, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (6, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (7, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (8, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (9, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (10, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (11, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (12, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (13, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (14, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (15, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (16, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (17, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (18, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (19, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (20, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (21, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (22, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (23, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (24, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (25, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (26, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (27, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (28, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (29, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (30, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (31, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (32, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (33, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (34, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (35, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (36, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (37, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (38, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (39, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (40, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (41, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (42, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (43, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (44, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (45, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (46, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (47, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (48, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (49, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (50, 1)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (51, 2)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (52, 2)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (53, 2)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (54, 2)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (55, 2)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (56, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (57, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (58, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (59, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (60, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (61, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (62, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (63, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (64, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (65, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (66, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (67, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (68, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (69, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (70, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (71, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (72, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (73, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (74, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (75, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (76, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (77, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (78, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (79, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (80, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (81, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (82, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (83, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (84, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (85, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (86, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (87, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (88, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (89, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (90, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (91, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (92, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (93, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (94, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (95, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (96, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (97, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (98, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (99, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (100, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (101, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (102, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (103, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (104, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (105, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (106, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (107, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (108, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (109, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (110, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (111, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (112, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (113, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (114, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (115, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (116, 3)
GO
INSERT [dbo].[forma_aprendizaje] ([id_forma_aprendizaje], [id_tipo_aprendizaje]) VALUES (117, 3)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (1, 3)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (2, 2)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (3, 2)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (4, 2)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (5, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (6, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (7, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (8, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (9, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (10, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (11, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (12, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (13, 2)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (14, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (15, 2)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (16, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (17, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (18, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (19, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (20, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (21, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (22, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (23, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (24, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (25, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (26, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (27, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (28, 1)
GO
INSERT [dbo].[forma_evolucion] ([id_forma_evolucion], [tipo_evolucion]) VALUES (29, 1)
GO
INSERT [dbo].[MO] ([id_forma_aprendizaje], [MO]) VALUES (51, N'MO01')
GO
INSERT [dbo].[MO] ([id_forma_aprendizaje], [MO]) VALUES (52, N'MO02')
GO
INSERT [dbo].[MO] ([id_forma_aprendizaje], [MO]) VALUES (53, N'MO03')
GO
INSERT [dbo].[MO] ([id_forma_aprendizaje], [MO]) VALUES (54, N'MO04')
GO
INSERT [dbo].[MO] ([id_forma_aprendizaje], [MO]) VALUES (55, N'MO05')
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (1, N'Placaje', 40, 100, N'Causa daño', 35, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (2, N'Danza espada', 0, 100, N'Aumenta en dos niveles el ataque del usuario', 30, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (3, N'Burbuja', 20, 100, N'Causa daño y tiene una probabilidad del 10% de bajar la velocidad', 30, 1, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (4, N'Cascada', 80, 100, N'Causa daño', 15, 1, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (5, N'Hidrobomba', 120, 80, N'Causa daño', 5, 1, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (6, N'Martillazo', 90, 85, N'Causa daño con probabilidad de dar golpe critico(12,5%)', 10, 1, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (7, N'Pistola de agua', 40, 100, N'Causa daño', 25, 1, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (8, N'Rayo burbuja', 65, 100, N'Causa daño y tiene una probabilidad del 10% de bajar la velocidad', 20, 1, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (9, N'Refugio', 0, 100, N'Aumenta la defensa en un nivel', 40, 1, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (10, N'Surf', 95, 100, N'Causa daño', 15, 1, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (11, N'Tenaza', 35, 75, N'Causa daño durante 2-5 turnos. Imposibilidad de atacar al objetivo', 15, 1, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (12, N'Chupa vidas', 20, 100, N'Causa daño y recupera el 50% PS quitados', 15, 2, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (13, N'Disparo demora', 0, 95, N'Baja la velocidad del objetivo', 40, 2, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (14, N'Doble ataque', 25, 100, N'Causa daño golpeando dos veces. Cada golpe tiene un 20% de probabilidad de envenenar.', 20, 2, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (15, N'Pin misil', 14, 85, N'Causa daño al objetivo de 2 a 5 veces', 20, 2, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (16, N'Furia dragón', 0, 100, N'Quita siempre 40 PS al obejtivo', 10, 3, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (17, N'Impactrueno', 40, 100, N'Causa daño y tiene una probabilidad del 10% de paralizar el objetivo.', 30, 4, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (18, N'Onda trueno', 0, 100, N'Paraliza el objetivo', 20, 4, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (19, N'Puño trueno', 75, 100, N'Causa daño y tiene un 10% de paralizar el objetivo', 35, 4, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (20, N'Rayo', 95, 100, N'Causa daño y tiene un 10% de paralizar el objetivo', 15, 4, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (21, N'Trueno', 120, 70, N'Causa daño y tiene un 10% de paralizar el objetivo', 10, 4, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (23, N'Lenguetazo', 20, 100, N'Causa daño y tiene un 30% de paralizar el objetivo', 30, 5, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (24, N'Rayo confuso', 0, 100, N'Confunde al objetivo', 10, 5, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (25, N'Tinieblas', 0, 100, N'Resta la cantidad de PS equivalentes al nivel de usuario', 15, 5, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (26, N'Ascuas', 40, 100, N'Causa daño y tiene una probabilidad del 10% de quemar al objetivo', 25, 6, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (27, N'Giro fuego', 15, 100, N'Causa dañó de 2 a 5 turnos. Imposibilidad de atacar al objetivo', 15, 6, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (28, N'Lanzallamas', 95, 100, N'Causa daño y tiene una probabilidad del 10% de quemar al objetivo', 15, 6, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (29, N'Llamarada', 120, 85, N'Causa daño y tiene una probabilidad del 30% de quemar al objetivo', 5, 6, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (30, N'Puño fuego', 75, 100, N'Causa daño y tiene una probabilidad del 10% de quemar al objetivo', 15, 4, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (31, N'Neblina', 0, 0, N'Neblina evita durante 5 turnos otros pokemon puedan reducir las estadisiticas del equipo aliado', 30, 7, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (32, N'Niebla', 0, 0, N'Restaura todos los cambios, tantos positivos como negativos, en las estadisitcas de todos los pokemon.', 30, 7, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (33, N'Puño hielo', 75, 100, N'Causa daño y tiene una probabilidad del 10% de congelar al objetivo', 15, 7, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (34, N'Rayo aurora', 65, 100, N'Causa daño y tiene una probabilidad del 10% de bajar un nivel el ataque del objetivo', 20, 7, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (35, N'Rayo hielo', 95, 100, N'Causa daño y tiene una probabilidad del 10% de congelar al objetivo', 10, 7, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (36, N'Ventisca', 120, 90, N'Causa daño y tiene una probabilidad del 10% de congelar al objetivo', 5, 7, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (37, N'Contraataque', 0, 100, N'Devuelve el doble daño recibido si es un físico', 20, 8, -5)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (38, N'Doble patada', 30, 100, N'Causa daño, golpeando 2 veces en un mismo turno', 30, 8, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (39, N'Movimiento sísmico', 0, 100, N'Resta la cantidad de PS equivalentes al nivel de usuario', 20, 8, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (40, N'Patada baja', 50, 90, N'Causa daño y tiene del 30% de retroceder al objetivo', 20, 8, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (41, N'Patada giro', 60, 85, N'Causa daño y tiene del 30% de retroceder al objetivo', 15, 8, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (42, N'Patada salto', 70, 100, N'Causa daño. Si falla, el usuario se golpea a si mismo restandole 1 PS.', 25, 8, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (43, N'Patada salto alta', 85, 90, N'Causa daño. Si falla, el usuario se golpea a si mismo restandole 1 PS.', 20, 8, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (44, N'Sumisión', 80, 80, N'Causa daño. Causa daño de retroceso al usuario de 1/4 del daño causado.', 20, 8, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (45, N'Afilar', 0, 100, N'sube el ataque del usuario en un nivel', 30, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (46, N'Agarre', 55, 100, N'Causa daño.', 30, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (47, N'Amortiguador', 0, 0, N'Restaura la mitad de los PS máximos del usuario', 10, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (48, N'Anulación', 0, 55, N'Anula un movimiento del objetivo', 20, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (49, N'Arañazo', 40, 100, N'Causa daño.', 35, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (50, N'Atadura', 15, 75, N'Causa daño de 2 a 5 turnos. Imposibilidad de atacar al objetivo', 20, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (51, N'Ataque arena', 0, 100, N'Baja la precisión en un nivel.', 15, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (52, N'Ataque furia', 15, 85, N'Causa daño de 2 a 5 turnos.', 20, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (53, N'Ataque rápido', 40, 100, N'Causa daño.', 30, 9, 1)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (54, N'Autodestrucción', 130, 100, N'Causa daño y debilita al usuario.', 5, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (55, N'Beso amoroso', 0, 75, N'Duerme al obejtivo', 10, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (56, N'Bomba huevo', 100, 75, N'Causa daño', 10, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (57, N'Bomba sónica', 0, 90, N'siempre quita 20 PS', 20, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (58, N'Cabezazo', 100, 100, N'Se prepara durante el primer turno y ataca en el segundo', 15, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (59, N'Canto', 0, 55, N'Duerme al objetivo.', 15, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (60, N'Chirrido', 0, 85, N'Baja en dos niveles la defensa del objetivo.', 40, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (61, N'Clavo cañón', 20, 100, N'Causa daño de 2 a 5 turnos.', 15, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (62, N'Conversión', 0, 0, N'Cambia el tipo del usuario del oponente', 30, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (63, N'Cornada', 65, 100, N'Causa daño.', 25, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (64, N'Corte', 50, 100, N'Causa daño.', 30, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (65, N'Cuchillada', 70, 100, N'Causa daño y tiene una alta probabilidad de causar un golpe crítico (12,5%).', 20, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (66, N'Derribo', 90, 85, N'Causa daño. Causa daño de retroceso al usuario de 1/4 del daño causado ', 20, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (67, N'Desarrollo', 0, 0, N'Aumenta en un nivel el especial del usuario.', 40, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (68, N'Deslumbrar', 0, 100, N'Provoca paralisis al objetivo.', 30, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (69, N'Destello', 0, 100, N'Baja un nivel la precisición del oponente.', 20, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (70, N'Destructor', 40, 100, N'Causa daño.', 35, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (71, N'Día de pago', 40, 100, N'Causa daño. Se esparcen monedas que se recogen al final del combate', 20, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (72, N'Doble equipo', 0, 0, N'Aumenta en un nivel la evasión del usuario.', 15, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (73, N'Doble filo', 100, 100, N'Causa daño. Causa daño de retroceso al usuario de 1/4 del daño causado.', 15, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (74, N'Doblebofetón', 15, 85, N'Causa daño de 2 a 5 turnos.', 10, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (75, N'Explosión', 170, 100, N'Causa daño y debilita al usuario.', 5, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (76, N'Foco energía', 0, 0, N'Aumenta la probabilidad asestar golpes criticos.', 40, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (77, N'Fortaleza', 0, 0, N'Aumenta en un nivel la defensa del usuario.', 30, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (78, N'Fuerza', 80, 100, N'Causa daño.', 15, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (79, N'Furia', 20, 100, N'Causa daño. No puede cambiar de movimiento.', 20, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (80, N'Golpe', 90, 100, N'Causa daño entre 3 o 4 turnos seguidos. El usuario termina confundido.', 20, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (81, N'Golpe cabeza', 70, 100, N'Causa daño y tiene una probabilidad del 30% de hacer retroceder.', 15, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (82, N'Golpe cuerpo', 85, 100, N'Causa daño y tiene una probabilidad del 30% de paralizar el objetivo.', 15, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (83, N'Golpe kárate', 50, 100, N'Causa daño y tiene un alto índice de golpe crítico.', 25, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (84, N'Golpes furia', 50, 100, N'Causa daño de 2 a 5 turnos.', 15, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (85, N'Gruñido', 0, 100, N'Baja un nivel el ataque del objetivo.', 40, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (86, N'Guillotina', 0, 30, N'Si acierta, provoca KO en un turno.', 5, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (87, N'Hipercolmillo', 80, 90, N'Causa daño y tiene un una probabilidad del 10% de hacer retroceder al objetivo.', 15, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (88, N'Hiperrayo', 150, 90, N'Causa daño. No podra moverse en el segundo turno.', 5, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (89, N'Látigo', 0, 100, N'Baja en un nivel la defensa del oponente.', 30, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (90, N'Malicioso', 0, 100, N'Baja en un nivel la defensa del oponente.', 30, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (91, N'Megapatada', 120, 75, N'Causa daño.', 5, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (92, N'MegaPuño', 80, 85, N'Causa daño.', 20, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (93, N'Metrónomo', 0, 0, N'Utiliza un movimiento al azar.', 15, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (94, N'Mimético', 0, 0, N'Permite al usuario elegir uno de los movimientos del objetivo y copiarlo.', 25, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (95, N'Mordisco', 60, 100, N'Causa daño y tiene una probabilidad del 10% de hacer retroceder.', 25, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (96, N'Pantalla de humo', 0, 100, N'Baja en un nivel la precisión del oponente.', 20, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (97, N'Perforador', 0, 30, N'Si acierta, provoca KO en un turno.', 5, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (98, N'Pisotón', 65, 100, N'Causa daño y tiene una probabilidad del 30% de hacer retroceder.', 20, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (100, N'Atizar', 80, 75, N'Causa daño.', 20, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (101, N'Presa', 50, 100, N'Causa daño de 2 a 5 turnos.', 20, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (102, N'Puño cometa', 18, 85, N'Causa daño de 2 a 5 turnos.', 15, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (103, N'Rapidez', 60, 0, N'Causa daño. No falla.', 20, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (104, N'Recuperación', 0, 0, N'Restaura la mitad de los PS máximos del usuario', 20, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (105, N'Reducción', 0, 0, N'Aumenta la evasión del usuario en un nivel.', 10, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (106, N'Remolino', 0, 85, N'Ahuyenta a los pokemon salvajes.', 20, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (107, N'Constricción', 15, 85, N'Causa daño de 2 a 5 turnos. Imposibilidad de atacar al objetivo', 20, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (109, N'Rizo de defensa', 0, 100, N'Aumenta en un nivel la defensa del usuario.', 40, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (110, N'Rugido', 0, 0, N'Ahuyenta a los pokemon salvajes.', 20, 9, -6)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (111, N'Salpicadura', 0, 0, N'No tiene ningún efecto.', 40, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (112, N'Superdiente', 0, 90, N'Quita al objetivo la mitad de sus PS actuales.', 10, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (113, N'Supersónico', 0, 55, N'Confunde al objetivo.', 20, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (114, N'Sustituto', 0, 0, N'Crea un sustituo con el 25% de los PS maximos del usuario para que reciba el daño de los movimientos', 10, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (115, N'Tornado', 40, 100, N'Causa daño.', 35, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (116, N'Transformación', 0, 0, N'Convierte al usuario en el Pokémon objetivo, copiando su tipo, sus movimientos, habilidad, su ratio de captura, sus estadísticas y cambios en las mismas.', 10, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (117, N'Triataque', 80, 100, N'Causa daño. Tiene un 20% de provocar quemaduras, paralisis o congelación', 10, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (118, N'Venganza', 0, 0, N' Hace que el usuario se mantenga inmóvil durante 2-3 turnos seguidos, sin poder realizar ninguna acción, para después devolver el doble del daño recibido. El movimiento falla si el usuario no resulta dañado por el enemigo.', 10, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (119, N'Viento cortante', 80, 75, N'carga en el primer turno que es efectuado, creando un remolino. En el segundo turno, causa daño.', 10, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (120, N'Absorber', 20, 100, N'Causa daño y el usuario recupera el 50% de los PS quitados por el movimiento al objetivo', 20, 10, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (121, N'Danza pétalo', 70, 100, N'Causa daño entre 3 o 4 turnos seguidos. El usuario termina confundido.', 20, 10, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (122, N'Drenadoras', 0, 90, N'Planta tres semillas en el oponente, las cuales le roban 1/16 de sus PS máximos al final de cada turno. El usuario recupera esa misma cantidad de PS. Si el usuario es cambiado, el Pokémon que pase a ocupar su lugar recibirá esos puntos de salud. El efecto se pasa al cambiar el Pokémon infectado por drenadoras. Drenadoras no afecta a Pokémon de tipo planta.', 10, 10, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (123, N'Espora', 0, 100, N'Duerme al objetivo.', 15, 10, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (124, N'Hoja afilada', 55, 95, N'Causa daño y tiene una alta probabilidad de dar un golpe crítico (12,5%).', 25, 10, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (125, N'Látigo cepa', 35, 100, N'Causa daño.', 25, 10, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (126, N'Megaagotar', 45, 100, N'Causa daño y el usuario recupera el 50% de los PS quitados por el movimiento al objetivo', 15, 10, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (127, N'Paralizador', 0, 75, N'Paraliza al objetivo', 30, 10, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (128, N'Rayo solar', 120, 100, N'utiliza este movimiento concentra la energía solar un turno, para liberar un rayo que causa daño en el siguiente turno.', 10, 10, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (129, N'Somnífero', 0, 75, N'Duerme al objetivo', 15, 10, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (130, N'Agilidad', 0, 0, N'Sube en dos niveles la velocidad del usuario.', 30, 11, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (131, N'Amnesia', 0, 0, N'Aumenta en dos niveles el especial del usuario', 20, 11, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (132, N'Barrera', 0, 0, N'Aumneta en dos niveles la defensa del usuario.', 30, 11, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (133, N'Comesueños', 100, 100, N'Causa daño a un objetivo dormido y el usuario recupera el 50% de los PS quitados por movimiento al objetivo.', 15, 11, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (134, N'Confusión', 50, 100, N'Causa daño y tiene una probabilidad del 10% de confundir al objetivo.', 25, 11, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (135, N'Descanso', 0, 0, N'hace que el usuario se duerma y recupere la totalidad de los PS, curando en el proceso cualquier problema de estado. El usuario después permanece dormido durante 2 turnos.', 10, 11, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (136, N'Hipnosis', 0, 60, N'Duerme al objetivo.', 20, 11, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (137, N'Kinético', 0, 80, N'Baja la precisión del objetivo en un nivel.', 15, 11, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (138, N'Meditación', 0, 0, N'aumenta un nivel el ataque del usuario.', 40, 11, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (139, N'Pantalla de luz', 0, 0, N'Dobla la defensa especial del usuario.', 30, 11, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (140, N'Psicoonda', 0, 80, N'Causa un daño variable al oponente, elegido al azar de un número entre 0,5 y 1,5 veces el nivel del usuario.', 15, 11, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (141, N'Psicorrayo', 65, 60, N'Causa daño y tiene una probabilidad del 10% de confundir al objetivo.', 20, 11, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (142, N'Psíquico', 90, 100, N'Causa daño y tiene una probabilidad del 30% de bajar en un nivel el especial del objetivo.', 20, 11, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (143, N'Reflejo', 0, 0, N'Dobla la defensa física del usuario.', 20, 11, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (144, N'Teletransporte', 0, 0, N'Permite huir de combates individuales.', 20, 11, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (145, N'Avalancha', 75, 90, N'Causa daño.', 10, 12, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (146, N'Lanzarocas', 50, 65, N'Causa daño.', 15, 12, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (147, N'Excavar', 100, 100, N'Cava en el primer turno y el segundo turno ataca.', 10, 13, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (148, N'Fisura', 0, 30, N'Si acierta, provoca un golpe fulminante.', 5, 13, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (149, N'Hueso palo', 65, 85, N'Causa daño y tiene una probabilidad del 10% de hacer retroceder al objetivo.', 20, 13, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (150, N'Huesomerang', 50, 90, N'Causa daño, golpeando al objetivo en un mismo turno.', 10, 13, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (151, N'Terremoto', 100, 100, N'Causa daño.', 10, 13, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (152, N'Ácido', 40, 100, N'Causa daño y tiene una probabilidad deñ 10% de bajar un nivel la defensa del objetivo.', 30, 14, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (153, N'Armadura ácida', 0, 0, N'Sube en dos niveles la defensa del usuario.', 20, 14, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (154, N'Gas venenoso', 0, 55, N'Envenena al objetivo', 40, 14, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (155, N'Picotazo venenoso', 15, 100, N'Causa daño y tiene una probabilidad del 30% de envenenar al oponente.', 35, 14, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (156, N'Polución', 20, 70, N'Causa daño y tiene una probabilidad del 40% de envenar al objetivo.', 20, 14, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (157, N'Polvo veneno', 0, 75, N'Envenena al objetivo', 35, 14, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (158, N'Residuos', 65, 100, N'Causa daño y tiene una probabilidad del 30% de envenenar al objetivo.', 20, 14, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (159, N'Tóxico', 0, 85, N'provoca un grave envenenamiento que se agrava con el paso de los turnos.', 10, 14, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (160, N'Ataque aéreo', 140, 90, N'Se prepara durante el primer turno. En el segundo turno causa daño al objetivo.', 5, 15, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (161, N'Ataque ala', 35, 100, N'Causa daño.', 35, 15, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (162, N'Movimiento espejo', 0, 0, N'Utiliza el último ataque usado que haya tenido al usuario por objetivo. ', 20, 15, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (164, N'Pico taladro', 80, 100, N'Causa daño.', 20, 15, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (165, N'Picotazo', 35, 100, N'Causa daño.', 35, 15, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (166, N'Vuelo', 70, 100, N' emplea dos turnos: en el primero, el Pokémon vuela muy alto, tanto que estará fuera del alcance de la mayoría de los movimientos. En el segundo turno ocurre la caída del vuelo, en la cual el Pokémon golpea al oponente, pero puede ser interrumpida de muchas maneras.', 15, 15, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (167, N'Restricción', 10, 100, N'Restricción causa daño y tiene una probabilidad del 10% de bajar un nivel la velocidad del oponente.', 35, 9, 0)
GO
INSERT [dbo].[movimiento] ([id_movimiento], [nombre], [potencia], [precision_mov], [descripcion], [pp], [id_tipo], [prioridad]) VALUES (168, N'Puño mareo', 70, 100, N'Causa daño y tiene una probabilidad del 20% de confundir al objetivo.', 10, 9, 0)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (3, 1, 10)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (6, 1, 12.5)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (8, 1, 10)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (11, 3, 100)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (14, 4, 20)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (17, 5, 10)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (19, 5, 10)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (20, 5, 10)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (21, 5, 10)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (23, 5, 30)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (26, 6, 10)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (27, 3, 100)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (28, 6, 10)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (29, 6, 30)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (30, 6, 10)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (33, 7, 10)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (34, 8, 10)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (35, 8, 10)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (36, 8, 10)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (40, 9, 30)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (41, 9, 30)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (65, 2, 12.5)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (81, 9, 30)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (82, 5, 30)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (83, 2, 12.5)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (87, 9, 10)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (95, 9, 10)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (98, 9, 30)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (107, 3, 100)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (117, 5, 20)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (117, 6, 20)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (117, 7, 20)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (124, 2, 12.5)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (141, 10, 10)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (142, 11, 30)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (149, 12, 10)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (152, 11, 10)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (155, 4, 30)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (156, 4, 40)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (158, 4, 30)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (167, 1, 10)
GO
INSERT [dbo].[movimiento_efecto_secundario] ([id_movimiento], [id_efecto_secundario], [probabilidad]) VALUES (168, 10, 20)
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (1, N'MT01')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (2, N'MT02')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (3, N'MT03')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (4, N'MT04')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (5, N'MT05')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (6, N'MT06')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (7, N'MT07')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (8, N'MT08')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (9, N'MT09')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (10, N'MT10')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (11, N'MT11')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (12, N'MT12')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (13, N'MT13')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (14, N'MT14')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (15, N'MT15')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (16, N'MT16')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (17, N'MT17')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (18, N'MT18')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (19, N'MT19')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (20, N'MT20')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (21, N'MT21')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (22, N'MT22')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (23, N'MT23')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (24, N'MT24')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (25, N'MT25')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (26, N'MT26')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (27, N'MT27')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (28, N'MT28')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (29, N'MT29')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (30, N'MT30')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (31, N'MT31')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (32, N'MT32')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (33, N'MT33')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (34, N'MT34')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (35, N'MT35')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (36, N'MT36')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (37, N'MT37')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (38, N'MT38')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (39, N'MT39')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (40, N'MT40')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (41, N'MT41')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (42, N'MT42')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (43, N'MT43')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (44, N'MT44')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (45, N'MT45')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (46, N'MT46')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (47, N'MT47')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (48, N'MT48')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (49, N'MT49')
GO
INSERT [dbo].[MT] ([id_forma_aprendizaje], [MT]) VALUES (50, N'MT50')
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (56, 1)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (57, 7)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (58, 13)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (59, 20)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (60, 27)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (61, 34)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (62, 41)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (63, 48)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (64, 22)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (65, 30)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (66, 38)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (67, 46)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (68, 54)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (69, 43)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (70, 55)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (71, 65)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (72, 9)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (73, 15)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (74, 24)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (75, 33)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (76, 42)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (77, 56)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (78, 36)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (79, 8)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (80, 28)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (81, 35)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (82, 31)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (83, 39)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (84, 47)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (85, 52)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (86, 12)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (87, 16)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (88, 17)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (89, 21)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (90, 26)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (91, 32)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (92, 25)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (93, 5)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (94, 19)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (95, 44)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (96, 40)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (97, 49)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (98, 14)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (99, 23)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (100, 29)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (101, 10)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (102, 50)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (103, 37)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (104, 51)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (105, 59)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (106, 18)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (107, 45)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (108, 11)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (109, 53)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (110, 60)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (111, 64)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (112, 58)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (113, 63)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (114, 66)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (115, 70)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (116, 75)
GO
INSERT [dbo].[nivel_aprendizaje] ([id_forma_aprendizaje], [nivel]) VALUES (117, 81)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (5, 7)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (6, 10)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (7, 16)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (8, 18)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (9, 20)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (10, 22)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (11, 32)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (12, 36)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (14, 21)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (16, 24)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (17, 31)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (18, 26)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (19, 28)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (20, 33)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (21, 25)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (22, 30)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (23, 40)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (24, 37)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (25, 34)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (26, 38)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (27, 35)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (28, 42)
GO
INSERT [dbo].[nivel_evolucion] ([id_forma_evolucion], [nivel]) VALUES (29, 55)
GO
INSERT [dbo].[piedra] ([id_forma_evolucion], [id_tipo_piedra]) VALUES (2, 1)
GO
INSERT [dbo].[piedra] ([id_forma_evolucion], [id_tipo_piedra]) VALUES (3, 2)
GO
INSERT [dbo].[piedra] ([id_forma_evolucion], [id_tipo_piedra]) VALUES (4, 3)
GO
INSERT [dbo].[piedra] ([id_forma_evolucion], [id_tipo_piedra]) VALUES (13, 4)
GO
INSERT [dbo].[piedra] ([id_forma_evolucion], [id_tipo_piedra]) VALUES (15, 5)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (1, N'Bulbasaur', 6.9, 0.7)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (2, N'Ivysaur', 13, 1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (3, N'Venasaur', 100, 2)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (4, N'Charmander', 8.5, 0.6)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (5, N'Charmeleon', 19, 1.1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (6, N'Charizard', 90.5, 1.7)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (7, N'Squirtle', 9, 0.5)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (8, N'Wartortle', 22.5, 1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (9, N'Blastoise', 85.5, 1.6)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (10, N'Caperpie', 2.9, 0.3)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (11, N'Metapod', 9.9, 0.7)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (12, N'Butterfree', 32, 1.1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (13, N'Weedle', 3.2, 0.3)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (14, N'Kakuna', 10, 0.6)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (15, N'Beedrill', 29.5, 1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (16, N'Pidgey', 1.8, 0.3)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (17, N'Pidgeotto', 30, 1.1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (18, N'Pidgeot', 39.5, 1.5)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (19, N'Rattata', 3.5, 0.3)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (20, N'Raticate', 18.5, 0.7)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (21, N'Spearow', 2, 0.3)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (22, N'Fearow', 38, 1.2)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (23, N'Ekans', 6.9, 2)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (24, N'Arbok', 65, 3.5)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (25, N'Pikachu', 6, 0.4)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (26, N'Raichu', 30, 0.8)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (27, N'Sandshrew', 12, 0.6)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (28, N'Sandslash', 29.5, 1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (29, N'Nidoran?', 7, 0.4)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (30, N'Nidorina', 20, 0.8)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (31, N'Nidoqueen', 60, 1.3)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (32, N'Nidoran?', 9, 0.5)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (33, N'Nidorino', 19.5, 0.9)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (34, N'Nidoking', 62, 1.4)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (35, N'Clefairy', 7.5, 0.6)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (36, N'Clefable', 40, 1.3)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (37, N'Vulpix', 9.9, 0.6)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (38, N'Ninetales', 19.9, 1.1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (39, N'Jigglypuff', 5.5, 0.5)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (40, N'Wigglytuff', 12, 1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (41, N'Zubat', 7.5, 0.8)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (42, N'Golbat', 55, 1.6)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (43, N'Oddish', 5.4, 0.5)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (44, N'Gloom', 8.6, 0.8)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (45, N'Vileplume', 18.6, 1.2)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (46, N'Paras', 5.4, 0.3)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (47, N'Parasect', 29.5, 1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (48, N'Venonat', 30, 1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (49, N'Venomoth', 12.5, 1.5)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (50, N'Digglet', 0.8, 0.2)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (51, N'Dugtrio', 33.3, 0.7)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (52, N'Meowth', 4.2, 0.4)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (53, N'Persian', 32, 1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (54, N'Psyduck', 19.6, 0.8)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (55, N'Golduck', 76.6, 1.7)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (56, N'Mankey', 28, 0.5)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (57, N'Primeape', 32, 1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (58, N'Growlithe', 19, 0.7)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (59, N'Arcanine', 155, 1.9)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (60, N'Poliwag', 12.4, 0.6)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (61, N'Poliwhirl', 20, 1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (62, N'Poliwrath', 54, 1.3)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (63, N'Abra', 19.5, 0.9)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (64, N'Kadabra', 56.5, 1.3)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (65, N'Alakazam', 48, 1.5)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (66, N'Machop', 19.5, 0.8)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (67, N'Mackoke', 70.5, 1.5)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (68, N'Machamp', 130, 1.6)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (69, N'Bellsprout', 4, 0.7)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (70, N'Weepinbell', 6.4, 1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (71, N'Victreebel', 15.5, 1.7)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (72, N'Tentacool', 45.5, 0.9)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (73, N'Tentacruel', 55, 1.6)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (74, N'Geodude', 20, 0.4)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (75, N'Graveler', 105, 1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (76, N'Golem', 300, 1.4)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (77, N'Ponyta', 30, 1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (78, N'Rapidash', 95, 1.7)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (79, N'Slowpoke', 36, 1.2)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (80, N'Slowbro', 78.5, 1.6)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (81, N'Magnemite', 6, 0.3)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (82, N'Magneton', 60, 1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (83, N'Farfetchd', 15, 0.8)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (84, N'Doduo', 39.2, 1.4)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (85, N'Dodrio', 85.2, 1.8)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (86, N'Seel', 90, 1.1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (87, N'Dewgong', 120, 1.7)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (88, N'Grimer', 30, 0.9)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (89, N'Muk', 30, 1.2)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (90, N'Shellder', 4, 0.3)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (91, N'Cloyster', 132.5, 1.5)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (92, N'Gastly', 0.1, 1.3)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (93, N'Haunter', 0.1, 1.6)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (94, N'Gengar', 40.5, 1.5)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (95, N'Onix', 210, 8.8)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (96, N'Drowzee', 32.4, 1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (97, N'Hypno', 75.6, 1.6)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (98, N'Krabby', 6.5, 0.4)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (99, N'Kingler', 60, 1.3)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (100, N'Voltorb', 10.4, 0.5)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (101, N'Electrode', 66.6, 1.2)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (102, N'Exeggcute', 2.5, 0.4)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (103, N'Exeggutor', 120, 2)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (104, N'Cubone', 6.5, 0.4)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (105, N'Marowak', 45, 1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (106, N'Hitmonlee', 49.8, 1.5)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (107, N'Hitmonchan', 50.2, 1.4)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (108, N'Lickitung', 65, 1.2)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (109, N'Koffing', 1, 0.6)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (110, N'Weezing', 9.5, 1.2)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (111, N'Rhyhorn', 115, 1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (112, N'Rhydon', 120, 1.9)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (113, N'Chansey', 34.6, 1.1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (114, N'Tangela', 35, 1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (115, N'Kangaskhan', 80, 2.2)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (116, N'Horsea', 8, 0.4)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (117, N'Seadra', 25, 1.2)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (118, N'Goldeen', 15, 0.6)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (119, N'Seaking', 39, 1.3)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (120, N'Staryu', 34.5, 0.8)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (121, N'Starmie', 80, 1.1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (122, N'Mr. Mime', 54.5, 1.3)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (123, N'Scyther', 56, 1.5)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (124, N'Jynx', 40.6, 1.4)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (125, N'Electabuzz', 30, 1.1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (126, N'Magmar', 44.5, 1.3)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (127, N'Pinsir', 55, 1.5)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (128, N'Tauros', 88.4, 1.4)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (129, N'Magikarp', 10, 0.9)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (130, N'Gyarados', 235, 6.5)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (131, N'Lapras', 220, 2.5)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (132, N'Ditto', 4, 0.3)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (133, N'Eevee', 6.5, 0.3)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (134, N'Vaporeon', 29, 1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (135, N'Jolteon', 24.5, 0.8)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (136, N'Flareon', 25, 0.9)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (137, N'Porygon', 36.5, 0.8)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (138, N'Omanyte', 7.5, 4)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (139, N'Omastar', 35, 1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (140, N'Kabuto', 11.5, 0.5)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (141, N'Kabutops', 40.5, 1.3)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (142, N'Aerodactyl', 59, 1.8)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (143, N'Snorlax', 460, 2.1)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (144, N'Articuno', 55.4, 1.7)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (145, N'Zapdos', 52.6, 1.6)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (146, N'Moltres', 60, 2)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (147, N'Dratini', 3.3, 1.8)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (148, N'Dragonair', 16.5, 4)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (149, N'Dragonite', 210, 2.2)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (150, N'Mewtwo', 122, 2)
GO
INSERT [dbo].[pokemon] ([numero_pokedex], [nombre], [peso], [altura]) VALUES (151, N'Mew', 4, 0.4)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (1, 7)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (2, 11)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (4, 7)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (5, 12)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (7, 7)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (8, 12)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (10, 5)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (11, 6)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (13, 5)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (14, 6)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (16, 8)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (17, 12)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (19, 9)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (21, 9)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (23, 10)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (25, 2)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (27, 10)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (29, 8)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (30, 13)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (32, 8)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (33, 13)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (35, 13)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (37, 3)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (39, 13)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (41, 10)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (43, 14)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (44, 15)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (46, 16)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (48, 17)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (50, 18)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (52, 19)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (54, 20)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (56, 19)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (58, 3)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (60, 21)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (61, 4)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (63, 7)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (64, 1)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (66, 19)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (67, 1)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (69, 14)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (70, 15)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (72, 22)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (74, 21)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (75, 1)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (77, 23)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (79, 24)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (81, 22)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (84, 17)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (86, 25)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (88, 26)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (90, 4)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (92, 21)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (93, 1)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (96, 18)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (98, 19)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (100, 22)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (102, 15)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (104, 19)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (109, 27)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (111, 28)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (116, 11)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (118, 20)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (120, 4)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (129, 9)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (133, 2)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (133, 3)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (133, 4)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (138, 23)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (140, 23)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (147, 22)
GO
INSERT [dbo].[pokemon_forma_evolucion] ([numero_pokedex], [id_forma_evolucion]) VALUES (148, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 67, 61)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 85, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 122, 57)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 124, 60)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 125, 58)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 128, 63)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 129, 62)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 157, 59)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (1, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 67, 66)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 85, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 122, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 122, 57)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 124, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 125, 58)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 128, 68)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 129, 67)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 157, 64)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (2, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 67, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 85, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 122, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 122, 57)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 124, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 125, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 125, 58)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 128, 71)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 129, 70)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 157, 64)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (3, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 16, 23)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 26, 72)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 27, 67)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 28, 66)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 49, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 65, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 79, 64)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 85, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 90, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (4, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 16, 23)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 26, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 26, 72)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 27, 77)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 28, 76)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 49, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 65, 75)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 85, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 90, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (5, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 16, 23)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 26, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 26, 72)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 27, 70)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 28, 67)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 49, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 65, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 79, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 85, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 90, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 90, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (6, 166, 52)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 3, 79)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 5, 76)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 7, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 9, 80)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 58, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 89, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 95, 64)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (7, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 3, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 3, 79)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 5, 84)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 7, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 9, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 58, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 89, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 95, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (8, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 3, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 3, 79)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 5, 85)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 7, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 7, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 9, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 58, 76)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 89, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 95, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (9, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (10, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (10, 13, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (11, 77, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 106, 4)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 106, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 113, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 119, 2)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 127, 79)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 129, 80)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 134, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 134, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 141, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 157, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (12, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (13, 13, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (13, 155, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (14, 77, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 14, 59)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 15, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 52, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 52, 86)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 76, 87)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 79, 92)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 130, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (15, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 51, 93)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 53, 86)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 106, 4)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 106, 94)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 115, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 119, 2)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 130, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 160, 43)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 161, 80)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 162, 95)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (16, 166, 52)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 51, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 51, 93)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 53, 86)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 106, 4)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 106, 89)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 115, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 119, 2)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 130, 96)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 160, 43)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 161, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 162, 97)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (17, 166, 52)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 51, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 51, 93)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 53, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 53, 86)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 106, 4)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 106, 89)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 115, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 119, 2)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 130, 95)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 160, 43)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 161, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 162, 68)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (18, 166, 52)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 53, 57)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 76, 99)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 87, 98)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 89, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 103, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 112, 61)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (19, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 53, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 53, 57)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 76, 60)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 87, 98)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 89, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 103, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 112, 62)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (20, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (21, 52, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (21, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (21, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (21, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (21, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (21, 85, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (21, 90, 72)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (21, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (21, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (21, 106, 4)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (21, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (21, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (21, 119, 2)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (21, 130, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (21, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (21, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (21, 160, 43)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (21, 162, 64)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (21, 164, 100)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (21, 165, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (21, 166, 52)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 52, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 85, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 90, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 90, 72)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 106, 4)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 119, 2)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 130, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 160, 43)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 162, 92)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 164, 61)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 165, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (22, 166, 52)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 60, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 68, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 90, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 95, 88)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 107, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 152, 66)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 155, 101)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (23, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 60, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 68, 60)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 90, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 95, 88)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 107, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 152, 84)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 155, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 155, 101)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (24, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 17, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 18, 72)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 21, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 53, 87)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 71, 16)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 89, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 103, 90)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 130, 75)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (25, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 17, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 18, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 71, 16)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 89, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (26, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 49, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 51, 101)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 65, 88)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 84, 66)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 103, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 155, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (27, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 49, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 51, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 51, 101)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 65, 88)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 84, 84)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 103, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 155, 60)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (28, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 38, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 49, 79)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 84, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 85, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 89, 89)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 95, 100)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 155, 98)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (29, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 38, 102)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 49, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 49, 79)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 84, 62)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 85, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 89, 99)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 95, 91)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 97, 7)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 155, 98)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (30, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 49, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 71, 16)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 82, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 82, 99)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 89, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 97, 7)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 155, 98)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (31, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 38, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 52, 100)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 63, 79)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 76, 89)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 90, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 97, 7)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 97, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 155, 98)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (32, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 38, 102)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 52, 91)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 63, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 63, 79)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 76, 99)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 90, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 97, 7)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 97, 62)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 155, 98)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (33, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 63, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 63, 79)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 71, 16)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 80, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 80, 99)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 97, 7)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 155, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 155, 98)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (34, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 59, 58)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 70, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 74, 106)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 85, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 93, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 105, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 109, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 117, 49)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 139, 63)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (35, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 59, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 74, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 93, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 105, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 117, 49)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (36, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 24, 80)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 26, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 27, 76)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 28, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 53, 87)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 89, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 110, 89)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (37, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (38, 26, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (38, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (38, 53, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (38, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (38, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (38, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (38, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (38, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (38, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (38, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (38, 89, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (38, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (38, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (38, 110, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (38, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (38, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (38, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (38, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (38, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (38, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 48, 98)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 59, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 70, 72)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 73, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 74, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 82, 61)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 109, 94)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 117, 49)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 135, 100)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (39, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 48, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 59, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 74, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 109, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 117, 49)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (40, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (41, 12, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (41, 24, 89)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (41, 32, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (41, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (41, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (41, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (41, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (41, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (41, 95, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (41, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (41, 106, 4)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (41, 113, 101)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (41, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (41, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (41, 119, 2)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (41, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (41, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (41, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (41, 161, 80)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (42, 12, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (42, 24, 89)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (42, 32, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (42, 60, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (42, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (42, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (42, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (42, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (42, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (42, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (42, 95, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (42, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (42, 106, 4)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (42, 113, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (42, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (42, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (42, 119, 2)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (42, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (42, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (42, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (42, 161, 91)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (43, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (43, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (43, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (43, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (43, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (43, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (43, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (43, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (43, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (43, 120, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (43, 121, 75)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (43, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (43, 127, 88)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (43, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (43, 128, 67)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (43, 129, 94)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (43, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (43, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (43, 152, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (43, 157, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (43, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 120, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 121, 66)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 127, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 127, 88)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 128, 85)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 152, 80)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 157, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 157, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (44, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 121, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 127, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 127, 88)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 129, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 129, 94)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 152, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 157, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (45, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 12, 59)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 49, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 65, 61)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 67, 62)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 123, 60)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 127, 58)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (46, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 12, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 12, 59)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 49, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 65, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 67, 63)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 123, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 127, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 127, 58)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (47, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 12, 60)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 48, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 127, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 129, 66)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 141, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 142, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 157, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (48, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 12, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 12, 60)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 48, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 106, 4)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 119, 2)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 127, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 129, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 141, 66)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 142, 102)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 157, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 157, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (49, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (50, 49, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (50, 51, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (50, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (50, 65, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (50, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (50, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (50, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (50, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (50, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (50, 85, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (50, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (50, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (50, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (50, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (50, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (50, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (50, 147, 94)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (50, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (50, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (50, 151, 96)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (50, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 49, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 51, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 65, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 85, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 85, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 147, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 147, 94)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 151, 84)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (51, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 49, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 60, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 65, 95)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 71, 16)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 71, 88)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 84, 75)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 85, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 95, 86)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (52, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 49, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 60, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 65, 104)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 71, 16)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 71, 88)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 84, 103)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 85, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 95, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 95, 86)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (53, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 5, 85)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 48, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 49, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 71, 16)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 84, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 89, 80)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 134, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (54, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 5, 105)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 48, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 48, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 49, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 71, 16)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 84, 63)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 89, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 89, 80)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 134, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (55, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 39, 75)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 49, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 71, 16)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 76, 60)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 80, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 83, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 84, 89)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 90, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (56, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 39, 103)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 49, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 71, 16)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 76, 60)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 80, 67)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 83, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 83, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 84, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 84, 89)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 90, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (57, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 16, 23)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 26, 106)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 28, 102)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 66, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 90, 99)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 95, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 110, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 130, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (58, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (59, 16, 23)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (59, 26, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (59, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (59, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (59, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (59, 66, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (59, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (59, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (59, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (59, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (59, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (59, 90, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (59, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (59, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (59, 110, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (59, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (59, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (59, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (59, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (59, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (59, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 3, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 5, 107)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 7, 94)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 74, 92)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 82, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 131, 66)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 136, 87)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (60, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 3, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 5, 97)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 7, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 7, 94)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 74, 90)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 82, 75)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 131, 62)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 136, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 136, 87)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (61, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 7, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 7, 94)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 74, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 82, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 136, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 136, 87)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (62, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 117, 49)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 144, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (63, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 48, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 48, 59)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 104, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 117, 49)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 134, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 134, 87)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 141, 60)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 142, 66)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 143, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 143, 76)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 144, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (64, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 48, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 48, 59)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 104, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 117, 49)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 134, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 134, 87)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 141, 60)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 142, 66)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 143, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 143, 76)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 144, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (65, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 39, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 40, 59)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 44, 67)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 76, 91)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 83, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 90, 92)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (66, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 39, 95)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 40, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 40, 59)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 44, 85)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 76, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 83, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 90, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 90, 92)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (67, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 39, 95)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 40, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 40, 59)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 44, 85)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 76, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 83, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 90, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 90, 92)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (68, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 67, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 89, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 100, 76)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 107, 58)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 124, 75)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 125, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 127, 89)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 129, 106)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 152, 90)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 157, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (69, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 67, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 100, 97)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 107, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 107, 58)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 124, 66)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 125, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 127, 99)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 129, 106)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 152, 100)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 157, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (70, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 107, 58)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 124, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 127, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 129, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 129, 106)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 152, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 157, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (71, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 5, 63)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 7, 64)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 60, 96)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 107, 58)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 113, 57)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 132, 75)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 152, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 155, 106)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (72, 167, 90)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 5, 102)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 7, 64)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 60, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 107, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 107, 58)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 113, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 113, 57)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 132, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 152, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 155, 106)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (73, 167, 60)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 54, 36)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 54, 89)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 75, 47)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 75, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 77, 90)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 109, 108)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 118, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 146, 87)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 151, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (74, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 4, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 54, 36)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 54, 89)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 75, 47)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 75, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 77, 100)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 109, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 109, 108)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 118, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 146, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 146, 87)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 151, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (75, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 54, 36)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 54, 89)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 75, 47)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 75, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 77, 100)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 109, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 109, 108)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 118, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 146, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 146, 87)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 151, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (76, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 26, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 27, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 66, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 85, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 89, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 97, 7)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 98, 91)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 118, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 130, 63)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (77, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 26, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 27, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 66, 84)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 85, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 85, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 89, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 89, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 97, 7)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 98, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 98, 91)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 118, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 130, 70)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (78, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 7, 75)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 48, 106)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 71, 16)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 81, 64)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 85, 60)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 117, 49)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 131, 96)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 134, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 142, 63)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (79, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 7, 75)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 9, 103)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 48, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 48, 106)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 71, 16)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 81, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 81, 64)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 85, 60)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 117, 49)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 131, 95)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 134, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 142, 70)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (80, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 17, 92)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 18, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 57, 89)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 60, 84)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 103, 62)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 113, 100)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (81, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 17, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 17, 92)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 18, 66)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 57, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 57, 89)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 60, 68)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 103, 67)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 113, 100)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (82, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 2, 99)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 51, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 52, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 65, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 90, 57)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 106, 4)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 119, 2)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 130, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 165, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (83, 166, 52)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 52, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 79, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 85, 59)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 106, 4)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 117, 49)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 117, 96)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 130, 95)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 160, 43)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 164, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 165, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (84, 166, 52)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 52, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 52, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 79, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 85, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 85, 59)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 106, 4)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 117, 49)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 117, 107)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 130, 104)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 160, 43)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 164, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 165, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (85, 166, 52)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 34, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 35, 102)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 66, 107)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 71, 16)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 81, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 85, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 97, 7)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 135, 96)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (86, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 34, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 34, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 35, 77)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 66, 102)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 71, 16)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 81, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 85, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 85, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 97, 7)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 135, 95)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (87, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 48, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 54, 36)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 60, 63)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 70, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 75, 47)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 77, 76)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 105, 75)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 153, 70)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 154, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 158, 103)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (88, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 48, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 54, 36)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 60, 109)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 70, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 75, 47)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 77, 107)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 105, 75)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 153, 110)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 154, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 154, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 158, 103)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (89, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 9, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 11, 99)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 34, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 35, 102)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 54, 36)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 75, 47)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 90, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 113, 106)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 117, 49)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (90, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 9, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 11, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 34, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 54, 36)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 61, 102)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 75, 47)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 113, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 117, 49)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (91, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (92, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (92, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (92, 23, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (92, 24, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (92, 25, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (92, 54, 36)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (92, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (92, 75, 47)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (92, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (92, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (92, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (92, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (92, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (92, 133, 42)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (92, 133, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (92, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (92, 136, 60)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (92, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (92, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (92, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (93, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (93, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (93, 23, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (93, 24, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (93, 25, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (93, 54, 36)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (93, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (93, 75, 47)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (93, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (93, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (93, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (93, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (93, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (93, 133, 42)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (93, 133, 66)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (93, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (93, 136, 100)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (93, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (93, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (93, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 23, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 24, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 25, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 54, 36)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 75, 47)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 133, 42)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 133, 66)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 136, 100)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (94, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 50, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 54, 36)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 60, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 75, 47)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 77, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 79, 92)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 100, 75)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 146, 94)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (95, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 48, 86)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 70, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 81, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 117, 49)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 133, 42)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 134, 88)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 136, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 138, 103)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 142, 91)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 154, 100)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (96, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 48, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 48, 86)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 70, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 81, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 117, 49)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 133, 42)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 134, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 134, 88)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 136, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 138, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 142, 103)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 154, 75)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (97, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 3, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 6, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 46, 59)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 77, 96)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 86, 92)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 90, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 98, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (98, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 3, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 6, 76)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 46, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 46, 59)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 77, 97)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 86, 92)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 90, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 98, 61)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (99, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 54, 36)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 54, 64)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 57, 88)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 60, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 75, 47)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 75, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 103, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 139, 100)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (100, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 54, 36)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 54, 64)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 57, 88)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 60, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 75, 47)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 75, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 103, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 139, 100)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (101, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 54, 36)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 56, 37)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 75, 47)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 101, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 122, 80)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 127, 91)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 128, 76)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 129, 63)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 136, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 143, 92)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 157, 103)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (102, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 54, 36)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 56, 37)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 75, 47)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 98, 80)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 101, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 136, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (103, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 76, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 79, 67)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 80, 66)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 85, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 90, 92)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 149, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 150, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (104, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 76, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 76, 75)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 79, 70)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 80, 62)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 85, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 90, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 90, 92)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 149, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 150, 63)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (105, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 38, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 41, 75)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 43, 63)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 76, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 91, 109)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 138, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (106, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 19, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 30, 75)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 33, 66)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 37, 109)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 92, 63)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 102, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 103, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 130, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (107, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 48, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 60, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 98, 57)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 100, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 107, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 109, 99)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 113, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (108, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (109, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (109, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (109, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (109, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (109, 32, 107)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (109, 54, 36)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (109, 54, 96)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (109, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (109, 75, 47)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (109, 75, 63)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (109, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (109, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (109, 96, 103)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (109, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (109, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (109, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (109, 156, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (109, 158, 91)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (109, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (110, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (110, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (110, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (110, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (110, 32, 97)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (110, 54, 36)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (110, 54, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (110, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (110, 75, 47)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (110, 75, 109)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (110, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (110, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (110, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (110, 96, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (110, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (110, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (110, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (110, 156, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (110, 158, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (110, 158, 91)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (110, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 52, 96)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 63, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 66, 70)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 89, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 90, 102)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 97, 7)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 97, 107)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 98, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (111, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 52, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 52, 96)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 63, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 66, 111)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 71, 16)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 89, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 89, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 90, 70)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 97, 7)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 97, 63)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 98, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 98, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (112, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 47, 41)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 56, 37)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 59, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 70, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 73, 68)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 74, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 85, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 105, 66)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 109, 95)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 117, 49)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 139, 63)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (113, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 50, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 67, 97)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 100, 107)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 120, 100)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 127, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 129, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 157, 91)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (114, 167, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 79, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 89, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 90, 62)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 92, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 95, 90)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 102, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (115, 168, 67)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 3, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 5, 107)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 7, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 19, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 90, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 96, 94)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 130, 103)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (116, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 5, 85)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 7, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 8, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 19, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 90, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 96, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 96, 94)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 130, 62)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (117, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 4, 103)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 19, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 52, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 63, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 89, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 97, 7)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 97, 107)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 113, 94)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 130, 68)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (118, 165, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 4, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 19, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 52, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 63, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 89, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 97, 7)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 97, 63)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 113, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 113, 94)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 130, 68)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (119, 165, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 5, 84)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 7, 88)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 19, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 77, 64)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 103, 91)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 104, 60)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 105, 103)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 117, 49)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 139, 76)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (120, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 7, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 19, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 77, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 117, 49)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (121, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 74, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 114, 84)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 132, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 134, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 138, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 139, 99)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (122, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (123, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (123, 2, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (123, 19, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (123, 53, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (123, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (123, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (123, 65, 100)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (123, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (123, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (123, 72, 74)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (123, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (123, 76, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (123, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (123, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (123, 90, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (123, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (123, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (123, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (123, 130, 76)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (123, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (123, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 23, 106)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 33, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 36, 112)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 55, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 70, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 74, 99)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 80, 84)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 82, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (124, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 17, 61)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 19, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 19, 76)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 21, 68)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 53, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 60, 103)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 90, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 139, 97)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (125, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 24, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 26, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 28, 70)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 30, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 90, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 96, 63)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 156, 85)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (126, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 2, 68)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 39, 92)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 46, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 65, 97)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 76, 78)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 77, 69)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 86, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (127, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 66, 104)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 79, 95)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 89, 80)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 90, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 97, 7)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 98, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (128, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (129, 1, 73)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (129, 111, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 5, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 5, 62)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 16, 23)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 16, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 16, 92)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 88, 85)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 90, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 90, 91)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 95, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 95, 59)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (130, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 5, 67)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 7, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 16, 23)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 24, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 31, 59)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 35, 66)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 59, 87)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 82, 92)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 85, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 97, 7)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (131, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (132, 116, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (133, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (133, 19, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (133, 51, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (133, 53, 60)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (133, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (133, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (133, 66, 107)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (133, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (133, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (133, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (133, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (133, 89, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (133, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (133, 95, 103)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (133, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (133, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (133, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (133, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (133, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 5, 68)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 7, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 7, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 19, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 31, 63)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 32, 95)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 51, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 53, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 53, 60)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 89, 103)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 95, 96)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 153, 76)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (134, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 15, 63)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 17, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 17, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 18, 96)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 19, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 21, 68)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 38, 76)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 51, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 53, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 53, 60)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 89, 103)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 130, 95)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (135, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 19, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 26, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 26, 82)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 27, 95)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 28, 68)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 51, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 53, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 53, 60)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 79, 63)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 89, 103)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 90, 76)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 95, 96)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (136, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 19, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 45, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 62, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 104, 80)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 117, 49)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 117, 76)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 130, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 141, 99)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (137, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 5, 109)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 7, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 9, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 61, 67)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 63, 61)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 90, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (138, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 5, 97)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 7, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 9, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 61, 95)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 63, 61)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 90, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 97, 7)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (139, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 5, 97)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 49, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 65, 83)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 77, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 90, 95)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 120, 61)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (140, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 5, 109)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 49, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 65, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 77, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 90, 67)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 119, 2)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 120, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (141, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 16, 23)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 19, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 66, 107)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 88, 68)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 95, 66)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 106, 4)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 113, 75)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 119, 2)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 130, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 160, 43)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 161, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (142, 166, 52)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 1, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 54, 36)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 71, 16)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 73, 63)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 77, 62)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 82, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 88, 77)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 131, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 135, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (143, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 19, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 31, 110)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 35, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 36, 104)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 106, 4)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 119, 2)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 130, 70)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 160, 43)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 165, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (144, 166, 52)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 17, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 19, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 21, 104)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 106, 4)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 119, 2)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 130, 70)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 139, 110)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 160, 43)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 164, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (145, 166, 52)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (146, 27, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (146, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (146, 90, 104)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (146, 160, 110)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (146, 165, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (146, 166, 52)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 16, 23)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 16, 96)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 18, 101)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 19, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 88, 102)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 90, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 100, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 107, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 130, 59)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (147, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 16, 23)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 16, 107)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 18, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 18, 101)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 19, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 88, 70)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 90, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 97, 7)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 100, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 107, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 130, 59)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (148, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 16, 23)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 16, 107)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 18, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 18, 101)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 19, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 88, 110)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 90, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 97, 7)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 100, 81)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 107, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 119, 2)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 130, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 130, 59)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (149, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 31, 116)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 48, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 54, 36)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 71, 16)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 103, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 104, 115)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 117, 49)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 131, 117)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 132, 113)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 134, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 142, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 142, 114)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (150, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 2, 3)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 7, 12)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 8, 11)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 10, 53)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 16, 23)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 18, 45)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 19, 39)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 20, 24)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 21, 25)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 29, 38)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 35, 13)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 36, 14)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 37, 18)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 39, 19)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 44, 17)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 47, 41)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 54, 36)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 56, 37)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 58, 40)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 64, 51)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 66, 9)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 69, 55)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 70, 56)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 71, 16)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 72, 32)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 73, 10)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 75, 47)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 78, 54)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 79, 20)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 82, 8)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 88, 15)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 91, 5)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 92, 1)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 92, 59)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 93, 35)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 93, 65)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 94, 31)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 97, 7)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 106, 4)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 114, 50)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 116, 101)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 117, 49)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 118, 34)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 119, 2)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 126, 21)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 128, 22)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 133, 42)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 135, 44)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 140, 46)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 142, 29)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 142, 96)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 143, 33)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 144, 30)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 145, 48)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 147, 28)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 148, 27)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 151, 26)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 159, 6)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 160, 43)
GO
INSERT [dbo].[pokemon_movimiento_forma] ([numero_pokedex], [id_movimiento], [id_forma_aprendizaje]) VALUES (151, 166, 52)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (1, 10)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (1, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (2, 10)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (2, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (3, 10)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (3, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (4, 6)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (5, 6)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (6, 6)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (6, 15)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (7, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (8, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (9, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (10, 2)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (11, 2)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (12, 2)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (12, 15)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (13, 2)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (13, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (14, 2)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (14, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (15, 2)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (15, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (16, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (16, 15)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (17, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (17, 15)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (18, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (18, 15)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (19, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (20, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (21, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (21, 15)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (22, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (22, 15)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (23, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (24, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (25, 4)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (26, 4)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (27, 13)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (28, 13)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (29, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (30, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (31, 13)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (31, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (32, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (33, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (34, 13)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (34, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (35, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (36, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (37, 6)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (38, 6)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (39, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (40, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (41, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (41, 15)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (42, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (42, 15)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (43, 10)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (43, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (44, 10)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (44, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (45, 10)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (45, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (46, 2)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (46, 10)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (47, 2)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (47, 10)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (48, 2)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (48, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (49, 2)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (49, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (50, 13)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (51, 13)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (52, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (53, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (54, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (55, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (56, 8)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (57, 8)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (58, 6)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (59, 6)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (60, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (61, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (62, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (62, 8)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (63, 11)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (64, 12)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (65, 13)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (66, 8)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (67, 8)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (68, 8)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (69, 10)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (69, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (70, 10)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (70, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (71, 10)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (71, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (72, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (72, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (73, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (73, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (74, 12)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (74, 13)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (75, 12)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (75, 13)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (76, 12)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (76, 13)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (77, 6)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (78, 6)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (79, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (79, 11)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (80, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (80, 11)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (81, 4)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (82, 4)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (83, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (83, 15)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (84, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (84, 15)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (85, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (85, 15)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (86, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (86, 7)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (87, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (87, 7)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (88, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (89, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (90, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (91, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (91, 7)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (92, 5)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (92, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (93, 5)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (93, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (94, 5)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (94, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (95, 12)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (95, 13)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (96, 11)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (97, 11)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (98, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (99, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (100, 4)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (101, 4)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (102, 10)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (102, 11)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (103, 10)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (103, 11)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (104, 13)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (105, 13)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (106, 8)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (107, 8)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (108, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (109, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (110, 14)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (111, 12)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (111, 13)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (112, 12)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (112, 13)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (113, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (114, 10)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (115, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (116, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (117, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (118, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (119, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (120, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (121, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (121, 11)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (122, 11)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (123, 2)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (123, 15)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (124, 7)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (124, 11)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (125, 4)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (126, 6)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (127, 2)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (128, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (129, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (130, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (130, 15)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (131, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (131, 7)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (132, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (133, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (134, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (135, 4)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (136, 6)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (137, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (138, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (138, 12)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (139, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (139, 12)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (140, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (140, 12)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (141, 1)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (141, 12)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (142, 12)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (142, 15)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (143, 9)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (144, 7)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (144, 15)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (145, 4)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (145, 15)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (146, 6)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (146, 15)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (147, 3)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (148, 3)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (149, 3)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (149, 15)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (150, 11)
GO
INSERT [dbo].[pokemon_tipo] ([numero_pokedex], [id_tipo]) VALUES (151, 11)
GO
SET IDENTITY_INSERT [dbo].[tipo] ON 
GO
INSERT [dbo].[tipo] ([id_tipo], [nombre], [id_tipo_ataque]) VALUES (1, N'Agua', 2)
GO
INSERT [dbo].[tipo] ([id_tipo], [nombre], [id_tipo_ataque]) VALUES (2, N'Bicho', 1)
GO
INSERT [dbo].[tipo] ([id_tipo], [nombre], [id_tipo_ataque]) VALUES (3, N'Dragón', 2)
GO
INSERT [dbo].[tipo] ([id_tipo], [nombre], [id_tipo_ataque]) VALUES (4, N'Eléctrico', 2)
GO
INSERT [dbo].[tipo] ([id_tipo], [nombre], [id_tipo_ataque]) VALUES (5, N'Fantasma', 1)
GO
INSERT [dbo].[tipo] ([id_tipo], [nombre], [id_tipo_ataque]) VALUES (6, N'Fuego', 2)
GO
INSERT [dbo].[tipo] ([id_tipo], [nombre], [id_tipo_ataque]) VALUES (7, N'Hielo', 2)
GO
INSERT [dbo].[tipo] ([id_tipo], [nombre], [id_tipo_ataque]) VALUES (8, N'Lucha', 1)
GO
INSERT [dbo].[tipo] ([id_tipo], [nombre], [id_tipo_ataque]) VALUES (9, N'Normal', 1)
GO
INSERT [dbo].[tipo] ([id_tipo], [nombre], [id_tipo_ataque]) VALUES (10, N'Planta', 2)
GO
INSERT [dbo].[tipo] ([id_tipo], [nombre], [id_tipo_ataque]) VALUES (11, N'Psíquico', 2)
GO
INSERT [dbo].[tipo] ([id_tipo], [nombre], [id_tipo_ataque]) VALUES (12, N'Roca', 1)
GO
INSERT [dbo].[tipo] ([id_tipo], [nombre], [id_tipo_ataque]) VALUES (13, N'Tierra', 1)
GO
INSERT [dbo].[tipo] ([id_tipo], [nombre], [id_tipo_ataque]) VALUES (14, N'Veneno', 1)
GO
INSERT [dbo].[tipo] ([id_tipo], [nombre], [id_tipo_ataque]) VALUES (15, N'Volador', 1)
GO
SET IDENTITY_INSERT [dbo].[tipo] OFF
GO
SET IDENTITY_INSERT [dbo].[tipo_ataque] ON 
GO
INSERT [dbo].[tipo_ataque] ([id_tipo_ataque], [tipo]) VALUES (1, N'Físico')
GO
INSERT [dbo].[tipo_ataque] ([id_tipo_ataque], [tipo]) VALUES (2, N'Especial')
GO
SET IDENTITY_INSERT [dbo].[tipo_ataque] OFF
GO
INSERT [dbo].[tipo_evolucion] ([id_tipo_evolucion], [tipo_evolucion]) VALUES (1, N'Nivel')
GO
INSERT [dbo].[tipo_evolucion] ([id_tipo_evolucion], [tipo_evolucion]) VALUES (2, N'Piedra')
GO
INSERT [dbo].[tipo_evolucion] ([id_tipo_evolucion], [tipo_evolucion]) VALUES (3, N'Intercambio')
GO
INSERT [dbo].[tipo_forma_aprendizaje] ([id_tipo_aprendizaje], [tipo_aprendizaje]) VALUES (1, N'MT')
GO
INSERT [dbo].[tipo_forma_aprendizaje] ([id_tipo_aprendizaje], [tipo_aprendizaje]) VALUES (2, N'MO')
GO
INSERT [dbo].[tipo_forma_aprendizaje] ([id_tipo_aprendizaje], [tipo_aprendizaje]) VALUES (3, N'Nivel')
GO
INSERT [dbo].[tipo_piedra] ([id_tipo_piedra], [nombre_piedra]) VALUES (1, N'Piedra trueno')
GO
INSERT [dbo].[tipo_piedra] ([id_tipo_piedra], [nombre_piedra]) VALUES (2, N'Piedra fuego')
GO
INSERT [dbo].[tipo_piedra] ([id_tipo_piedra], [nombre_piedra]) VALUES (3, N'Piedra agua')
GO
INSERT [dbo].[tipo_piedra] ([id_tipo_piedra], [nombre_piedra]) VALUES (4, N'Piedra lunar')
GO
INSERT [dbo].[tipo_piedra] ([id_tipo_piedra], [nombre_piedra]) VALUES (5, N'Piedra hoja')
GO
ALTER TABLE [dbo].[movimiento] ADD  DEFAULT ((0)) FOR [prioridad]
GO
ALTER TABLE [dbo].[estadisticas_base]  WITH CHECK ADD FOREIGN KEY([numero_pokedex])
REFERENCES [dbo].[pokemon] ([numero_pokedex])
GO
ALTER TABLE [dbo].[evoluciona_de]  WITH CHECK ADD FOREIGN KEY([pokemon_evolucionado])
REFERENCES [dbo].[pokemon] ([numero_pokedex])
GO
ALTER TABLE [dbo].[evoluciona_de]  WITH CHECK ADD FOREIGN KEY([pokemon_origen])
REFERENCES [dbo].[pokemon] ([numero_pokedex])
GO
ALTER TABLE [dbo].[forma_aprendizaje]  WITH CHECK ADD FOREIGN KEY([id_tipo_aprendizaje])
REFERENCES [dbo].[tipo_forma_aprendizaje] ([id_tipo_aprendizaje])
GO
ALTER TABLE [dbo].[forma_evolucion]  WITH CHECK ADD FOREIGN KEY([tipo_evolucion])
REFERENCES [dbo].[tipo_evolucion] ([id_tipo_evolucion])
GO
ALTER TABLE [dbo].[MO]  WITH CHECK ADD FOREIGN KEY([id_forma_aprendizaje])
REFERENCES [dbo].[forma_aprendizaje] ([id_forma_aprendizaje])
GO
ALTER TABLE [dbo].[movimiento]  WITH CHECK ADD FOREIGN KEY([id_tipo])
REFERENCES [dbo].[tipo] ([id_tipo])
GO
ALTER TABLE [dbo].[movimiento_efecto_secundario]  WITH CHECK ADD FOREIGN KEY([id_efecto_secundario])
REFERENCES [dbo].[efecto_secundario] ([id_efecto_secundario])
GO
ALTER TABLE [dbo].[movimiento_efecto_secundario]  WITH CHECK ADD FOREIGN KEY([id_movimiento])
REFERENCES [dbo].[movimiento] ([id_movimiento])
GO
ALTER TABLE [dbo].[MT]  WITH CHECK ADD FOREIGN KEY([id_forma_aprendizaje])
REFERENCES [dbo].[forma_aprendizaje] ([id_forma_aprendizaje])
GO
ALTER TABLE [dbo].[nivel_aprendizaje]  WITH CHECK ADD FOREIGN KEY([id_forma_aprendizaje])
REFERENCES [dbo].[forma_aprendizaje] ([id_forma_aprendizaje])
GO
ALTER TABLE [dbo].[nivel_evolucion]  WITH CHECK ADD FOREIGN KEY([id_forma_evolucion])
REFERENCES [dbo].[forma_evolucion] ([id_forma_evolucion])
GO
ALTER TABLE [dbo].[piedra]  WITH CHECK ADD FOREIGN KEY([id_forma_evolucion])
REFERENCES [dbo].[forma_evolucion] ([id_forma_evolucion])
GO
ALTER TABLE [dbo].[piedra]  WITH CHECK ADD FOREIGN KEY([id_tipo_piedra])
REFERENCES [dbo].[tipo_piedra] ([id_tipo_piedra])
GO
ALTER TABLE [dbo].[pokemon_forma_evolucion]  WITH CHECK ADD FOREIGN KEY([id_forma_evolucion])
REFERENCES [dbo].[forma_evolucion] ([id_forma_evolucion])
GO
ALTER TABLE [dbo].[pokemon_forma_evolucion]  WITH CHECK ADD FOREIGN KEY([numero_pokedex])
REFERENCES [dbo].[pokemon] ([numero_pokedex])
GO
ALTER TABLE [dbo].[pokemon_movimiento_forma]  WITH CHECK ADD FOREIGN KEY([id_forma_aprendizaje])
REFERENCES [dbo].[forma_aprendizaje] ([id_forma_aprendizaje])
GO
ALTER TABLE [dbo].[pokemon_movimiento_forma]  WITH CHECK ADD FOREIGN KEY([id_movimiento])
REFERENCES [dbo].[movimiento] ([id_movimiento])
GO
ALTER TABLE [dbo].[pokemon_movimiento_forma]  WITH CHECK ADD FOREIGN KEY([numero_pokedex])
REFERENCES [dbo].[pokemon] ([numero_pokedex])
GO
ALTER TABLE [dbo].[pokemon_tipo]  WITH CHECK ADD FOREIGN KEY([id_tipo])
REFERENCES [dbo].[tipo] ([id_tipo])
GO
ALTER TABLE [dbo].[pokemon_tipo]  WITH CHECK ADD FOREIGN KEY([numero_pokedex])
REFERENCES [dbo].[pokemon] ([numero_pokedex])
GO
ALTER TABLE [dbo].[tipo]  WITH CHECK ADD FOREIGN KEY([id_tipo_ataque])
REFERENCES [dbo].[tipo_ataque] ([id_tipo_ataque])
GO
