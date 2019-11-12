USE [master]
GO
/****** Object:  Database [TPF2019]    Script Date: 11/11/2019 21:41:48 ******/
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
/****** Object:  Table [dbo].[Productos]    Script Date: 11/11/2019 21:41:48 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Producto__72AFBCC69073BDFF] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarProducto]    Script Date: 11/11/2019 21:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarProducto]

@nombre varchar(50), @marca varchar(50), @color varchar(20), @talle float, @stock int, @precio float

AS

IF NOT EXISTS (SELECT nombre FROM Productos WHERE nombre=@nombre)
	INSERT INTO Productos (nombre, marca, color, talle, stock, precio, borrado) VALUES (@nombre, @marca, @color, @talle, @stock, @precio, 0)
ELSE
	UPDATE Productos SET nombre=@nombre, marca=@marca, color=@color, talle=@talle, stock=@stock, precio=@precio, borrado=1
GO
/****** Object:  StoredProcedure [dbo].[EliminarProducto]    Script Date: 11/11/2019 21:41:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarProducto]

@nombre varchar(50)

AS 

-- Realizo un borrado logico
IF EXISTS (SELECT nombre FROM Productos WHERE nombre=@nombre)
	UPDATE Productos SET borrado=1

-- Si realmente quisiera borrar un producto escribiria
-- DELETE FROM Productos WHERE nombre=@nombre
GO
USE [master]
GO
ALTER DATABASE [TPF2019] SET  READ_WRITE 
GO
