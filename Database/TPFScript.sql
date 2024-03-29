USE [master]
GO
/****** Object:  Database [TPF2019]    Script Date: 28/11/2019 09:07:58 ******/
CREATE DATABASE [TPF2019]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TPF2019', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TPF2019.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TPF2019_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TPF2019_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TPF2019] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TPF2019].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TPF2019] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TPF2019] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TPF2019] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TPF2019] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TPF2019] SET ARITHABORT OFF 
GO
ALTER DATABASE [TPF2019] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TPF2019] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TPF2019] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TPF2019] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TPF2019] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TPF2019] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TPF2019] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TPF2019] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TPF2019] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TPF2019] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TPF2019] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TPF2019] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TPF2019] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TPF2019] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TPF2019] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TPF2019] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TPF2019] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TPF2019] SET RECOVERY FULL 
GO
ALTER DATABASE [TPF2019] SET  MULTI_USER 
GO
ALTER DATABASE [TPF2019] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TPF2019] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TPF2019] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TPF2019] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TPF2019] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TPF2019', N'ON'
GO
ALTER DATABASE [TPF2019] SET QUERY_STORE = OFF
GO
USE [TPF2019]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 28/11/2019 09:07:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[marca] [varchar](50) NOT NULL,
	[color] [varchar](20) NOT NULL,
	[talle] [float] NOT NULL,
	[stock] [int] NOT NULL,
	[precio] [float] NOT NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK__Producto__FF341C0D8F813BCC] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([id_producto], [nombre], [marca], [color], [talle], [stock], [precio], [borrado]) VALUES (1, N'PRUEBA6', N'ADIDAS', N'ROJO', 23, 5, 5000, 1)
INSERT [dbo].[Productos] ([id_producto], [nombre], [marca], [color], [talle], [stock], [precio], [borrado]) VALUES (2, N'FASTMODEL', N'ADIDAS', N'NEGRO', 49, 0, 8500, 1)
INSERT [dbo].[Productos] ([id_producto], [nombre], [marca], [color], [talle], [stock], [precio], [borrado]) VALUES (3, N'FASTER', N'NIKE', N'ROJO', 32, 4, 3000, 1)
INSERT [dbo].[Productos] ([id_producto], [nombre], [marca], [color], [talle], [stock], [precio], [borrado]) VALUES (4, N'TEST', N'ADIDAS', N'VERDE', 32, 9, 5000, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [marca], [color], [talle], [stock], [precio], [borrado]) VALUES (5, N'TEST2', N'ADIDAS', N'VERDE', 5, 3, 3000, 1)
INSERT [dbo].[Productos] ([id_producto], [nombre], [marca], [color], [talle], [stock], [precio], [borrado]) VALUES (6, N'RAPIDO', N'ADIDAS', N'VERDE', 3, 0, 3000, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [marca], [color], [talle], [stock], [precio], [borrado]) VALUES (7, N'TEST3', N'ADIDAS', N'VERDE', 34, 28, 6000, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [marca], [color], [talle], [stock], [precio], [borrado]) VALUES (8, N'Test4', N'ADIDAS', N'VERDE', 3, 3, 3, 1)
INSERT [dbo].[Productos] ([id_producto], [nombre], [marca], [color], [talle], [stock], [precio], [borrado]) VALUES (9, N'TEST5', N'ADIDAS', N'VERDE', 23, 23, 23, 1)
INSERT [dbo].[Productos] ([id_producto], [nombre], [marca], [color], [talle], [stock], [precio], [borrado]) VALUES (10, N'TEST6', N'NIKE', N'VERDE', 32, 5, 3, 1)
INSERT [dbo].[Productos] ([id_producto], [nombre], [marca], [color], [talle], [stock], [precio], [borrado]) VALUES (11, N'RAPID', N'NIKE', N'VERDE', 3, 2, 3000, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [marca], [color], [talle], [stock], [precio], [borrado]) VALUES (12, N'PRUEBA', N'NIKE', N'AZUL', 32, 11, 3000, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [marca], [color], [talle], [stock], [precio], [borrado]) VALUES (13, N'NUEVO', N'ADIDAS', N'VERDE', 32, 4, 3000, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [marca], [color], [talle], [stock], [precio], [borrado]) VALUES (14, N'PRUEBA57', N'NIKE', N'VERDE', 3, 9, 51, 0)
SET IDENTITY_INSERT [dbo].[Productos] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Producto__72AFBCC69073BDFF]    Script Date: 28/11/2019 09:07:58 ******/
ALTER TABLE [dbo].[Productos] ADD  CONSTRAINT [UQ__Producto__72AFBCC69073BDFF] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarProducto]    Script Date: 28/11/2019 09:07:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarProducto]

@id_producto int, @nombre varchar(50), @marca varchar(50), @color varchar(20), @talle float, @stock int, @precio float

AS

IF EXISTS (SELECT id_producto, nombre FROM Productos WHERE id_producto=@id_producto OR nombre=@nombre)
	UPDATE Productos SET nombre=@nombre, marca=@marca, color=@color, talle=@talle, stock=@stock, precio=@precio, borrado=0 WHERE id_producto=@id_producto OR nombre=@nombre
ELSE
	INSERT INTO Productos (nombre, marca, color, talle, stock, precio, borrado) VALUES (@nombre, @marca, @color, @talle, @stock, @precio, 0)

/*
IF NOT EXISTS (SELECT nombre FROM Productos WHERE nombre=@nombre)
	INSERT INTO Productos (nombre, marca, color, talle, stock, precio, borrado) VALUES (@nombre, @marca, @color, @talle, @stock, @precio, 0)
ELSE
	UPDATE Productos SET nombre=@nombre, marca=@marca, color=@color, talle=@talle, stock=@stock, precio=@precio, borrado=0 WHERE nombre=@nombre
	*/
GO
/****** Object:  StoredProcedure [dbo].[decrementarStock]    Script Date: 28/11/2019 09:07:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[decrementarStock]

@id_producto int, @dec int

AS

IF EXISTS (SELECT id_producto FROM Productos WHERE id_producto=@id_producto)
	DECLARE @stock AS int
	SET @stock = (SELECT stock FROM Productos WHERE id_producto=@id_producto)
	UPDATE Productos SET stock=@stock-@dec WHERE id_producto=@id_producto
GO
/****** Object:  StoredProcedure [dbo].[EliminarProducto]    Script Date: 28/11/2019 09:07:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarProducto]

@nombre varchar(50)

AS 

-- Realizo un borrado logico
IF EXISTS (SELECT nombre FROM Productos WHERE nombre=@nombre)
	UPDATE Productos SET borrado=1 WHERE nombre=@nombre

-- Si realmente quisiera borrar un producto escribiria
-- DELETE FROM Productos WHERE nombre=@nombre
GO
USE [master]
GO
ALTER DATABASE [TPF2019] SET  READ_WRITE 
GO
