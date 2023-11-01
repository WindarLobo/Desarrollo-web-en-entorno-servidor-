DROP DATABASE IF EXISTS [InstitutoMontecastelo]
GO
CREATE DATABASE [InstitutoMontecastelo]
GO
USE [InstitutoMontecastelo]
GO
-- Creación de tabla Estudiantes
CREATE TABLE [dbo].[Estudiantes](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Nombre] [nvarchar](50) NOT NULL,
    [Edad] [int] NOT NULL,
    [Curso] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Estudiantes] PRIMARY KEY CLUSTERED 
(
    [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Creación de tabla Profesores
CREATE TABLE [dbo].[Profesores](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Nombre] [nvarchar](50) NOT NULL,
    [Edad] [int] NOT NULL,
    [Materia] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Profesores] PRIMARY KEY CLUSTERED 
(
    [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Creación de tabla Asignaturas
CREATE TABLE [dbo].[Asignaturas] (
  id INT NOT NULL PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(255)
);
GO

-- Creación de tabla Matriculas
CREATE TABLE [dbo].[Matriculas](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [EstudianteId] [int] NOT NULL,
    [AsignaturaId] [int] NOT NULL,
 CONSTRAINT [PK_Matriculas] PRIMARY KEY CLUSTERED 
(
    [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Crear la tabla de usuarios
CREATE TABLE [dbo].[Logins] (
    [Id] INT IDENTITY(1,1) NOT NULL,
    [Username] NVARCHAR(50) NOT NULL,
    [Password] NVARCHAR(50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

-- Inserción de datos de ejemplo
INSERT INTO [dbo].[Estudiantes] ([Nombre], [Edad], [Curso]) VALUES ('Juan Perez', 15, '1º ESO')
INSERT INTO [dbo].[Estudiantes] ([Nombre], [Edad], [Curso]) VALUES ('Maria Rodriguez', 16, '2º ESO')
INSERT INTO [dbo].[Estudiantes] ([Nombre], [Edad], [Curso]) VALUES ('Carlos Fernandez', 14, '3º ESO')

INSERT INTO [dbo].[Profesores] ([Nombre], [Edad], [Materia]) VALUES ('Ana Lopez', 32, 'Matematicas')
INSERT INTO [dbo].[Profesores] ([Nombre], [Edad], [Materia]) VALUES ('Pedro Martinez', 45, 'Lengua')
INSERT INTO [dbo].[Profesores] ([Nombre], [Edad], [Materia]) VALUES ('Maria Garcia', 28, 'Ciencias')

INSERT INTO Asignaturas (id, nombre, descripcion) VALUES (1, 'Programación en C#', 'Curso de programación en C#');
INSERT INTO Asignaturas (id, nombre, descripcion) VALUES (2, 'Desarrollo de aplicaciones web', 'Curso de desarrollo de aplicaciones web con ASP.NET');
INSERT INTO Asignaturas (id, nombre, descripcion) VALUES (3, 'Bases de datos', 'Curso de bases de datos con SQL Server');
INSERT INTO Asignaturas (id, nombre, descripcion) VALUES (4, 'Diseño de interfaces', 'Curso de diseño de interfaces de usuario');
INSERT INTO Asignaturas (id, nombre, descripcion) VALUES (5, 'Programación orientada a objetos', 'Curso de programación orientada a objetos');
INSERT INTO Asignaturas (id, nombre, descripcion) VALUES (6, 'Redes de computadoras', 'Curso de redes de computadoras');
INSERT INTO Asignaturas (id, nombre, descripcion) VALUES (7, 'Sistemas operativos', 'Curso de sistemas operativos');
INSERT INTO Asignaturas (id, nombre, descripcion) VALUES (8, 'Ingeniería de software', 'Curso de ingeniería de software');
INSERT INTO Asignaturas (id, nombre, descripcion) VALUES (9, 'Inteligencia artificial', 'Curso de inteligencia artificial');
INSERT INTO Asignaturas (id, nombre, descripcion) VALUES (10, 'Criptografía', 'Curso de criptografía y seguridad informática');

INSERT INTO [dbo].[Matriculas] ([EstudianteId], [AsignaturaId]) VALUES (1, 1)
INSERT INTO [dbo].[Matriculas] ([EstudianteId], [AsignaturaId]) VALUES (1, 2)
INSERT INTO [dbo].[Matriculas] ([EstudianteId], [AsignaturaId]) VALUES (2, 1)
INSERT INTO [dbo].[Matriculas] ([EstudianteId], [AsignaturaId]) VALUES (2, 3)
INSERT INTO [dbo].[Matriculas] ([EstudianteId], [AsignaturaId]) VALUES (3, 2)
INSERT INTO [dbo].[Matriculas] ([EstudianteId], [AsignaturaId]) VALUES (3, 3)

INSERT INTO [dbo].[Logins] ([Username], [Password])
VALUES ('usuario1', 'clave1'),
       ('usuario2', 'clave2'),
       ('usuario3', 'clave3');