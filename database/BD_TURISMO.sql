USE [master]
GO
/****** Object:  Database [BD_TURISMO]    Script Date: 4/27/2023 9:39:18 PM ******/
CREATE DATABASE [BD_TURISMO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD_TURISMO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.RONALD\MSSQL\DATA\BD_TURISMO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD_TURISMO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.RONALD\MSSQL\DATA\BD_TURISMO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BD_TURISMO] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_TURISMO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD_TURISMO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD_TURISMO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD_TURISMO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD_TURISMO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD_TURISMO] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD_TURISMO] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BD_TURISMO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD_TURISMO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD_TURISMO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD_TURISMO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD_TURISMO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD_TURISMO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD_TURISMO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD_TURISMO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD_TURISMO] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BD_TURISMO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD_TURISMO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD_TURISMO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD_TURISMO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD_TURISMO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD_TURISMO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD_TURISMO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD_TURISMO] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BD_TURISMO] SET  MULTI_USER 
GO
ALTER DATABASE [BD_TURISMO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD_TURISMO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD_TURISMO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD_TURISMO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD_TURISMO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BD_TURISMO] SET QUERY_STORE = OFF
GO
USE [BD_TURISMO]
GO
/****** Object:  User [henry15ea]    Script Date: 4/27/2023 9:39:18 PM ******/

/****** Object:  Table [dbo].[paquetes]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paquetes](
	[idpaquete] [varchar](120) NOT NULL,
	[nombre] [varchar](100) NULL,
	[descripcion] [varchar](300) NULL,
	[direccion] [varchar](200) NULL,
	[idmunicipio] [varchar](120) NULL,
	[idcategoria] [varchar](120) NULL,
	[img] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[idpaquete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vpaquetes]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--vista paquetes
	create view [dbo].[vpaquetes]
	as
	select * from paquetes
	--select * from vpaquetes
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[idusuario] [varchar](120) NOT NULL,
	[nombre] [varchar](100) NULL,
	[apellido] [varchar](100) NULL,
	[edad] [tinyint] NULL,
	[telefono] [varchar](15) NULL,
	[direccion] [varchar](120) NULL,
	[correo] [varchar](100) NULL,
	[id_rol] [varchar](64) NOT NULL,
	[fechacreacion] [datetime2](7) NULL,
	[estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idusuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vusuarios]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--vista usuarios
	create view [dbo].[vusuarios]
	as
	select * from usuarios
	--select * from vusuarios
GO
/****** Object:  Table [dbo].[paqueteCalificacion]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paqueteCalificacion](
	[id_calificacion] [varchar](120) NOT NULL,
	[id_usuario] [varchar](120) NOT NULL,
	[id_paquete] [varchar](120) NOT NULL,
	[nota] [bit] NULL,
	[fecha] [datetime2](7) NULL,
 CONSTRAINT [pk_cal] PRIMARY KEY CLUSTERED 
(
	[id_calificacion] ASC,
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vpaqueteCalificacion]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--vista paqueteCalificacion
	create view [dbo].[vpaqueteCalificacion]
	as
	select * from paqueteCalificacion
	--select * from vpaqueteCalificacion
GO
/****** Object:  Table [dbo].[paquetesdisponible]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paquetesdisponible](
	[idpaqueted] [varchar](120) NOT NULL,
	[idpaquete] [varchar](120) NULL,
	[precio] [money] NULL,
	[cupos_disp] [int] NULL,
	[cuposllenos] [int] NULL,
	[fechainicial] [datetime] NULL,
	[fechafinal] [datetime] NULL,
	[estado] [bit] NULL,
	[fechreg] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idpaqueted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vpdisponiblesinfo]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vpdisponiblesinfo] ([idpaqueted],[nombre],[descripcion],[direccion],[img],[precio],[cupos_disp],[cuposllenos]
,[fechainicial],[fechafinal],[registro],[estado]) as 
select p.idpaqueted ,p2.nombre ,p2.descripcion, p2.direccion ,
p2.img ,p.precio ,p.cupos_disp ,p.cuposllenos ,p.fechainicial ,p.fechafinal ,p.fechreg ,p.estado  
from paquetesdisponible p inner join paquetes p2 on p.idpaquete = p2.idpaquete ;
GO
/****** Object:  Table [dbo].[cuenta]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuenta](
	[id_cuenta] [varchar](120) NOT NULL,
	[id_usuario] [varchar](120) NOT NULL,
	[u_name] [varchar](50) NULL,
	[u_pass] [varchar](50) NULL,
	[u_state] [bit] NULL,
	[u_registro] [datetime2](7) NULL,
 CONSTRAINT [pk_cuenta] PRIMARY KEY CLUSTERED 
(
	[id_cuenta] ASC,
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vcuenta]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--vista cuenta
	create view [dbo].[vcuenta]
	as
	select * from cuenta
	--select * from vcuenta
GO
/****** Object:  Table [dbo].[telefono]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[telefono](
	[idtelefono] [varchar](120) NOT NULL,
	[telefono] [varchar](20) NULL,
	[idusuario] [varchar](120) NULL,
PRIMARY KEY CLUSTERED 
(
	[idtelefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vtelefono]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--vista telefono
	create view [dbo].[vtelefono]
	as
	select * from telefono
	--select * from vtelefono
GO
/****** Object:  View [dbo].[vpaquetesdisponible]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--vista paquetesdisponible
	create view [dbo].[vpaquetesdisponible]
	as
	select * from paquetesdisponible
	--select * from vpaquetesdisponible
GO
/****** Object:  Table [dbo].[encabezado]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[encabezado](
	[idencabezado] [varchar](120) NOT NULL,
	[idcuenta] [varchar](120) NOT NULL,
	[idformapago] [varchar](120) NULL,
	[descuento] [money] NULL,
	[monto] [money] NULL,
	[fecha] [datetime2](7) NULL,
	[state_emited] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idencabezado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vencabezado]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--vista encabezado
	create view [dbo].[vencabezado]
	as
	select * from encabezado
	--select * from vencabezado
GO
/****** Object:  Table [dbo].[detalle]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle](
	[iddetalle] [varchar](120) NOT NULL,
	[idencabezado] [varchar](120) NULL,
	[idpaqueted] [varchar](120) NULL,
	[precio] [money] NULL,
	[descuento] [money] NULL,
	[monto] [money] NULL,
	[cupos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iddetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vdetalle]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--vista detalle
	create view [dbo].[vdetalle]
	as
	select * from detalle
	--select * from vdetalle
GO
/****** Object:  Table [dbo].[adicionalesdisponible]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adicionalesdisponible](
	[idadicionald] [varchar](120) NOT NULL,
	[idpaqueted] [varchar](120) NULL,
	[idadicional] [varchar](120) NULL,
PRIMARY KEY CLUSTERED 
(
	[idadicionald] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vadicionalesdisponible]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--vista adicionalesdisponible
	create view [dbo].[vadicionalesdisponible]
	as
	select * from adicionalesdisponible
	--select * from vadicionalesdisponible
GO
/****** Object:  Table [dbo].[personasextras]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personasextras](
	[idagregado] [varchar](120) NOT NULL,
	[nombre] [varchar](100) NULL,
	[apellido] [varchar](100) NULL,
	[n_doc] [varchar](50) NULL,
	[edad] [tinyint] NULL,
	[iddetalle] [varchar](120) NULL,
	[idcuenta] [varchar](120) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idagregado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vpersonasextras]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--vista personasextras
	create view [dbo].[vpersonasextras]
	as
	select * from personasextras
	--select * from vpersonasextras
GO
/****** Object:  Table [dbo].[departamentos]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departamentos](
	[iddepartamento] [varchar](120) NOT NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[iddepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[municipios]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[municipios](
	[idmunicipio] [varchar](120) NOT NULL,
	[nombre] [varchar](50) NULL,
	[iddepartamento] [varchar](120) NULL,
PRIMARY KEY CLUSTERED 
(
	[idmunicipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vmunicipiosCompleto]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vmunicipiosCompleto] ([id], [municipio], [departamento], [id_departamento]) AS
SELECT m.idmunicipio, m.nombre, d.nombre, d.iddepartamento
FROM municipios m 
INNER JOIN departamentos d ON m.iddepartamento = d.iddepartamento;
GO
/****** Object:  View [dbo].[vuserdetailAll]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vuserdetailAll]([id_cuenta],[u_name],[id_usuario],[nombre],[apellido],[correo],[id_rol],[u_state]) as 
select c.id_cuenta  ,c.u_name ,c.id_usuario ,u.nombre ,u.apellido ,u.correo ,u.id_rol ,c.u_state  from cuenta c 
INNER  JOIN usuarios u on c.id_usuario = u.idusuario;
GO
/****** Object:  Table [dbo].[categorias]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorias](
	[idcategoria] [varchar](120) NOT NULL,
	[nombre] [varchar](100) NULL,
	[descripcion] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[idcategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vcategorias]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--vista categorias
	create view [dbo].[vcategorias]
	as
	select * from categorias
	--select * from vcategorias
GO
/****** Object:  View [dbo].[vdepartamentos]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--vista departamentos
	create view [dbo].[vdepartamentos]
	as
	select * from departamentos
	--select * from vdepartamentos
GO
/****** Object:  View [dbo].[vmunicipios]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--vista municipios
	create view [dbo].[vmunicipios]
	as
	select * from municipios
	--select * from vmunicipios
GO
/****** Object:  Table [dbo].[rolusuario]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rolusuario](
	[id_role] [varchar](64) NOT NULL,
	[r_name] [varchar](50) NULL,
	[r_registro] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vrolusuario]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--vista rolusuario
	create view [dbo].[vrolusuario]
	as
	select * from rolusuario
	--select * from vrolusuario
GO
/****** Object:  Table [dbo].[adicionales]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adicionales](
	[idadicional] [varchar](120) NOT NULL,
	[nombre] [varchar](100) NULL,
	[descripcion] [varchar](200) NULL,
	[precio] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[idadicional] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vadicionales]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--vista adicionales
	create view [dbo].[vadicionales]
	as
	select * from adicionales
	--select * from vadicionales
GO
/****** Object:  View [dbo].[vadicionalesDetalle]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vadicionalesDetalle]([id_adicional],[id_paquete],[nmb_paquete],[nmb_adicional],[dsc_adicional],[precio_adicional]) as
select a.idadicionald as "id_adicional", p.idpaquete as "id_paquete",p2.nombre as "nmb_paquete" ,a2.nombre "nmb_adicional",
a2.descripcion as "dsc_adicional" ,a2.precio as "precio_adicional"   from adicionalesdisponible  a 
inner join paquetesdisponible  p on a.idpaqueted = p.idpaqueted 
inner join paquetes p2 on p.idpaquete = p2.idpaquete 
inner join adicionales a2 on a.idadicional = a2.idadicional ;
GO
/****** Object:  Table [dbo].[formapago]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[formapago](
	[idformapago] [varchar](120) NOT NULL,
	[metodopago] [varchar](50) NULL,
	[descripcion] [varchar](150) NULL,
	[estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idformapago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vformapago]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--vista formapago
	create view [dbo].[vformapago]
	as
	select * from formapago
	--select * from vformapago
GO
/****** Object:  Table [dbo].[usertoken]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usertoken](
	[id_tkn] [varchar](64) NOT NULL,
	[id_cuenta] [varchar](120) NOT NULL,
	[id_usuario] [varchar](120) NOT NULL,
	[token_id] [varchar](512) NOT NULL,
	[token_time] [datetime] NOT NULL,
	[expiration_time] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tkn] ASC,
	[token_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cuenta] ADD  DEFAULT ('usuario') FOR [u_name]
GO
ALTER TABLE [dbo].[cuenta] ADD  DEFAULT ('0x202CB962AC59075B964B07152D234B70') FOR [u_pass]
GO
ALTER TABLE [dbo].[cuenta] ADD  DEFAULT (getdate()) FOR [u_registro]
GO
ALTER TABLE [dbo].[encabezado] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[encabezado] ADD  DEFAULT ((0)) FOR [state_emited]
GO
ALTER TABLE [dbo].[paqueteCalificacion] ADD  DEFAULT ((0)) FOR [nota]
GO
ALTER TABLE [dbo].[paqueteCalificacion] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[paquetesdisponible] ADD  DEFAULT (getdate()) FOR [fechreg]
GO
ALTER TABLE [dbo].[personasextras] ADD  DEFAULT ((18)) FOR [edad]
GO
ALTER TABLE [dbo].[rolusuario] ADD  DEFAULT ('USER') FOR [r_name]
GO
ALTER TABLE [dbo].[rolusuario] ADD  DEFAULT (getdate()) FOR [r_registro]
GO
ALTER TABLE [dbo].[usertoken] ADD  DEFAULT (getdate()) FOR [token_time]
GO
ALTER TABLE [dbo].[usertoken] ADD  DEFAULT (getdate()) FOR [expiration_time]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT ((18)) FOR [edad]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT ('00-00-00-00') FOR [telefono]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT ('col demno') FOR [direccion]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT (getdate()) FOR [fechacreacion]
GO
ALTER TABLE [dbo].[adicionalesdisponible]  WITH CHECK ADD FOREIGN KEY([idadicional])
REFERENCES [dbo].[adicionales] ([idadicional])
GO
ALTER TABLE [dbo].[adicionalesdisponible]  WITH CHECK ADD FOREIGN KEY([idpaqueted])
REFERENCES [dbo].[paquetesdisponible] ([idpaqueted])
GO
ALTER TABLE [dbo].[cuenta]  WITH CHECK ADD  CONSTRAINT [fk_user] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuarios] ([idusuario])
GO
ALTER TABLE [dbo].[cuenta] CHECK CONSTRAINT [fk_user]
GO
ALTER TABLE [dbo].[detalle]  WITH CHECK ADD FOREIGN KEY([idencabezado])
REFERENCES [dbo].[encabezado] ([idencabezado])
GO
ALTER TABLE [dbo].[detalle]  WITH CHECK ADD FOREIGN KEY([idpaqueted])
REFERENCES [dbo].[paquetesdisponible] ([idpaqueted])
GO
ALTER TABLE [dbo].[encabezado]  WITH CHECK ADD FOREIGN KEY([idformapago])
REFERENCES [dbo].[formapago] ([idformapago])
GO
ALTER TABLE [dbo].[encabezado]  WITH CHECK ADD  CONSTRAINT [fk_uen] FOREIGN KEY([idcuenta])
REFERENCES [dbo].[usuarios] ([idusuario])
GO
ALTER TABLE [dbo].[encabezado] CHECK CONSTRAINT [fk_uen]
GO
ALTER TABLE [dbo].[municipios]  WITH CHECK ADD FOREIGN KEY([iddepartamento])
REFERENCES [dbo].[departamentos] ([iddepartamento])
GO
ALTER TABLE [dbo].[paqueteCalificacion]  WITH CHECK ADD FOREIGN KEY([id_paquete])
REFERENCES [dbo].[paquetes] ([idpaquete])
GO
ALTER TABLE [dbo].[paqueteCalificacion]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuarios] ([idusuario])
GO
ALTER TABLE [dbo].[paquetes]  WITH CHECK ADD FOREIGN KEY([idcategoria])
REFERENCES [dbo].[categorias] ([idcategoria])
GO
ALTER TABLE [dbo].[paquetes]  WITH CHECK ADD FOREIGN KEY([idmunicipio])
REFERENCES [dbo].[municipios] ([idmunicipio])
GO
ALTER TABLE [dbo].[paquetesdisponible]  WITH CHECK ADD FOREIGN KEY([idpaquete])
REFERENCES [dbo].[paquetes] ([idpaquete])
GO
ALTER TABLE [dbo].[personasextras]  WITH CHECK ADD FOREIGN KEY([iddetalle])
REFERENCES [dbo].[detalle] ([iddetalle])
GO
ALTER TABLE [dbo].[personasextras]  WITH CHECK ADD  CONSTRAINT [fk_extras] FOREIGN KEY([idcuenta])
REFERENCES [dbo].[usuarios] ([idusuario])
GO
ALTER TABLE [dbo].[personasextras] CHECK CONSTRAINT [fk_extras]
GO
ALTER TABLE [dbo].[telefono]  WITH CHECK ADD FOREIGN KEY([idusuario])
REFERENCES [dbo].[usuarios] ([idusuario])
GO
ALTER TABLE [dbo].[usertoken]  WITH CHECK ADD  CONSTRAINT [fk_usertkn] FOREIGN KEY([id_cuenta], [id_usuario])
REFERENCES [dbo].[cuenta] ([id_cuenta], [id_usuario])
GO
ALTER TABLE [dbo].[usertoken] CHECK CONSTRAINT [fk_usertkn]
GO
ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD  CONSTRAINT [fk_rl] FOREIGN KEY([id_rol])
REFERENCES [dbo].[rolusuario] ([id_role])
GO
ALTER TABLE [dbo].[usuarios] CHECK CONSTRAINT [fk_rl]
GO
/****** Object:  StoredProcedure [dbo].[SP_ActuAdicionales]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ActuAdicionales]
	@id as varchar(120),
	@nom as varchar(100),
	@desc as varchar(200),
	@precio money
	as
	begin
		begin tran
			begin try
				update adicionales
				set nombre=@nom,
				descripcion=@desc,
				precio=@precio
				where idadicional=@id
				if(@id='')
					begin 
						rollback 
						select '-1' as resp
					end
				else
					begin
						commit
						select '1' as resp
					end
			end try
			begin catch
				rollback
				select @@ERROR as resp
			end catch
	end
	--exec SP_ActuAdicionales '1','adicional111','descripcion111',3.5
	--select * from vadicionales 
GO
/****** Object:  StoredProcedure [dbo].[SP_ActuAdicionalesDisponible]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ActuAdicionalesDisponible]
	@id as varchar(120),
	@idpd varchar(120) ,
	@idad varchar(120) 
	as
	begin
		begin tran
			begin try
				update adicionalesdisponible
				set idpaqueted=@idpd,
				idadicional=@idad
				where idadicionald=@id
				if(@id='')
					begin 
						rollback 
						select '-1' as resp
					end
				else
					begin
						commit
						select '1' as resp
					end
			end try
			begin catch
				rollback
				select @@ERROR as resp
			end catch
	end
	--exec SP_ActuAdicionalesDisponible 1,2,2
	--select * from vadicionalesdisponible 
GO
/****** Object:  StoredProcedure [dbo].[SP_ActuCategorias]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ActuCategorias]
	@id as varchar(120),
	@nom as varchar(100),
	@des as varchar(300)
	as
	begin
		begin tran
			begin try
				update categorias
				set nombre=@nom,
					descripcion=@des
				where idcategoria=@id
				if(@id='')
					begin 
						rollback 
						select '-1' as resp
					end
				else
					begin
						commit
						select '1' as resp
					end
			end try
			begin catch
				rollback
				select @@ERROR as resp
			end catch
	end
	--exec SP_ActuCategorias '1','categoria111','descripcion111'
	--select * from vcategorias 
GO
/****** Object:  StoredProcedure [dbo].[SP_ActuCuenta]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ActuCuenta]
	@id as varchar(120),
	@idu varchar(120) ,
	@uname varchar(50),
	@upass varchar(50),
	@ustate bit
	as
	begin
		begin tran
			begin try
				update cuenta
				set id_usuario=@idu,
				u_name=@uname,
				u_pass=@upass,
				u_state=@ustate
				where id_cuenta=@id
				if(@id='')
					begin 
						rollback 
						select '-1' as resp
					end
				else
					begin
						commit
						select '1' as resp
					end
			end try
			begin catch
				rollback
				select @@ERROR as resp
			end catch
	end
	--exec SP_ActuCuenta 1,2,'nombre1111','contra1111',0
	--select * from vcuenta 
GO
/****** Object:  StoredProcedure [dbo].[SP_ActuDepartamentos]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ActuDepartamentos]
	@id as varchar(120),
	@nom as varchar(100)
	as
	begin
		begin tran
			begin try
				update departamentos
				set nombre=@nom
				where iddepartamento=@id
				if(@id='')
					begin 
						rollback 
						select '-1' as resp
					end
				else
					begin
						commit
						select '1' as resp
					end
			end try
			begin catch
				rollback
				select @@ERROR as resp
			end catch
	end
	--exec SP_ActuDepartamentos '1','departamento11100000000000000000000000000000000000000000000000000000000000000'
	--select * from vdepartamentos 
GO
/****** Object:  StoredProcedure [dbo].[SP_ActuDetalle]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ActuDetalle]
	@id as varchar(120),
	@idenc varchar(120) ,
	@idpd varchar(120) ,
	@precio money,
	@descuento money,
	@monto money,
	@cupos int
	as
	begin
		begin tran
			begin try
				update detalle
				set idencabezado=@idenc,
				idpaqueted=@idpd,
				precio=@precio,
				descuento=@descuento,
				monto=@monto,
				cupos=@cupos
				where iddetalle=@id

				if(@id='')
					begin 
						rollback 
						select '-1' as resp
					end
				else
					begin
						commit
						select '1' as resp
					end
			end try
			begin catch
				rollback
				select @@ERROR as resp
			end catch
	end
	--exec SP_ActuDetalle 1,2,2,20.5,20.5,30.5,10
	--select * from vdetalle 
GO
/****** Object:  StoredProcedure [dbo].[SP_ActuEncabezado]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ActuEncabezado]
	@id as varchar(120),
	@idc varchar(120) ,
	@idfpg varchar(120) ,
	@descuento money,
	@monto money
	as
	begin
		begin tran
			begin try
				update encabezado
				set idcuenta=@idc,
				idformapago=@idfpg,
				descuento=@descuento,
				monto=@monto
				where idcuenta=@id

				if(@id='')
					begin 
						rollback 
						select '-1' as resp
					end
				else
					begin
						commit
						select '1' as resp
					end
			end try
			begin catch
				rollback
				select @@ERROR as resp
			end catch
	end
	--exec SP_ActuEncabezado 1,2,2,22.5,66.75
	--select * from vencabezado 
GO
/****** Object:  StoredProcedure [dbo].[SP_ActuFormapago]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ActuFormapago]
	@id as varchar(120),
	@met as varchar(50),
	@desc as varchar(150),
	@est bit
	as
	begin
		begin tran
			begin try
				update formapago
				set metodopago=@met,
				descripcion=@desc,
				estado=@est
				where idformapago=@id
				if(@id='')
					begin 
						rollback 
						select '-1' as resp
					end
				else
					begin
						commit
						select '1' as resp
					end
			end try
			begin catch
				rollback
				select @@ERROR as resp
			end catch
	end
	--exec SP_ActuFormapago '1','forma111','descripcion111',0
	--select * from vformapago 
GO
/****** Object:  StoredProcedure [dbo].[SP_ActuMunicipios]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ActuMunicipios]
	@id as varchar(120),
	@nom as varchar(100),
	@idd as varchar(120)
	as
	begin
		begin tran
			begin try
				update municipios
				set nombre=@nom,
					idmunicipio=@idd
				where idmunicipio=@id
				if(@id='')
					begin 
						rollback 
						select '-1' as resp
					end
				else
					begin
						commit
						select '1' as resp
					end
			end try
			begin catch
				rollback
				select @@ERROR as resp
			end catch
	end
	--exec SP_ActuMunicipios '1','municipio111','2'
	--select * from vmunicipios 
GO
/****** Object:  StoredProcedure [dbo].[SP_ActuPaqueteCalificacion]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ActuPaqueteCalificacion]
	@id as varchar(120),
	@idu varchar(120) ,
	@idp varchar(120) ,
	@nota bit
	as
	begin
		begin tran
			begin try
				update paqueteCalificacion
				set id_usuario=@idu,
				id_paquete=@idp,
				nota=@nota
				where id_calificacion=@id
				if(@id='')
					begin 
						rollback 
						select '-1' as resp
					end
				else
					begin
						commit
						select '1' as resp
					end
			end try
			begin catch
				rollback
				select @@ERROR as resp
			end catch
	end
	--exec SP_ActuPaqueteCalificacion 1,4,4,0
	--select * from vpaqueteCalificacion 
GO
/****** Object:  StoredProcedure [dbo].[SP_ActuPaquetes]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ActuPaquetes]
	@id as varchar(120),
	@nom varchar(100),
	@des varchar(300),
	@dir varchar(200),
	@idmun varchar(120), 
	@idcate varchar(120),
	@img varchar(500)
	as
	begin
		begin tran
			begin try
				update paquetes
				set nombre=@nom,
				descripcion=@des,
				direccion=@dir,
				idmunicipio=@idmun,
				idcategoria=@idcate,
				img=@img
				where idpaquete=@id
				if(@id='')
					begin 
						rollback 
						select '-1' as resp
					end
				else
					begin
						commit
						select '1' as resp
					end
			end try
			begin catch
				rollback
				select @@ERROR as resp
			end catch
	end
	--exec SP_ActuPaquetes '1','Paquete111','descripcion111','direccion111',4,4,'img1111'
	--select * from vpaquetes 
GO
/****** Object:  StoredProcedure [dbo].[SP_ActuPaquetesDisponible]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ActuPaquetesDisponible]
	@id as varchar(120),
	@idp varchar(120),
	@precio money,
	@cdisp int,
	@cllenos int,
	@finicial datetime,
	@ffinal datetime,
	@estado bit
	as
	begin
		begin tran
			begin try
				update paquetesdisponible
				set precio=@precio,
				cupos_disp=@cdisp,
				cuposllenos=@cllenos,
				fechainicial=@finicial,
				fechafinal=@ffinal,
				estado=@estado
				where idpaquete=@id
				if(@id='')
					begin 
						rollback 
						select '-1' as resp
					end
				else
					begin
						commit
						select '1' as resp
					end
			end try
			begin catch
				rollback
				select @@ERROR as resp
			end catch
	end
	--exec SP_ActuPaquetesDisponible 1,2,4.6,50,1,'2023-4-20','2023-4-30',0
	--select * from vpaquetesdisponible 
GO
/****** Object:  StoredProcedure [dbo].[SP_ActuPersonasExtras]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ActuPersonasExtras]
	@id as varchar(120),
	@nombre varchar(100),
	@apellido varchar(100),
	@ndoc varchar(50),
	@edad tinyint ,
	@iddet varchar(120) ,
	@idc varchar(120)
	as
	begin
		begin tran
			begin try
				update personasextras
				set nombre=@nombre,
				apellido=@apellido,
				n_doc=@ndoc,
				edad=@edad,
				iddetalle=@iddet,
				idcuenta=@idc
				where idagregado=@id
		

				if(@id='')
					begin 
						rollback 
						select '-1' as resp
					end
				else
					begin
						commit
						select '1' as resp
					end
			end try
			begin catch
				rollback
				select @@ERROR as resp
			end catch
	end
	--exec SP_ActuPersonasExtras 1,'nombre1111','apellido1111','doc1111',230,2,2
	--select * from vpersonasextras 
GO
/****** Object:  StoredProcedure [dbo].[SP_ActuRolUsuario]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ActuRolUsuario]
	@id as varchar(64),
	@nom as varchar(50)
	as
	begin
		begin tran
			begin try
				update rolusuario
				set r_name=@nom
				where id_role=@id
				if(@id='')
					begin 
						rollback 
						select '-1' as resp
					end
				else
					begin
						commit
						select '1' as resp
					end
			end try
			begin catch
				rollback
				select @@ERROR as resp
			end catch
	end
	--exec SP_ActuRolUsuario '1','rol111'
	--select * from vrolusuario 
GO
/****** Object:  StoredProcedure [dbo].[SP_ActuTelefono]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ActuTelefono]
	@id as varchar(120),
	@tel varchar(20),
	@idu varchar(120) 
	as
	begin
		begin tran
			begin try
				update telefono
				set	telefono=@tel,
				idusuario=@idu	
				where idtelefono=@id
				if(@id='')
					begin 
						rollback 
						select '-1' as resp
					end
				else
					begin
						commit
						select '1' as resp
					end
			end try
			begin catch
				rollback
				select @@ERROR as resp
			end catch
	end
	--exec SP_ActuTelefono 1,'1111-1111',2
	--select * from vtelefono 
GO
/****** Object:  StoredProcedure [dbo].[SP_ActuUsuarios]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ActuUsuarios]
	@id as varchar(120),
	@nom varchar(100),
	@apell varchar(100),
	@edad tinyint,
	@tel varchar(15),
	@dir varchar(120),
	@correo varchar(100),
	@id_rol varchar(64),
	@estado bit
	as
	begin
		begin tran
			begin try
				update usuarios
				set nombre=@nom,
				apellido=@apell,
				edad=@edad,
				telefono=@tel,
				direccion=@dir,
				correo=@correo,
				id_rol=@id_rol,
				estado=@estado
				where idusuario=@id
				if(@id='')
					begin 
						rollback 
						select '-1' as resp
					end
				else
					begin
						commit
						select '1' as resp
					end
			end try
			begin catch
				rollback
				select @@ERROR as resp
			end catch
	end
	--exec SP_ActuUsuarios '1','usuario111','apellido111',181,'1234-5676','direccion111','correo@usiario111.com',5,1
	--select * from vusuarios 
GO
/****** Object:  StoredProcedure [dbo].[SP_AuxAdicionales]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_AuxAdicionales]
	@id as varchar(120)
	as
	begin
		select * from vadicionales where idadicional=@id
	end
	--exec SP_AuxAdicionales '1'
GO
/****** Object:  StoredProcedure [dbo].[SP_AuxAdicionalesDisponible]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_AuxAdicionalesDisponible]
	@id as varchar(120)
	as
	begin
		select * from vadicionalesdisponible where idadicionald=@id
	end
	--exec SP_AuxAdicionalesDisponible 1
GO
/****** Object:  StoredProcedure [dbo].[SP_AuxCategorias]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_AuxCategorias]
	@id as varchar(120)
	as
	begin
		select * from vcategorias where idcategoria=@id
	end
	--exec SP_AuxCategorias '1'
GO
/****** Object:  StoredProcedure [dbo].[SP_AuxCuenta]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_AuxCuenta]
	@id as varchar(120)
	as
	begin
		select * from vcuenta where id_cuenta=@id
	end
	--exec SP_AuxCuenta 1
GO
/****** Object:  StoredProcedure [dbo].[SP_AuxDepartamentos]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_AuxDepartamentos]
	@id as varchar(120)
	as
	begin
		select * from vdepartamentos where iddepartamento=@id
	end
	--exec SP_AuxDepartamentos '1'
GO
/****** Object:  StoredProcedure [dbo].[SP_AuxDetalle]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_AuxDetalle]
	@id as varchar(120)
	as
	begin
		select * from vdetalle where iddetalle=@id
	end
	--exec SP_AuxDetalle 1
GO
/****** Object:  StoredProcedure [dbo].[SP_AuxEncabezado]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_AuxEncabezado]
	@id as varchar(120)
	as
	begin
		select * from vencabezado where idencabezado=@id
	end
	--exec SP_AuxEncabezado 1
GO
/****** Object:  StoredProcedure [dbo].[SP_AuxFormapago]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_AuxFormapago]
	@id as varchar(120)
	as
	begin
		select * from vformapago where idformapago=@id
	end
	--exec SP_AuxFormapago '1'
GO
/****** Object:  StoredProcedure [dbo].[SP_AuxMunicipios]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_AuxMunicipios]
	@id as varchar(120)
	as
	begin
		select * from vmunicipios where idmunicipio=@id
	end
	--exec SP_AuxMunicipios '1'
GO
/****** Object:  StoredProcedure [dbo].[SP_AuxPaqueteCalificacion]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_AuxPaqueteCalificacion]
	@id as varchar(120)
	as
	begin
		select * from vpaqueteCalificacion where id_calificacion=@id
	end
	--exec SP_AuxPaqueteCalificacion '1'
GO
/****** Object:  StoredProcedure [dbo].[SP_AuxPaquetes]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_AuxPaquetes]
	@id as varchar(120)
	as
	begin
		select * from vpaquetes where idpaquete=@id
	end
	--exec SP_AuxPaquetes '1'
GO
/****** Object:  StoredProcedure [dbo].[SP_AuxPaquetesDisponible]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_AuxPaquetesDisponible]
	@id as varchar(120)
	as
	begin
		select * from vpaquetesdisponible where idpaqueted=@id
	end
	--exec SP_AuxPaquetesDisponible 1
GO
/****** Object:  StoredProcedure [dbo].[SP_AuxPersonasExtras]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_AuxPersonasExtras]
	@id as varchar(120)
	as
	begin
		select * from vpersonasextras where idagregado=@id
	end
	--exec SP_AuxPersonasExtras 1
GO
/****** Object:  StoredProcedure [dbo].[SP_AuxRolUsuario]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_AuxRolUsuario]
	@id as varchar(64)
	as
	begin
		select * from vrolusuario where id_role=@id
	end
	--exec SP_AuxRolUsuario '1'
GO
/****** Object:  StoredProcedure [dbo].[SP_AuxTelefono]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_AuxTelefono]
	@id as varchar(120)
	as
	begin
		select * from vtelefono where idtelefono=@id
	end
	--exec SP_AuxTelefono 1
GO
/****** Object:  StoredProcedure [dbo].[SP_AuxUsuarios]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_AuxUsuarios]
	@id as varchar(120)
	as
	begin
		select * from vusuarios where idusuario=@id
	end
	--exec SP_AuxUsuarios '1'
GO
/****** Object:  StoredProcedure [dbo].[SP_BorrAdicionales]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_BorrAdicionales]
	@id as varchar(120)
	as
	begin
		if(exists(select * from adicionales where idadicional=@id))
			begin try
				delete adicionales where idadicional=@id
				select '1' as resp
			end try
			begin catch
				select @@ERROR as resp
			end catch
		else
			select '-1' as resp
 
	end
	--exec SP_BorrAdicionales '1'
	--select * from vadicionales 
GO
/****** Object:  StoredProcedure [dbo].[SP_BorrAdicionalesDisponible]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_BorrAdicionalesDisponible]
	@id as varchar(120)
	as
	begin
		if(exists(select * from adicionalesdisponible where idadicionald=@id))
			begin try
				delete adicionalesdisponible where idadicionald=@id
				select '1' as resp
			end try
			begin catch
				select @@ERROR as resp
			end catch
		else
			select '-1' as resp
 
	end
	--exec SP_BorrAdicionalesDisponible '1'
	--select * from vadicionalesdisponible
GO
/****** Object:  StoredProcedure [dbo].[SP_BorrCategorias]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_BorrCategorias]
	@id as varchar(120)
	as
	begin
		if(exists(select * from categorias where idcategoria=@id))
			begin try
				delete categorias where idcategoria=@id
				select '1' as resp
			end try
			begin catch
				select @@ERROR as resp
			end catch
		else
			select '-1' as resp
	end
	--exec SP_BorrCategorias '1'
GO
/****** Object:  StoredProcedure [dbo].[SP_BorrCuenta]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_BorrCuenta]
	@id as varchar(120)
	as
	begin
		if(exists(select * from cuenta where id_cuenta=@id))
			begin try
				delete cuenta where id_cuenta=@id
				select '1' as resp
			end try
			begin catch
				select @@ERROR as resp
			end catch
		else
			select '-1' as resp
 
	end
	--exec SP_BorrCuenta '1'
	--select * from vcuenta 
GO
/****** Object:  StoredProcedure [dbo].[SP_BorrDepartamentos]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_BorrDepartamentos]
	@id as varchar(120)
	as
	begin
		if(exists(select * from departamentos where iddepartamento=@id))
			begin try
				delete departamentos where iddepartamento=@id
				select '1' as resp
			end try
			begin catch
				select @@ERROR as resp
			end catch
		else
			select '-1' as resp
	end
	--exec SP_BorrDepartamentos '1'
	--select * from vdepartamentos 
GO
/****** Object:  StoredProcedure [dbo].[SP_BorrDetalle]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_BorrDetalle]
	@id as varchar(120)
	as
	begin
		if(exists(select * from detalle where iddetalle=@id))
			begin try
				delete detalle where iddetalle=@id
				select '1' as resp
			end try
			begin catch
				select @@ERROR as resp
			end catch
		else
			select '-1' as resp
 
	end
	--exec SP_BorrDetalle '1'
	--select * from vdetalle 
GO
/****** Object:  StoredProcedure [dbo].[SP_BorrEncabezado]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_BorrEncabezado]
	@id as varchar(120)
	as
	begin
		if(exists(select * from encabezado where idencabezado=@id))
			begin try
				delete encabezado where idencabezado=@id
				select '1' as resp
			end try
			begin catch
				select @@ERROR as resp
			end catch
		else
			select '-1' as resp
 
	end
	--exec SP_BorrEncabezado '1'
	--select * from vencabezado
GO
/****** Object:  StoredProcedure [dbo].[SP_BorrFormapago]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_BorrFormapago]
	@id as varchar(120)
	as
	begin
		if(exists(select * from formapago where idformapago=@id))
			begin try
				delete formapago where idformapago=@id
				select '1' as resp
			end try
			begin catch
				select @@ERROR as resp
			end catch
		else
			select '-1' as resp
 
	end
	--exec SP_BorrFormapago '1'
	--select * from vformapago 
GO
/****** Object:  StoredProcedure [dbo].[SP_BorrMunicipios]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_BorrMunicipios]
	@id as varchar(120)
	as
	begin
		if(exists(select * from municipios where idmunicipio=@id))
			begin try
				delete municipios where idmunicipio=@id
				select '1' as resp
			end try
			begin catch
				select @@ERROR as resp
			end catch
		else
			select '-1' as resp
 
	end
	--exec SP_BorrMunicipios '1'
	--select * from vmunicipios 

GO
/****** Object:  StoredProcedure [dbo].[SP_BorrPaqueteCalificacion]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_BorrPaqueteCalificacion]
	@id as varchar(120)
	as
	begin
		if(exists(select * from paqueteCalificacion where id_calificacion=@id))
			begin try
				delete paqueteCalificacion where id_calificacion=@id
				select '1' as resp
			end try
			begin catch
				select @@ERROR as resp
			end catch
		else
			select '-1' as resp
 
	end
	--exec SP_BorrPaqueteCalificacion 1
	--select * from vpaqueteCalificacion 
GO
/****** Object:  StoredProcedure [dbo].[SP_BorrPaquetes]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_BorrPaquetes]
	@id as varchar(120)
	as
	begin
		if(exists(select * from paquetes where idpaquete=@id))
			begin try
				delete paquetes where idpaquete=@id
				select '1' as resp
			end try
			begin catch
				select @@ERROR as resp
			end catch
		else
			select '-1' as resp
 
	end
	--exec SP_BorrPaquetes '1'
	--select * from vpaquetes  
GO
/****** Object:  StoredProcedure [dbo].[SP_BorrPaquetesDisponible]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_BorrPaquetesDisponible]
	@id as varchar(120)
	as
	begin
		if(exists(select * from paquetesdisponible where idpaqueted=@id))
			begin try
				delete paquetesdisponible where idpaqueted=@id
				select '1' as resp
			end try
			begin catch
				select @@ERROR as resp
			end catch
		else
			select '-1' as resp
 
	end
	--exec SP_BorrPaquetesDisponible '1'
	--select * from vpaquetesdisponible 
GO
/****** Object:  StoredProcedure [dbo].[SP_BorrPersonasExtras]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_BorrPersonasExtras]
	@id as varchar(120)
	as
	begin
		if(exists(select * from personasextras where idagregado=@id))
			begin try
				delete personasextras where idagregado=@id
				select '1' as resp
			end try
			begin catch
				select @@ERROR as resp
			end catch
		else
			select '-1' as resp
 
	end
	--exec SP_BorrPersonasExtras '1'
	--select * from vpersonasextras 
GO
/****** Object:  StoredProcedure [dbo].[SP_BorrRolUsuario]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_BorrRolUsuario]
	@id as varchar(64)
	as
	begin
		if(exists(select * from rolusuario where id_role=@id))
			begin try
				delete rolusuario where id_role=@id
				select '1' as resp
			end try
			begin catch
				select @@ERROR as resp
			end catch
		else
			select '-1' as resp
 
	end
	--exec SP_BorrRolUsuario '1'
	--select * from vrolusuario
GO
/****** Object:  StoredProcedure [dbo].[SP_BorrTelefono]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_BorrTelefono]
	@id as varchar(120)
	as
	begin
		if(exists(select * from telefono where idtelefono=@id))
			begin try
				delete telefono where idtelefono=@id
				select '1' as resp
			end try
			begin catch
				select @@ERROR as resp
			end catch
		else
			select '-1' as resp
 
	end
	--exec SP_BorrTelefono '1'
	--select * from vtelefono
GO
/****** Object:  StoredProcedure [dbo].[SP_BorrUsuarios]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_BorrUsuarios]
	@id as varchar(120)
	as
	begin
		if(exists(select * from usuarios where idusuario=@id))
			begin try
				delete usuarios where idusuario=@id
				select '1' as resp
			end try
			begin catch
				select @@ERROR as resp
			end catch
		else
			select '-1' as resp
 
	end
	--exec SP_BorrUsuarios '1'
	--select * from vusuarios 

GO
/****** Object:  StoredProcedure [dbo].[SP_InsAdicionales]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------adicionales------------------------------------------------------------------------------
	create proc [dbo].[SP_InsAdicionales]
	@id as varchar(120),
	@nom as varchar(100),
	@desc as varchar(200),
	@precio money
	as
	begin
		if(exists(select * from adicionales where idadicional=@id))
			begin
				select '-1' as resp
			end
		else
			begin
				begin tran 
					begin try
						insert into adicionales values (@id,@nom,@desc,@precio)
						if(@id='')
							begin 
								rollback
								select '-1' as resp
							end
						else
							begin
								commit
								select '1' as resp
							end
					end try
					begin catch
						rollback
						select @@ERROR as resp
					end catch
					
			end
	end
/*
prueba
exec SP_InsAdicionales '1','adicional1','descripcion1',1.6
exec SP_InsAdicionales '2','adicional2','descripcion2',1.5
exec SP_InsAdicionales '3','adicional3','descripcion3',1.7
exec SP_InsAdicionales '4','adicional4','descripcion4',1.8
exec SP_InsAdicionales '5','adicional5','descripcion5',1.9
*/

GO
/****** Object:  StoredProcedure [dbo].[SP_InsAdicionalesDisponible]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------adicionalesdisponible------------------------------------------------------------------------------
	create proc [dbo].[SP_InsAdicionalesDisponible]
	@id as varchar(120),
	@idpd varchar(120) ,
	@idad varchar(120) 
	as
	begin
		if(exists(select * from adicionalesdisponible where idadicionald=@id))
			begin
				select '-1' as resp
			end
		else
			begin
				begin tran 

					begin try
						insert into adicionalesdisponible
						values (@id,@idpd,@idad)
					
						if(@id='')
							begin 
								rollback
								select '-1' as resp
							end
						else
							begin
								commit
								select '1' as resp
							end
					end try
					begin catch
						rollback
						select @@ERROR as resp
					end catch
					
			end
	end
/*
prueba
exec SP_InsAdicionalesDisponible 1,1,1
exec SP_InsAdicionalesDisponible 2,2,2
exec SP_InsAdicionalesDisponible 3,3,3
exec SP_InsAdicionalesDisponible 4,4,4
exec SP_InsAdicionalesDisponible 5,5,5


*/

GO
/****** Object:  StoredProcedure [dbo].[SP_InsCategorias]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------procedimientos almacenados--------------------------------------------------------------
--funcionamiento general de todos los procedimientos

--procedimeinto con prefijo Ins es para insertar
--procedimeinto con prefijo Re es para retornar todos los dato
--procedimeinto con prefijo Aux es para retornar un dato que se quiera actualziar
--procedimeinto con prefijo Actu es para actualziar los datos
--procedimeinto con prefijo Borr es para borrar

--devuelve 0 si ocurrio algun error de transaccion
--devuelve 1 si todo salio bien
--devuelve -1 si ocurrio algun error de logica


--------------------------categorias------------------------------------------------------------------------------

	create proc [dbo].[SP_InsCategorias]
	@id as varchar(120),
	@nombre as varchar(100),
	@descripcion as varchar(300)
	as
	begin
		if(exists(select * from categorias where idcategoria=@id))
			begin
				select '-1' as resp
			end
		else
			begin
				begin tran 
					begin try
						insert into categorias values (@id,@nombre,@descripcion)
						if(@id='')
							begin 
								rollback
								select '-1' as resp
							end
						else
							begin
								commit
								select '1' as resp
							end
					end try
					begin catch
						rollback
						select @@ERROR as resp
					end catch
					
			end
	end
/*
prueba
exec SP_InsCategorias '1','categoria1','descripcion1'
exec SP_InsCategorias '2','categoria2','descripcion2'
exec SP_InsCategorias '3','categoria3','descripcion3'
exec SP_InsCategorias '4','categoria4','descripcion4'
exec SP_InsCategorias '5','categoria5','descripcion5'
*/

GO
/****** Object:  StoredProcedure [dbo].[SP_InsCuenta]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------cuenta------------------------------------------------------------------------------
	create proc [dbo].[SP_InsCuenta]
	@id as varchar(120),
	@idu varchar(120) ,
	@uname varchar(50),-- default 'usuario',
	@upass varchar(50),-- default '0x202CB962AC59075B964B07152D234B70',
	@ustate bit
	as
	begin
		if(exists(select * from cuenta where id_cuenta=@id))
			begin
				select '-1' as resp
			end
		else
			begin
				begin tran 

					begin try
						if(@uname='' and @upass='' )
						begin
							insert into cuenta(id_cuenta,id_usuario,u_state)
							values (@id,@idu,@ustate)
						end
						else if(@uname='')
						begin 
							insert into cuenta(id_cuenta,id_usuario,u_pass,u_state)
							values (@id,@idu,@upass,@ustate)
						end
						else if(@upass='')
						begin 
							insert into cuenta(id_cuenta,id_usuario,u_name,u_state)
							values (@id,@idu,@uname,@ustate)
						end
						else 
						begin 
							insert into cuenta(id_cuenta,id_usuario,u_name,u_pass,u_state)
							values (@id,@idu,@uname,@upass,@ustate)
						end




						if(@id='')
							begin 
								rollback
								select '-1' as resp
							end
						else
							begin
								commit
								select '1' as resp
							end
					end try
					begin catch
						rollback
						select @@ERROR as resp
					end catch
					
			end
	end
/*
prueba
exec SP_InsCuenta 1,1,'nombre1','contra1',1
exec SP_InsCuenta 2,2,'','',0
exec SP_InsCuenta 3,3,'','contra3',1
exec SP_InsCuenta 4,4,nombre4,'',0
exec SP_InsCuenta 5,5,nombre5,contra5,1

*/

GO
/****** Object:  StoredProcedure [dbo].[SP_InsDepartamentos]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------departamentos------------------------------------------------------------------------------
	create proc [dbo].[SP_InsDepartamentos]
	@id as varchar(120),
	@nombre as varchar(100)
	as
	begin
		if(exists(select * from departamentos where iddepartamento=@id))
			begin
				select '-1' as resp
			end
		else
			begin
				begin tran 
					begin try
						insert into departamentos values (@id,@nombre)
						if(@id='')
							begin 
								rollback
								select '-1' as resp
							end
						else
							begin
								commit
								select '1' as resp
							end
					end try
					begin catch
						rollback
						select @@ERROR as resp
					end catch
					
			end
	end
/*
prueba
exec SP_InsDepartamentos '1','departamento1'
exec SP_InsDepartamentos '2','departamento2'
exec SP_InsDepartamentos '3','departamento3'
exec SP_InsDepartamentos '4','departamento4'
exec SP_InsDepartamentos '5','departamento5'
*/

GO
/****** Object:  StoredProcedure [dbo].[SP_InsDetalle]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------detalle------------------------------------------------------------------------------
	create proc [dbo].[SP_InsDetalle]
	@id as varchar(120),
	@idenc varchar(120) ,
	@idpd varchar(120) ,
	@precio money,
	@descuento money,
	@monto money,
	@cupos int
	as
	begin
		if(exists(select * from detalle where iddetalle=@id))
			begin
				select '-1' as resp
			end
		else
			begin
				begin tran 

					begin try
						insert into detalle
						values (@id,@idenc,@idpd,@precio,@descuento,@monto,@cupos)
					
						if(@id='')
							begin 
								rollback
								select '-1' as resp
							end
						else
							begin
								commit
								select '1' as resp
							end
					end try
					begin catch
						rollback
						select @@ERROR as resp
					end catch
					
			end
	end
/*
prueba
exec SP_InsDetalle 1,1,1,1.5,2.5,3.5,1
exec SP_InsDetalle 2,2,2,1.6,2.6,3.6,2
exec SP_InsDetalle 3,3,3,1.7,2.7,3.7,3
exec SP_InsDetalle 4,4,4,1.8,2.8,3.8,4
exec SP_InsDetalle 5,5,5,1.9,2.9,3.9,5


*/

GO
/****** Object:  StoredProcedure [dbo].[SP_InsEncabezado]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------encabezado------------------------------------------------------------------------------
	create proc [dbo].[SP_InsEncabezado]
	@id as varchar(120),
	@idc varchar(120) ,
	@idfpg varchar(120) ,
	@descuento money,
	@monto money
	as
	begin
		if(exists(select * from encabezado where idencabezado=@id))
			begin
				select '-1' as resp
			end
		else
			begin
				begin tran 

					begin try
						insert into encabezado (idencabezado,idcuenta,idformapago,descuento,monto)
						values (@id,@idc,@idfpg,@descuento,@monto)
					
						if(@id='')
							begin 
								rollback
								select '-1' as resp
							end
						else
							begin
								commit
								select '1' as resp
							end
					end try
					begin catch
						rollback
						select @@ERROR as resp
					end catch
					
			end
	end
/*
prueba
exec SP_InsEncabezado 1,1,1,2.5,6.75
exec SP_InsEncabezado 2,2,2,3.5,7.75
exec SP_InsEncabezado 3,3,3,4.5,8.75
exec SP_InsEncabezado 4,4,4,5.5,9.75
exec SP_InsEncabezado 5,5,5,6.5,10.75



*/

GO
/****** Object:  StoredProcedure [dbo].[SP_InsFormapago]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------formapago------------------------------------------------------------------------------
	create proc [dbo].[SP_InsFormapago]
	@id as varchar(120),
	@met as varchar(50),
	@desc as varchar(150),
	@est bit
	as
	begin
		if(exists(select * from formapago where idformapago=@id))
			begin
				select '-1' as resp
			end
		else
			begin
				begin tran 
					begin try
						insert into formapago values (@id,@met,@desc,@est)
						if(@id='')
							begin 
								rollback
								select '-1' as resp
							end
						else
							begin
								commit
								select '1' as resp
							end
					end try
					begin catch
						rollback
						select @@ERROR as resp
					end catch
					
			end
	end
/*
prueba
exec SP_InsFormapago '1','forma1','descripcion1',1
exec SP_InsFormapago '2','forma2','descripcion2',1
exec SP_InsFormapago '3','forma3','descripcion3',0
exec SP_InsFormapago '4','forma4','descripcion4',1
exec SP_InsFormapago '5','forma5','descripcion5',1
*/

GO
/****** Object:  StoredProcedure [dbo].[SP_InsMunicipios]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------municipios------------------------------------------------------------------------------
	create proc [dbo].[SP_InsMunicipios]
	@id as varchar(120),
	@nombre as varchar(100),
	@idd as varchar(120)
	as
	begin
		if(exists(select * from municipios where idmunicipio=@id))
			begin
				select '-1' as resp
			end
		else
			begin
				begin tran 
					begin try
						insert into municipios values (@id,@nombre,@idd)
						if(@id='')
							begin 
								rollback
								select '-1' as resp
							end
						else
							begin
								commit
								select '1' as resp
							end
					end try
					begin catch
						rollback
						select @@ERROR as resp
					end catch
					
			end
	end
/*
prueba
exec SP_InsMunicipios '1','municipio1','1'
exec SP_InsMunicipios '2','municipio2','1'
exec SP_InsMunicipios '3','municipio3','2'
exec SP_InsMunicipios '4','municipio4','2'
exec SP_InsMunicipios '5','municipio5','3'
*/

GO
/****** Object:  StoredProcedure [dbo].[SP_InsPaqueteCalificacion]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------paqueteCalificacion------------------------------------------------------------------------------
	create proc [dbo].[SP_InsPaqueteCalificacion]
	@id as varchar(120),
	@idu varchar(120) ,
	@idp varchar(120) ,
	@nota bit
	as
	begin
		if(exists(select * from paqueteCalificacion where id_calificacion=@id))
			begin
				select '-1' as resp
			end
		else
			begin
				begin tran 

					begin try
						if(@nota='')
						begin
							insert into paqueteCalificacion(id_calificacion,id_usuario,id_paquete)
							values (@id,@idu,@idp)
						end
						else
						begin 
							insert into paqueteCalificacion(id_calificacion,id_usuario,id_paquete,nota)
							values (@id,@idu,@idp,@nota)
						end
						if(@id='')
							begin 
								rollback
								select '-1' as resp
							end
						else
							begin
								commit
								select '1' as resp
							end
					end try
					begin catch
						rollback
						select @@ERROR as resp
					end catch
					
			end
	end
/*
prueba
exec SP_InsPaqueteCalificacion '1','1','5',1
exec SP_InsPaqueteCalificacion '2','1','5',''
exec SP_InsPaqueteCalificacion '3','2','4',1
exec SP_InsPaqueteCalificacion '4','2','4',0
exec SP_InsPaqueteCalificacion '5','3','3',1

*/

GO
/****** Object:  StoredProcedure [dbo].[SP_InsPaquetes]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------paquetes------------------------------------------------------------------------------
	create proc [dbo].[SP_InsPaquetes]
	@id as varchar(120),
	@nom varchar(100),
	@des varchar(300),
	@dir varchar(200),
	@idmun varchar(120), 
	@idcate varchar(120),
	@img varchar(500)
	as
	begin
		if(exists(select * from paquetes where idpaquete=@id))
			begin
				select '-1' as resp
			end
		else
			begin
				begin tran 
					begin try
						insert into paquetes values (@id,@nom,@des,@dir,@idmun,@idcate,@img)
						if(@id='')
							begin 
								rollback
								select '-1' as resp
							end
						else
							begin
								commit
								select '1' as resp
							end
					end try
					begin catch
						rollback
						select @@ERROR as resp
					end catch
					
			end
	end
/*
prueba
exec SP_InsPaquetes '1','Paquete1','descripcion1','direccion1',1,1,'img1'
exec SP_InsPaquetes '2','Paquete2','descripcion2','direccion2',1,1,'img2'
exec SP_InsPaquetes '3','Paquete3','descripcion3','direccion3',2,2,'img3'
exec SP_InsPaquetes '4','Paquete4','descripcion4','direccion4',2,2,'img4'
exec SP_InsPaquetes '5','Paquete5','descripcion5','direccion5',3,3,'img5'
*/

GO
/****** Object:  StoredProcedure [dbo].[SP_InsPaquetesDisponible]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------paquetesdisponible------------------------------------------------------------------------------
	create proc [dbo].[SP_InsPaquetesDisponible]
	@id as varchar(120),
	@idp varchar(120),
	@precio money,
	@cdisp int,
	@cllenos int,
	@finicial datetime,
	@ffinal datetime,
	@estado bit
	as
	begin
		if(exists(select * from paquetesdisponible where idpaqueted=@id))
			begin
				select '-1' as resp
			end
		else
			begin
				begin tran 

					begin try
						insert into paquetesdisponible(idpaqueted,idpaquete,precio,cupos_disp,cuposllenos,fechainicial,fechafinal,estado)
						values (@id,@idp,@precio,@cdisp,@cllenos,@finicial,@ffinal,@estado)
					
						if(@id='')
							begin 
								rollback
								select '-1' as resp
							end
						else
							begin
								commit
								select '1' as resp
							end
					end try
					begin catch
						rollback
						select @@ERROR as resp
					end catch
					
			end
	end
/*
prueba
exec SP_InsPaquetesDisponible 1,1,1.6,5,0,'2023-4-8','2023-4-10',1
exec SP_InsPaquetesDisponible 2,2,1.7,10,0,'2023-4-8','2023-4-11',0
exec SP_InsPaquetesDisponible 3,3,1.8,15,0,'2023-4-8','2023-4-12',1
exec SP_InsPaquetesDisponible 4,4,1.9,20,0,'2023-4-8','2023-4-13',0
exec SP_InsPaquetesDisponible 5,5,2.1,25,0,'2023-4-8','2023-4-14',1


*/

GO
/****** Object:  StoredProcedure [dbo].[SP_InsPersonasExtras]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------personasextras------------------------------------------------------------------------------
	create proc [dbo].[SP_InsPersonasExtras]
	@id as varchar(120),
	@nombre varchar(100),
	@apellido varchar(100),
	@ndoc varchar(50),
	@edad tinyint ,
	@iddet varchar(120) ,
	@idc varchar(120)
	as
	begin
		if(exists(select * from personasextras where idagregado=@id))
			begin
				select '-1' as resp
			end
		else
			begin
				begin tran 

					begin try
						if(@edad='')
						begin
							insert into personasextras(idagregado,nombre,apellido,n_doc,iddetalle,idcuenta)
							values (@id,@nombre,@apellido,@ndoc,@iddet,@idc)
						end
						else
						begin
							insert into personasextras
							values (@id,@nombre,@apellido,@ndoc,@edad,@iddet,@idc)
						end
					
					
						if(@id='')
							begin 
								rollback
								select '-1' as resp
							end
						else
							begin
								commit
								select '1' as resp
							end
					end try
					begin catch
						rollback
						select @@ERROR as resp
					end catch
					
			end
	end
/*
prueba
exec SP_InsPersonasExtras 1,'nombre1','apellido1','doc1',23,1,1
exec SP_InsPersonasExtras 2,'nombre2','apellido2','doc2','',2,2
exec SP_InsPersonasExtras 3,'nombre3','apellido3','doc3',25,3,3
exec SP_InsPersonasExtras 4,'nombre4','apellido4','doc4',26,4,4
exec SP_InsPersonasExtras 5,'nombre5','apellido5','doc5',27,5,5
*/

GO
/****** Object:  StoredProcedure [dbo].[SP_InsRolUsuario]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------rolusuario------------------------------------------------------------------------------
	create proc [dbo].[SP_InsRolUsuario]
	@id as varchar(64),
	@r_name as varchar(50)
	as
	begin
		if(exists(select * from rolusuario where id_role=@id))
			begin
				select '-1' as resp
			end
		else
			begin
				begin tran 
					begin try
						insert into rolusuario(id_role,r_name) values (@id,@r_name)
						if(@id='')
							begin 
								rollback
								select '-1' as resp
							end
						else
							begin
								commit
								select '1' as resp
							end
					end try
					begin catch
						rollback
						select @@ERROR as resp
					end catch
					
			end
	end
/*
prueba
exec SP_InsRolUsuario '1','rol1','1'
exec SP_InsRolUsuario '2','rol2','1'
exec SP_InsRolUsuario '3','rol3','2'
exec SP_InsRolUsuario '4','rol4','2'
exec SP_InsRolUsuario '5','rol5','3'
*/

GO
/****** Object:  StoredProcedure [dbo].[SP_InsTelefono]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------telefono------------------------------------------------------------------------------
	create proc [dbo].[SP_InsTelefono]
	@id as varchar(120),
	@tel varchar(20),
	@idu varchar(120) 
	as
	begin
		if(exists(select * from telefono where idtelefono=@id))
			begin
				select '-1' as resp
			end
		else
			begin
				begin tran 

					begin try
						insert into telefono
						values (@id,@tel,@idu)
					
						if(@id='')
							begin 
								rollback
								select '-1' as resp
							end
						else
							begin
								commit
								select '1' as resp
							end
					end try
					begin catch
						rollback
						select @@ERROR as resp
					end catch
					
			end
	end
/*
prueba
exec SP_InsTelefono 1,'1234-5671',1
exec SP_InsTelefono 2,'1234-5672',2
exec SP_InsTelefono 3,'1234-5673',3
exec SP_InsTelefono 4,'1234-5674',4
exec SP_InsTelefono 5,'1234-5675',5

*/

GO
/****** Object:  StoredProcedure [dbo].[SP_InsUsuarios]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------usuarios------------------------------------------------------------------------------
	create proc [dbo].[SP_InsUsuarios]
	@id as varchar(120),
	@nom varchar(100),
	@apell varchar(100),
	@edad tinyint,
	@tel varchar(15),
	@dir varchar(120),
	@correo varchar(100),
	@id_rol varchar(64),
	@estado bit
	as
	begin
		if(exists(select * from usuarios where idusuario=@id))
			begin
				select '-1' as resp
			end
		else
			begin
				begin tran 

					begin try
						if(@tel='' and @dir='')
						begin
							insert into usuarios(idusuario,nombre,apellido,edad,
							correo,id_rol,estado) 
							values (@id,@nom,@apell,@edad,
							@correo,@id_rol,@estado)
						end
						else if(@tel='')
						begin 
							insert into usuarios(idusuario,nombre,apellido,edad,
							direccion,correo,id_rol,estado) 
							values (@id,@nom,@apell,@edad,
							@dir,@correo,@id_rol,@estado)
						end
						else if(@dir='')
						begin
							insert into usuarios(idusuario,nombre,apellido,edad,
							telefono,correo,id_rol,estado) 
							values (@id,@nom,@apell,@edad,
							@tel,@correo,@id_rol,@estado)
						end
						else
						begin
							insert into usuarios(idusuario,nombre,apellido,edad,
							telefono,direccion,correo,id_rol,estado) 
							values (@id,@nom,@apell,@edad,
							@tel,@dir,@correo,@id_rol,@estado)
						end
						if(@id='')
							begin 
								rollback
								select '-1' as resp
							end
						else
							begin
								commit
								select '1' as resp
							end
					end try
					begin catch
						rollback
						select @@ERROR as resp
					end catch
					
			end
	end
/*
prueba
exec SP_InsUsuarios '1','usuario1','apellido1',18,'1234-5671','direccion1','correo@usiario1.com',1,0
exec SP_InsUsuarios '2','usuario2','apellido2',19,'','direccion2','correo@usiario2.com',2,0
exec SP_InsUsuarios '3','usuario3','apellido3',20,'1234-5673','','correo@usiario3.com',3,1
exec SP_InsUsuarios '4','usuario4','apellido4',21,'','','correo@usiario4.com',4,0
exec SP_InsUsuarios '5','usuario5','apellido5',22,'1234-5675','direccion5','correo@usiario5.com',5,0
*/

GO
/****** Object:  StoredProcedure [dbo].[SP_ReAdicionales]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ReAdicionales]
	as
	begin
		select * from vadicionales
	end
	--exec SP_ReAdicionales 
GO
/****** Object:  StoredProcedure [dbo].[SP_ReAdicionalesDisponible]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ReAdicionalesDisponible]
	as
	begin
		select * from vadicionalesdisponible
	end
	--exec SP_ReAdicionalesDisponible 
GO
/****** Object:  StoredProcedure [dbo].[SP_ReCategorias]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ReCategorias]
	as
	begin
		select * from vcategorias
	end
	--exec SP_ReCategorias 
GO
/****** Object:  StoredProcedure [dbo].[SP_ReCuenta]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ReCuenta]
	as
	begin
		select * from vcuenta
	end
	--exec SP_ReCuenta 
GO
/****** Object:  StoredProcedure [dbo].[SP_ReDepartamentos]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ReDepartamentos]
	as
	begin
		select * from vdepartamentos
	end
	--exec SP_ReDepartamentos 
GO
/****** Object:  StoredProcedure [dbo].[SP_ReDetalle]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ReDetalle]
	as
	begin
		select * from vdetalle
	end
	--exec SP_ReDetalle 
GO
/****** Object:  StoredProcedure [dbo].[SP_ReEncabezado]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ReEncabezado]
	as
	begin
		select * from vencabezado
	end
	--exec SP_ReEncabezado 
GO
/****** Object:  StoredProcedure [dbo].[SP_ReFormapago]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ReFormapago]
	as
	begin
		select * from vformapago
	end
	--exec SP_ReFormapago 
GO
/****** Object:  StoredProcedure [dbo].[SP_ReMunicipios]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ReMunicipios]
	as
	begin
		select * from vmunicipios
	end
	--exec SP_ReMunicipios 
GO
/****** Object:  StoredProcedure [dbo].[SP_RePaqueteCalificacion]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_RePaqueteCalificacion]
	as
	begin
		select * from vpaqueteCalificacion
	end
	--exec SP_RePaqueteCalificacion 
GO
/****** Object:  StoredProcedure [dbo].[SP_RePaquetes]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_RePaquetes]
	as
	begin
		select * from vpaquetes
	end
	--exec SP_RePaquetes 
GO
/****** Object:  StoredProcedure [dbo].[SP_RePaquetesDisponible]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_RePaquetesDisponible]
	as
	begin
		select * from vpaquetesdisponible
	end
	--exec SP_RePaquetesDisponible 
GO
/****** Object:  StoredProcedure [dbo].[SP_RePersonasExtras]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_RePersonasExtras]
	as
	begin
		select * from vpersonasextras
	end
	--exec SP_RePersonasExtras 
GO
/****** Object:  StoredProcedure [dbo].[SP_ReRolUsuario]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ReRolUsuario]
	as
	begin
		select * from vrolusuario
	end
	--exec SP_ReRolUsuario 
GO
/****** Object:  StoredProcedure [dbo].[SP_ReTelefono]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ReTelefono]
	as
	begin
		select * from vtelefono
	end
	--exec SP_ReTelefono 
GO
/****** Object:  StoredProcedure [dbo].[SP_ReUsuarios]    Script Date: 4/27/2023 9:39:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_ReUsuarios]
	as
	begin
		select * from vusuarios
	end
	--exec SP_ReUsuarios 
GO
USE [master]
GO
ALTER DATABASE [BD_TURISMO] SET  READ_WRITE 
GO
