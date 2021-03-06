USE [master]
GO
/****** Object:  Database [db_karaoke_rum]    Script Date: 11/14/2021 12:16:49 AM ******/
CREATE DATABASE [db_karaoke_rum]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_karaoke_rum', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\db_karaoke_rum.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_karaoke_rum_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\db_karaoke_rum_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [db_karaoke_rum] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_karaoke_rum].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_karaoke_rum] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_karaoke_rum] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_karaoke_rum] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_karaoke_rum] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_karaoke_rum] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_karaoke_rum] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [db_karaoke_rum] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_karaoke_rum] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_karaoke_rum] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_karaoke_rum] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_karaoke_rum] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_karaoke_rum] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_karaoke_rum] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_karaoke_rum] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_karaoke_rum] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db_karaoke_rum] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_karaoke_rum] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_karaoke_rum] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_karaoke_rum] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_karaoke_rum] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_karaoke_rum] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_karaoke_rum] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_karaoke_rum] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db_karaoke_rum] SET  MULTI_USER 
GO
ALTER DATABASE [db_karaoke_rum] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_karaoke_rum] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_karaoke_rum] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_karaoke_rum] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_karaoke_rum] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_karaoke_rum] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [db_karaoke_rum] SET QUERY_STORE = OFF
GO
USE [db_karaoke_rum]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 11/14/2021 12:16:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaMH] [char](5) NOT NULL,
	[MaHD] [char](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC,
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatPhong]    Script Date: 11/14/2021 12:16:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatPhong](
	[MaDDP] [char](5) NOT NULL,
	[NgayDat] [date] NOT NULL,
	[NgayNhan] [date] NOT NULL,
	[GioDat] [time](7) NOT NULL,
	[MaPhong] [char](5) NOT NULL,
	[MaKH] [char](5) NOT NULL,
	[MaQL] [char](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDDP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 11/14/2021 12:16:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [char](10) NOT NULL,
	[GioVao] [time](7) NOT NULL,
	[GioRa] [time](7) NULL,
	[NgayLap] [date] NOT NULL,
	[TongTien] [money] NULL,
	[MaPhong] [char](5) NOT NULL,
	[MaQL] [char](5) NOT NULL,
	[MaKH] [char](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/14/2021 12:16:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [char](5) NOT NULL,
	[TenKhach] [nvarchar](50) NOT NULL,
	[SDT] [char](10) NOT NULL,
	[SoLanDen] [int] NOT NULL,
	[TongTien] [money] NULL,
	[GhiChu] [nvarchar](20) NULL,
	[MaLoaiKH] [char](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiKhachHang]    Script Date: 11/14/2021 12:16:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiKhachHang](
	[MaLoaiKH] [char](5) NOT NULL,
	[TenLoaiKH] [nvarchar](20) NOT NULL,
	[ChietKhau] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiNhanVien]    Script Date: 11/14/2021 12:16:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNhanVien](
	[MaLNV] [char](5) NOT NULL,
	[TenLNV] [nvarchar](20) NOT NULL,
	[MucLuong] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 11/14/2021 12:16:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[MaLoaiPhong] [char](5) NOT NULL,
	[TenLoaiPhong] [nvarchar](10) NOT NULL,
	[Gia] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatHang]    Script Date: 11/14/2021 12:16:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatHang](
	[MaMH] [char](5) NOT NULL,
	[TenMh] [nvarchar](30) NOT NULL,
	[Loai] [nvarchar](10) NOT NULL,
	[SoLuongTon] [int] NOT NULL,
	[DonVi] [nvarchar](10) NOT NULL,
	[Gia] [money] NOT NULL,
	[TrangThai] [varchar](5) NOT NULL,
	[MaQL] [char](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/14/2021 12:16:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [char](5) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](5) NOT NULL,
	[CMND] [varchar](12) NOT NULL,
	[SDT] [char](10) NOT NULL,
	[DiaChi] [nvarchar](70) NOT NULL,
	[TrangThai] [nvarchar](10) NOT NULL,
	[MaLNV] [char](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 11/14/2021 12:16:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [char](5) NOT NULL,
	[TenPhong] [varchar](5) NOT NULL,
	[TrangThaiPhong] [nvarchar](5) NOT NULL,
	[MaLoaiPhong] [char](5) NOT NULL,
	[MaQL] [char](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong_TrangThietBi]    Script Date: 11/14/2021 12:16:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong_TrangThietBi](
	[MaPhong] [char](5) NOT NULL,
	[MaTTB] [char](5) NOT NULL,
	[SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC,
	[MaTTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/14/2021 12:16:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[UserName] [char](5) NOT NULL,
	[PassWord] [char](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangThietBi]    Script Date: 11/14/2021 12:16:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThietBi](
	[MaTTB] [char](5) NOT NULL,
	[TenTTB] [nvarchar](50) NOT NULL,
	[SoLuongTon] [int] NOT NULL,
	[DonVi] [nvarchar](10) NOT NULL,
	[Gia] [money] NOT NULL,
	[TrangThai] [varchar](5) NOT NULL,
	[MaQL] [char](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH001', N'HD0000001 ', 3, 120000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH001', N'HD0000006 ', 3, 120000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH001', N'HD0000012 ', 2, 80000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH001', N'HD0000013 ', 1, 40000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH001', N'HD0000038 ', 3, 120000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH001', N'HD0000040 ', 3, 120000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH001', N'HD0000053 ', 3, 120000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH001', N'HD0000093 ', 3, 120000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH001', N'HD0000142 ', 3, 120000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH001', N'HD0000151 ', 2, 80000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH001', N'HD0000152 ', 4, 160000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH001', N'HD0000155 ', 3, 120000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000006 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000013 ', 2, 40000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000014 ', 2, 40000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000015 ', 2, 40000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000017 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000021 ', 4, 80000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000022 ', 2, 40000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000025 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000026 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000027 ', 4, 80000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000031 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000032 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000034 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000038 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000047 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000065 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000071 ', 4, 80000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000077 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000081 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000109 ', 4, 80000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000110 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000115 ', 4, 80000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000116 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000119 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000134 ', 4, 80000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000143 ', 24, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000151 ', 2, 40000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000171 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000175 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH002', N'HD0000180 ', 2, 40000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000001 ', 7, 210000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000003 ', 3, 90000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000012 ', 23, 690000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000017 ', 13, 390000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000024 ', 32, 960000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000033 ', 3, 90000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000037 ', 7, 210000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000040 ', 32, 960000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000053 ', 4, 120000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000060 ', 3, 90000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000063 ', 4, 120000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000064 ', 4, 120000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000073 ', 3, 90000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000080 ', 3, 90000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000085 ', 3, 90000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000086 ', 3, 90000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000102 ', 25, 750000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000122 ', 3, 90000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000123 ', 2, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000125 ', 3, 90000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000128 ', 3, 90000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000129 ', 7, 210000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000145 ', 7, 210000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000147 ', 4, 120000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000148 ', 24, 720000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000149 ', 3, 90000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000151 ', 12, 360000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000162 ', 2, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000163 ', 3, 90000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000167 ', 3, 90000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000173 ', 3, 90000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000186 ', 3, 90000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH003', N'HD0000187 ', 2, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000005 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000014 ', 2, 40000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000022 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000028 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000030 ', 4, 80000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000037 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000039 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000042 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000045 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000046 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000052 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000057 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000058 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000066 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000069 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000094 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000098 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000104 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000106 ', 2, 40000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000110 ', 4, 80000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000114 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000118 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000126 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000130 ', 4, 80000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000133 ', 3, 60000.0000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000139 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000143 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000146 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000152 ', 4, 80000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000155 ', 2, 40000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000158 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000161 ', 2, 40000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000172 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH004', N'HD0000183 ', 3, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000004 ', 3, 660000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000013 ', 2, 440000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000022 ', 4, 880000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000025 ', 3, 660000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000026 ', 4, 880000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000027 ', 4, 880000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000028 ', 4, 880000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000031 ', 3, 660000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000032 ', 3, 660000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000036 ', 2, 440000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000042 ', 2, 440000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000052 ', 4, 880000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000068 ', 4, 880000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000075 ', 4, 880000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000076 ', 2, 440000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000079 ', 3, 660000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000083 ', 3, 660000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000088 ', 4, 880000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000093 ', 3, 660000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000103 ', 3, 660000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000116 ', 3, 660000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000117 ', 3, 660000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000121 ', 3, 660000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000129 ', 5, 1100000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000131 ', 4, 880000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000132 ', 4, 880000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000141 ', 3, 660000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000157 ', 3, 660000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000159 ', 2, 440000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000173 ', 3, 660000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000176 ', 3, 660000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH005', N'HD0000177 ', 2, 440000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000006 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000018 ', 2, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000020 ', 2, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000029 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000042 ', 2, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000044 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000054 ', 4, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000055 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000065 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000077 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000078 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000087 ', 4, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000099 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000101 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000111 ', 4, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000112 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000115 ', 4, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000120 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000121 ', 4, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000124 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000128 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000157 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000164 ', 5, 750000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000167 ', 2, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000169 ', 4, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000173 ', 2, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000182 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH006', N'HD0000184 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000002 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000015 ', 2, 390000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000016 ', 2, 390000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000023 ', 4, 780000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000031 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000035 ', 4, 780000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000043 ', 2, 390000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000049 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000050 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000051 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000054 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000058 ', 5, 975000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000061 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000063 ', 4, 780000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000065 ', 4, 780000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000067 ', 4, 780000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000078 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000082 ', 4, 780000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000084 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000089 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000092 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000095 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000097 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000100 ', 4, 780000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000102 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000113 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000117 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000127 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000133 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000138 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000140 ', 4, 780000.0000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000143 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000145 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000146 ', 4, 780000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000152 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000161 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000163 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000165 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH007', N'HD0000185 ', 3, 585000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000002 ', 2, 190000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000007 ', 3, 285000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000009 ', 3, 285000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000020 ', 3, 285000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000021 ', 3, 285000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000024 ', 3, 285000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000029 ', 5, 475000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000030 ', 4, 380000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000033 ', 4, 380000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000043 ', 3, 285000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000047 ', 4, 380000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000056 ', 3, 285000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000059 ', 4, 380000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000070 ', 4, 380000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000081 ', 4, 380000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000084 ', 4, 380000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000088 ', 3, 285000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000090 ', 3, 285000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000096 ', 4, 380000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000101 ', 3, 285000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000103 ', 4, 380000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000107 ', 3, 285000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000112 ', 3, 285000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000114 ', 4, 380000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000135 ', 3, 285000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000144 ', 3, 285000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000148 ', 4, 380000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000154 ', 2, 190000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000160 ', 3, 285000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH008', N'HD0000179 ', 2, 190000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000004 ', 4, 200000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000010 ', 3, 150000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000011 ', 3, 150000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000012 ', 2, 100000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000014 ', 3, 150000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000043 ', 4, 200000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000060 ', 4, 200000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000062 ', 3, 150000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000072 ', 4, 200000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000073 ', 4, 200000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000083 ', 3, 150000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000085 ', 3, 150000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000090 ', 3, 150000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000091 ', 3, 150000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000094 ', 3, 150000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000103 ', 4, 200000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000108 ', 3, 150000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000110 ', 2, 100000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000123 ', 3, 150000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000132 ', 4, 200000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000136 ', 3, 150000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000141 ', 4, 200000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000145 ', 4, 200000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000153 ', 4, 200000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000154 ', 3, 150000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000162 ', 3, 150000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000170 ', 3, 150000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000174 ', 2, 100000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000176 ', 2, 100000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000177 ', 2, 100000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH009', N'HD0000183 ', 3, 150000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000017 ', 3, 165000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000029 ', 4, 220000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000032 ', 3, 165000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000035 ', 3, 165000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000040 ', 2, 110000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000041 ', 5, 275000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000044 ', 3, 165000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000048 ', 3, 165000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000051 ', 3, 165000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000052 ', 5, 275000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000057 ', 4, 220000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000059 ', 3, 165000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000066 ', 4, 220000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000080 ', 4, 220000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000086 ', 3, 165000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000087 ', 4, 220000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000092 ', 3, 165000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000096 ', 3, 165000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000098 ', 3, 165000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000099 ', 4, 220000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000102 ', 4, 220000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000109 ', 7, 385000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000127 ', 3, 165000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000130 ', 4, 220000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000131 ', 4, 220000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000137 ', 3, 165000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000138 ', 4, 220000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000139 ', 4, 220000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000140 ', 3, 165000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000147 ', 3, 165000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000148 ', 3, 165000.0000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000150 ', 3, 165000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000153 ', 3, 165000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000158 ', 4, 220000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000159 ', 2, 110000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000160 ', 3, 165000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000161 ', 3, 165000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000163 ', 3, 165000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000168 ', 2, 110000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000178 ', 2, 110000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000180 ', 2, 110000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000182 ', 5, 275000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH010', N'HD0000187 ', 2, 110000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000003 ', 3, 180000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000008 ', 2, 120000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000016 ', 2, 120000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000027 ', 3, 180000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000028 ', 4, 240000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000033 ', 3, 180000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000036 ', 2, 120000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000039 ', 3, 180000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000041 ', 4, 240000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000049 ', 4, 240000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000050 ', 4, 240000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000058 ', 3, 180000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000059 ', 4, 240000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000060 ', 4, 240000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000061 ', 4, 240000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000062 ', 4, 240000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000065 ', 4, 240000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000066 ', 5, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000067 ', 3, 180000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000068 ', 3, 180000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000069 ', 4, 240000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000071 ', 4, 240000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000072 ', 5, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000074 ', 4, 240000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000076 ', 3, 180000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000079 ', 4, 240000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000082 ', 4, 240000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000086 ', 4, 240000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000091 ', 4, 240000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000093 ', 3, 180000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000099 ', 3, 180000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000104 ', 33, 1980000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000106 ', 3, 180000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000108 ', 3, 180000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000111 ', 5, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000124 ', 3, 180000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000129 ', 1, 60000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000133 ', 2, 120000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000134 ', 5, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000135 ', 4, 240000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000139 ', 4, 240000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000141 ', 4, 240000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000153 ', 3, 180000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000157 ', 4, 240000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000167 ', 3, 180000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000171 ', 3, 180000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000172 ', 4, 240000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000174 ', 3, 180000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000179 ', 2, 120000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000183 ', 2, 120000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH011', N'HD0000186 ', 2, 120000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000009 ', 2, 320000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000023 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000026 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000037 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000041 ', 4, 640000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000045 ', 4, 640000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000046 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000055 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000064 ', 4, 640000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000065 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000072 ', 5, 800000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000073 ', 4, 640000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000076 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000077 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000080 ', 2, 320000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000092 ', 4, 640000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000098 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000107 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000113 ', 4, 640000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000118 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000119 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000120 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000125 ', 2, 320000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000137 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000149 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000156 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000163 ', 4, 640000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000164 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000165 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000166 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000168 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000170 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000181 ', 2, 320000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000184 ', 3, 480000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH012', N'HD0000185 ', 2, 320000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000005 ', 4, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000007 ', 3, 450000.0000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000018 ', 2, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000034 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000038 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000044 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000045 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000046 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000047 ', 4, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000051 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000052 ', 4, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000057 ', 4, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000070 ', 4, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000074 ', 4, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000075 ', 4, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000081 ', 4, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000087 ', 5, 750000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000088 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000089 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000090 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000091 ', 4, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000094 ', 4, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000095 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000109 ', 2, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000112 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000114 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000115 ', 4, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000117 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000122 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000123 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000128 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000136 ', 4, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000140 ', 4, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000149 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000154 ', 2, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000156 ', 4, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000158 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000160 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000162 ', 2, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000169 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000174 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000175 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000177 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000178 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000180 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000181 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000184 ', 2, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH013', N'HD0000187 ', 3, 450000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000001 ', 3, 396000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000010 ', 2, 264000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000029 ', 4, 528000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000040 ', 3, 396000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000047 ', 3, 396000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000048 ', 3, 396000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000050 ', 3, 396000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000054 ', 4, 528000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000056 ', 4, 528000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000059 ', 4, 528000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000063 ', 4, 528000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000068 ', 3, 396000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000069 ', 4, 528000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000071 ', 4, 528000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000079 ', 3, 396000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000089 ', 3, 396000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000095 ', 3, 396000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000097 ', 3, 396000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000100 ', 3, 396000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000111 ', 4, 528000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000113 ', 2, 264000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000118 ', 3, 396000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000125 ', 3, 396000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000126 ', 4, 528000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000130 ', 3, 396000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000135 ', 3, 396000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000137 ', 4, 528000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000138 ', 3, 396000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000141 ', 4, 528000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000142 ', 4, 528000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000144 ', 4, 528000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000147 ', 4, 528000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000150 ', 4, 528000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000156 ', 5, 660000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000159 ', 2, 264000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000164 ', 24, 3168000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000166 ', 2, 264000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000171 ', 4, 528000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000179 ', 2, 264000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000182 ', 2, 264000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH014', N'HD0000185 ', 3, 396000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000002 ', 24, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000007 ', 2, 50000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000008 ', 4, 100000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000009 ', 3, 75000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000011 ', 3, 75000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000016 ', 2, 50000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000018 ', 2, 50000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000021 ', 4, 100000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000023 ', 35, 875000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000025 ', 4, 100000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000030 ', 4, 100000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000034 ', 32, 800000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000035 ', 34, 850000.0000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000036 ', 2, 50000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000044 ', 43, 1075000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000045 ', 34, 850000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000047 ', 43, 1075000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000048 ', 23, 575000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000049 ', 4, 100000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000053 ', 5, 125000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000056 ', 34, 850000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000058 ', 53, 1325000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000061 ', 34, 850000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000064 ', 4, 100000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000067 ', 4, 100000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000074 ', 34, 850000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000075 ', 4, 100000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000078 ', 4, 100000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000082 ', 24, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000083 ', 34, 850000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000084 ', 24, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000090 ', 3, 75000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000091 ', 3, 75000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000096 ', 3, 75000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000097 ', 3, 75000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000100 ', 24, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000101 ', 4, 100000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000104 ', 45, 1125000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000107 ', 45, 1125000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000108 ', 23, 575000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000116 ', 23, 575000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000119 ', 3, 75000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000120 ', 3, 75000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000121 ', 24, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000122 ', 3, 75000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000124 ', 3, 75000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000126 ', 6, 150000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000127 ', 32, 800000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000131 ', 4, 100000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000132 ', 3, 75000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000134 ', 3, 75000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000136 ', 4, 100000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000142 ', 34, 850000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000144 ', 24, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000146 ', 4, 100000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000150 ', 12, 300000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000155 ', 3, 75000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000165 ', 2, 50000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000166 ', 3, 75000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000168 ', 23, 575000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000169 ', 35, 875000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000170 ', 43, 1075000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000172 ', 3, 75000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000175 ', 3, 75000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000176 ', 2, 50000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000178 ', 2, 50000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000181 ', 24, 600000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000182 ', 41, 1025000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaMH], [MaHD], [SoLuong], [ThanhTien]) VALUES (N'MH015', N'HD0000186 ', 3, 75000.0000)
GO
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000001 ', CAST(N'11:34:42' AS Time), CAST(N'11:12:44.2005811' AS Time), CAST(N'2021-10-12' AS Date), 702350.0000, N'P001 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000002 ', CAST(N'11:34:42' AS Time), CAST(N'11:13:15.4318822' AS Time), CAST(N'2021-10-12' AS Date), 1416250.0000, N'P027 ', N'NV002', N'KH002')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000003 ', CAST(N'11:34:42' AS Time), CAST(N'11:12:58.5528091' AS Time), CAST(N'2021-11-12' AS Date), 200750.0000, N'P003 ', N'NV002', N'KH003')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000004 ', CAST(N'11:34:42' AS Time), CAST(N'11:12:52.4720458' AS Time), CAST(N'2021-11-12' AS Date), 849750.0000, N'P002 ', N'NV002', N'KH004')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000005 ', CAST(N'09:36:13' AS Time), CAST(N'11:13:27.7525731' AS Time), CAST(N'2021-10-12' AS Date), 1170583.3333, N'P004 ', N'NV002', N'KH005')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000006 ', CAST(N'09:43:40' AS Time), CAST(N'11:13:03.8964019' AS Time), CAST(N'2021-10-12' AS Date), 1100916.6667, N'P005 ', N'NV002', N'KH006')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000007 ', CAST(N'09:43:40' AS Time), CAST(N'11:13:45.4084907' AS Time), CAST(N'2021-10-12' AS Date), 1111000.0000, N'P006 ', N'NV002', N'KH007')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000008 ', CAST(N'09:43:40' AS Time), CAST(N'11:13:50.2425882' AS Time), CAST(N'2021-10-12' AS Date), 489500.0000, N'P007 ', N'NV002', N'KH008')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000009 ', CAST(N'09:43:40' AS Time), CAST(N'11:13:55.2489386' AS Time), CAST(N'2021-10-12' AS Date), 995500.0000, N'P008 ', N'NV002', N'KH009')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000010 ', CAST(N'09:43:40' AS Time), CAST(N'11:14:18.9607894' AS Time), CAST(N'2021-10-12' AS Date), 702900.0000, N'P011 ', N'NV002', N'KH010')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000011 ', CAST(N'09:43:40' AS Time), CAST(N'11:14:34.4818247' AS Time), CAST(N'2021-10-12' AS Date), 495000.0000, N'P013 ', N'NV002', N'KH011')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000012 ', CAST(N'09:43:40' AS Time), CAST(N'11:14:06.6104345' AS Time), CAST(N'2021-10-12' AS Date), 1204500.0000, N'P009 ', N'NV002', N'KH012')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000013 ', CAST(N'09:43:40' AS Time), CAST(N'11:14:12.2655634' AS Time), CAST(N'2021-10-12' AS Date), 819500.0000, N'P010 ', N'NV002', N'KH013')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000014 ', CAST(N'09:43:40' AS Time), CAST(N'11:13:20.6486150' AS Time), CAST(N'2021-10-12' AS Date), 660916.6667, N'P029 ', N'NV002', N'KH014')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000015 ', CAST(N'09:43:40' AS Time), CAST(N'11:13:37.9686478' AS Time), CAST(N'2021-10-12' AS Date), 880916.6667, N'P030 ', N'NV002', N'KH015')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000016 ', CAST(N'09:43:40' AS Time), CAST(N'11:13:09.8428656' AS Time), CAST(N'2021-10-12' AS Date), 1023916.6667, N'P026 ', N'NV002', N'KH016')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000017 ', CAST(N'09:43:40' AS Time), CAST(N'11:14:39.4596730' AS Time), CAST(N'2021-10-12' AS Date), 924000.0000, N'P015 ', N'NV002', N'KH017')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000018 ', CAST(N'09:43:40' AS Time), CAST(N'11:14:28.7131420' AS Time), CAST(N'2021-10-12' AS Date), 962500.0000, N'P014 ', N'NV002', N'KH018')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000019 ', CAST(N'09:43:40' AS Time), CAST(N'11:14:23.8646511' AS Time), CAST(N'2021-10-12' AS Date), 247500.0000, N'P012 ', N'NV002', N'KH018')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000020 ', CAST(N'09:43:40' AS Time), CAST(N'11:13:33.4016877' AS Time), CAST(N'2021-10-12' AS Date), 1051416.6667, N'P028 ', N'NV002', N'KH019')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000021 ', CAST(N'11:31:10' AS Time), CAST(N'14:33:40.3788873' AS Time), CAST(N'2021-10-13' AS Date), 1345666.6667, N'P026 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000022 ', CAST(N'11:31:10' AS Time), CAST(N'14:39:19.2914880' AS Time), CAST(N'2021-10-13' AS Date), 1595000.0000, N'P007 ', N'NV002', N'KH002')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000023 ', CAST(N'11:31:10' AS Time), CAST(N'14:33:54.0999824' AS Time), CAST(N'2021-10-13' AS Date), 3182666.6667, N'P028 ', N'NV002', N'KH003')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000024 ', CAST(N'11:31:10' AS Time), CAST(N'14:39:33.6127467' AS Time), CAST(N'2021-10-13' AS Date), 1886500.0000, N'P010 ', N'NV002', N'KH005')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000025 ', CAST(N'11:33:07' AS Time), CAST(N'14:34:07.9149634' AS Time), CAST(N'2021-10-13' AS Date), 1731583.3333, N'P030 ', N'NV002', N'KH006')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000026 ', CAST(N'13:39:42' AS Time), CAST(N'16:58:25.1801679' AS Time), CAST(N'2021-10-14' AS Date), 2469500.0000, N'P001 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000027 ', CAST(N'13:39:42' AS Time), CAST(N'16:59:13.2758803' AS Time), CAST(N'2021-10-14' AS Date), 1801250.0000, N'P007 ', N'NV002', N'KH007')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000028 ', CAST(N'13:39:42' AS Time), CAST(N'16:59:29.0034785' AS Time), CAST(N'2021-10-14' AS Date), 1845250.0000, N'P008 ', N'NV002', N'KH008')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000029 ', CAST(N'13:40:08' AS Time), CAST(N'16:58:44.2279823' AS Time), CAST(N'2021-10-14' AS Date), 2747800.0000, N'P028 ', N'NV002', N'KH009')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000030 ', CAST(N'13:40:14' AS Time), CAST(N'16:58:58.3638746' AS Time), CAST(N'2021-10-14' AS Date), 1523500.0000, N'P029 ', N'NV002', N'KH010')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000031 ', CAST(N'14:26:05.0149086' AS Time), CAST(N'22:30:39.3768548' AS Time), CAST(N'2021-10-15' AS Date), 2766500.0000, N'P006 ', N'NV002', N'KH011')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000032 ', CAST(N'14:26:11.1169547' AS Time), CAST(N'22:32:00.3086105' AS Time), CAST(N'2021-10-15' AS Date), 2307250.0000, N'P013 ', N'NV002', N'KH012')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000033 ', CAST(N'14:26:19.8156545' AS Time), CAST(N'22:31:44.9472444' AS Time), CAST(N'2021-10-15' AS Date), 2048750.0000, N'P010 ', N'NV002', N'KH013')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000034 ', CAST(N'14:26:26.8997788' AS Time), CAST(N'22:31:28.9215742' AS Time), CAST(N'2021-10-15' AS Date), 3663916.6667, N'P029 ', N'NV002', N'KH014')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000035 ', CAST(N'14:26:33.2626541' AS Time), CAST(N'22:30:55.9150769' AS Time), CAST(N'2021-10-15' AS Date), 4192833.3333, N'P027 ', N'NV002', N'KH015')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000036 ', CAST(N'15:32:14.6903258' AS Time), CAST(N'21:34:03.7664680' AS Time), CAST(N'2021-10-16' AS Date), 2325583.3333, N'P001 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000037 ', CAST(N'15:32:23.0527488' AS Time), CAST(N'21:34:23.1098069' AS Time), CAST(N'2021-10-16' AS Date), 2484166.6667, N'P027 ', N'NV002', N'KH016')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000038 ', CAST(N'15:32:27.9273940' AS Time), CAST(N'21:34:39.4221564' AS Time), CAST(N'2021-10-16' AS Date), 1688500.0000, N'P011 ', N'NV002', N'KH017')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000039 ', CAST(N'15:32:32.6692801' AS Time), CAST(N'21:34:50.6136206' AS Time), CAST(N'2021-10-16' AS Date), 1259500.0000, N'P014 ', N'NV002', N'KH018')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000040 ', CAST(N'15:32:38.0677937' AS Time), CAST(N'21:35:13.3666320' AS Time), CAST(N'2021-10-16' AS Date), 2740100.0000, N'P010 ', N'NV002', N'KH019')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000041 ', CAST(N'13:35:32.8166108' AS Time), CAST(N'19:37:12.7883758' AS Time), CAST(N'2021-10-17' AS Date), 2263250.0000, N'P006 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000042 ', CAST(N'13:35:37.7126689' AS Time), CAST(N'13:36:19.6997890' AS Time), CAST(N'2021-10-17' AS Date), 880000.0000, N'P002 ', N'NV002', N'KH002')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000043 ', CAST(N'13:35:45.8685450' AS Time), CAST(N'13:36:36.0841378' AS Time), CAST(N'2021-10-17' AS Date), 962500.0000, N'P028 ', N'NV002', N'KH003')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000044 ', CAST(N'13:35:52.5774063' AS Time), CAST(N'19:37:37.7561588' AS Time), CAST(N'2021-10-17' AS Date), 3346750.0000, N'P008 ', N'NV002', N'KH004')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000045 ', CAST(N'13:36:01.8083308' AS Time), CAST(N'19:37:58.1567251' AS Time), CAST(N'2021-10-17' AS Date), 3192750.0000, N'P015 ', N'NV002', N'KH005')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000046 ', CAST(N'14:38:07.9174804' AS Time), CAST(N'22:02:59.5909796' AS Time), CAST(N'2021-10-18' AS Date), 3124000.0000, N'P001 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000047 ', CAST(N'14:38:18.5879721' AS Time), CAST(N'22:03:26.6377054' AS Time), CAST(N'2021-10-18' AS Date), 4801683.3333, N'P027 ', N'NV002', N'KH002')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000048 ', CAST(N'14:57:59.5436069' AS Time), CAST(N'22:20:02.1588172' AS Time), CAST(N'2021-10-18' AS Date), 3275433.3333, N'P029 ', N'NV002', N'KH003')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000049 ', CAST(N'14:58:05.7750685' AS Time), CAST(N'22:20:14.1971575' AS Time), CAST(N'2021-10-18' AS Date), 2233000.0000, N'P013 ', N'NV002', N'KH004')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000050 ', CAST(N'14:58:12.5534423' AS Time), CAST(N'22:21:05.5575381' AS Time), CAST(N'2021-10-18' AS Date), 2558600.0000, N'P015 ', N'NV002', N'KH005')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000051 ', CAST(N'14:33:50.9389039' AS Time), CAST(N'20:34:29.0988886' AS Time), CAST(N'2021-10-19' AS Date), 2970000.0000, N'P001 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000052 ', CAST(N'14:33:54.9470144' AS Time), CAST(N'20:35:49.0663678' AS Time), CAST(N'2021-10-19' AS Date), 2989250.0000, N'P007 ', N'NV002', N'KH002')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000053 ', CAST(N'14:34:00.1295949' AS Time), CAST(N'20:34:54.9308697' AS Time), CAST(N'2021-10-19' AS Date), 2051500.0000, N'P029 ', N'NV002', N'KH003')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000054 ', CAST(N'14:34:08.5422216' AS Time), CAST(N'20:36:03.2028751' AS Time), CAST(N'2021-10-19' AS Date), 2877050.0000, N'P014 ', N'NV002', N'KH004')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000055 ', CAST(N'14:34:13.4883634' AS Time), CAST(N'20:34:39.5464906' AS Time), CAST(N'2021-10-19' AS Date), 2673000.0000, N'P003 ', N'NV002', N'KH005')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000056 ', CAST(N'13:36:15.1471501' AS Time), CAST(N'19:36:55.8144445' AS Time), CAST(N'2021-10-20' AS Date), 3479300.0000, N'P001 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000057 ', CAST(N'13:36:22.8638405' AS Time), CAST(N'19:37:43.2544311' AS Time), CAST(N'2021-10-20' AS Date), 1960750.0000, N'P014 ', N'NV002', N'KH006')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000058 ', CAST(N'13:36:28.0245787' AS Time), CAST(N'19:38:07.5586568' AS Time), CAST(N'2021-10-20' AS Date), 3786750.0000, N'P015 ', N'NV002', N'KH007')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000059 ', CAST(N'13:36:33.4938901' AS Time), CAST(N'19:37:26.6136739' AS Time), CAST(N'2021-10-20' AS Date), 2434300.0000, N'P012 ', N'NV002', N'KH008')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000060 ', CAST(N'13:36:38.6885314' AS Time), CAST(N'19:37:08.6001655' AS Time), CAST(N'2021-10-20' AS Date), 2233000.0000, N'P029 ', N'NV002', N'KH009')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000061 ', CAST(N'13:38:26.3753850' AS Time), CAST(N'22:51:41.4968113' AS Time), CAST(N'2021-10-21' AS Date), 3363250.0000, N'P007 ', N'NV002', N'KH010')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000062 ', CAST(N'13:38:32.4278748' AS Time), CAST(N'22:51:53.1431193' AS Time), CAST(N'2021-10-21' AS Date), 1949750.0000, N'P010 ', N'NV002', N'KH011')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000063 ', CAST(N'13:40:26.1472400' AS Time), CAST(N'22:51:09.7679024' AS Time), CAST(N'2021-10-21' AS Date), 4091633.3333, N'P028 ', N'NV002', N'KH013')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000064 ', CAST(N'13:40:33.6218973' AS Time), CAST(N'22:50:58.7906915' AS Time), CAST(N'2021-10-21' AS Date), 3466833.3333, N'P003 ', N'NV002', N'KH012')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000065 ', CAST(N'13:40:52.9804777' AS Time), CAST(N'22:50:46.7531416' AS Time), CAST(N'2021-10-21' AS Date), 4727250.0000, N'P001 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000066 ', CAST(N'13:54:17.9226125' AS Time), CAST(N'21:55:49.6763132' AS Time), CAST(N'2021-10-22' AS Date), 2842583.3333, N'P001 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000067 ', CAST(N'13:54:21.0215828' AS Time), CAST(N'21:56:15.8205294' AS Time), CAST(N'2021-10-22' AS Date), 2488750.0000, N'P007 ', N'NV002', N'KH015')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000068 ', CAST(N'13:54:27.6525985' AS Time), CAST(N'21:56:38.2029795' AS Time), CAST(N'2021-10-22' AS Date), 2927100.0000, N'P008 ', N'NV002', N'KH002')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000069 ', CAST(N'13:54:33.5169970' AS Time), CAST(N'21:56:03.6120277' AS Time), CAST(N'2021-10-22' AS Date), 3115383.3333, N'P030 ', N'NV002', N'KH003')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000070 ', CAST(N'13:54:38.9646417' AS Time), CAST(N'21:56:49.5391995' AS Time), CAST(N'2021-10-22' AS Date), 2403500.0000, N'P010 ', N'NV002', N'KH004')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000071 ', CAST(N'13:57:02.6971726' AS Time), CAST(N'17:57:43.0482182' AS Time), CAST(N'2021-10-23' AS Date), 2032800.0000, N'P001 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000072 ', CAST(N'13:57:10.9012662' AS Time), CAST(N'17:57:58.5540044' AS Time), CAST(N'2021-10-23' AS Date), 2530000.0000, N'P002 ', N'NV002', N'KH002')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000073 ', CAST(N'13:57:16.1716075' AS Time), CAST(N'17:58:26.2320269' AS Time), CAST(N'2021-10-23' AS Date), 1685750.0000, N'P009 ', N'NV002', N'KH003')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000074 ', CAST(N'13:57:21.5981964' AS Time), CAST(N'17:58:56.2895985' AS Time), CAST(N'2021-10-23' AS Date), 2521750.0000, N'P010 ', N'NV002', N'KH004')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000075 ', CAST(N'13:57:26.1496836' AS Time), CAST(N'17:58:13.4172972' AS Time), CAST(N'2021-10-23' AS Date), 2398000.0000, N'P007 ', N'NV002', N'KH005')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000076 ', CAST(N'15:59:35.2877253' AS Time), CAST(N'21:05:01.1865314' AS Time), CAST(N'2021-10-24' AS Date), 2607916.6667, N'P002 ', N'NV002', N'KH002')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000077 ', CAST(N'15:59:40.5849498' AS Time), CAST(N'21:05:14.0194696' AS Time), CAST(N'2021-10-24' AS Date), 2486916.6667, N'P029 ', N'NV002', N'KH007')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000078 ', CAST(N'15:59:45.4944011' AS Time), CAST(N'21:05:27.3795906' AS Time), CAST(N'2021-10-24' AS Date), 2646416.6667, N'P030 ', N'NV002', N'KH003')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000079 ', CAST(N'15:59:54.3510987' AS Time), CAST(N'21:06:37.5398786' AS Time), CAST(N'2021-10-24' AS Date), 2267100.0000, N'P006 ', N'NV002', N'KH006')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000080 ', CAST(N'16:00:03.2447925' AS Time), CAST(N'21:07:05.1722504' AS Time), CAST(N'2021-10-24' AS Date), 1537250.0000, N'P014 ', N'NV002', N'KH009')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000081 ', CAST(N'16:08:43.0515851' AS Time), CAST(N'22:15:00.6457841' AS Time), CAST(N'2021-10-25' AS Date), 2821500.0000, N'P002 ', N'NV002', N'KH020')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000082 ', CAST(N'16:09:08.5870202' AS Time), CAST(N'16:09:55.3483880' AS Time), CAST(N'2021-10-25' AS Date), 1782000.0000, N'P008 ', N'NV002', N'KH021')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000083 ', CAST(N'16:10:32.8357200' AS Time), CAST(N'22:15:12.7575992' AS Time), CAST(N'2021-10-25' AS Date), 2827000.0000, N'P015 ', N'NV002', N'KH022')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000084 ', CAST(N'16:11:08.9724289' AS Time), CAST(N'16:11:20.4358236' AS Time), CAST(N'2021-10-25' AS Date), 1721500.0000, N'P012 ', N'NV002', N'KH023')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000085 ', CAST(N'16:12:15.2928275' AS Time), CAST(N'22:15:18.6217033' AS Time), CAST(N'2021-10-25' AS Date), 1262250.0000, N'P012 ', N'NV002', N'KH024')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000086 ', CAST(N'16:13:16.3888612' AS Time), CAST(N'16:13:27.1625971' AS Time), CAST(N'2021-10-25' AS Date), 544500.0000, N'P009 ', N'NV002', N'KH025')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000087 ', CAST(N'16:13:50.2066274' AS Time), CAST(N'16:13:59.8204750' AS Time), CAST(N'2021-10-25' AS Date), 1727000.0000, N'P006 ', N'NV002', N'KH026')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000088 ', CAST(N'16:14:34.1565020' AS Time), CAST(N'22:15:07.0450097' AS Time), CAST(N'2021-10-25' AS Date), 2766500.0000, N'P010 ', N'NV002', N'KH011')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000089 ', CAST(N'16:16:17.6333207' AS Time), CAST(N'22:17:23.0148942' AS Time), CAST(N'2021-10-26' AS Date), 3228683.3333, N'P027 ', N'NV002', N'KH002')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000090 ', CAST(N'16:16:22.7114772' AS Time), CAST(N'22:18:07.0139050' AS Time), CAST(N'2021-10-26' AS Date), 2048750.0000, N'P014 ', N'NV002', N'KH003')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000091 ', CAST(N'16:16:36.3011283' AS Time), CAST(N'22:17:50.3341560' AS Time), CAST(N'2021-10-26' AS Date), 2164250.0000, N'P011 ', N'NV002', N'KH005')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000092 ', CAST(N'16:16:42.6511104' AS Time), CAST(N'22:17:06.8704630' AS Time), CAST(N'2021-10-26' AS Date), 3179000.0000, N'P004 ', N'NV002', N'KH004')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000093 ', CAST(N'16:16:52.0453790' AS Time), CAST(N'22:17:33.8875521' AS Time), CAST(N'2021-10-26' AS Date), 2706000.0000, N'P030 ', N'NV002', N'KH006')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000094 ', CAST(N'15:18:23.1224175' AS Time), CAST(N'20:19:01.9544750' AS Time), CAST(N'2021-10-27' AS Date), 2266000.0000, N'P001 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000095 ', CAST(N'15:18:30.3289662' AS Time), CAST(N'20:19:30.2338605' AS Time), CAST(N'2021-10-27' AS Date), 2399100.0000, N'P009 ', N'NV002', N'KH007')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000096 ', CAST(N'15:18:35.4983184' AS Time), CAST(N'20:19:43.9531668' AS Time), CAST(N'2021-10-27' AS Date), 1509750.0000, N'P013 ', N'NV002', N'KH008')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000097 ', CAST(N'15:18:41.3568945' AS Time), CAST(N'20:19:17.6187237' AS Time), CAST(N'2021-10-27' AS Date), 2536600.0000, N'P005 ', N'NV002', N'KH009')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000098 ', CAST(N'15:18:47.3070380' AS Time), CAST(N'20:21:06.2099657' AS Time), CAST(N'2021-10-27' AS Date), 1606000.0000, N'P015 ', N'NV002', N'KH010')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000099 ', CAST(N'18:21:22.4983558' AS Time), CAST(N'22:27:42.5682651' AS Time), CAST(N'2021-10-28' AS Date), 2062500.0000, N'P002 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000100 ', CAST(N'18:21:37.6015083' AS Time), CAST(N'22:27:57.0854139' AS Time), CAST(N'2021-10-28' AS Date), 3081100.0000, N'P028 ', N'NV002', N'KH012')
GO
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000101 ', CAST(N'18:21:48.3719827' AS Time), CAST(N'22:28:12.9985644' AS Time), CAST(N'2021-10-28' AS Date), 1595000.0000, N'P006 ', N'NV002', N'KH013')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000102 ', CAST(N'18:21:53.0775679' AS Time), CAST(N'22:28:34.0953168' AS Time), CAST(N'2021-10-28' AS Date), 2387000.0000, N'P009 ', N'NV002', N'KH014')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000103 ', CAST(N'18:21:58.9088121' AS Time), CAST(N'22:34:30.9843110' AS Time), CAST(N'2021-10-28' AS Date), 2057000.0000, N'P015 ', N'NV002', N'KH015')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000104 ', CAST(N'21:35:07.8710008' AS Time), CAST(N'23:35:51.9610713' AS Time), CAST(N'2021-10-29' AS Date), 4031500.0000, N'P001 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000105 ', CAST(N'21:35:15.7862414' AS Time), CAST(N'23:35:59.5538627' AS Time), CAST(N'2021-10-29' AS Date), 550000.0000, N'P028 ', N'NV002', N'KH002')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000106 ', CAST(N'21:35:20.7398079' AS Time), CAST(N'23:36:11.9869236' AS Time), CAST(N'2021-10-29' AS Date), 792000.0000, N'P030 ', N'NV002', N'KH003')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000107 ', CAST(N'21:35:26.6419293' AS Time), CAST(N'23:36:26.3466003' AS Time), CAST(N'2021-10-29' AS Date), 2409000.0000, N'P008 ', N'NV002', N'KH004')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000108 ', CAST(N'21:35:31.6614989' AS Time), CAST(N'23:36:41.3453820' AS Time), CAST(N'2021-10-29' AS Date), 1328250.0000, N'P010 ', N'NV002', N'KH005')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000109 ', CAST(N'16:36:59.0005297' AS Time), CAST(N'23:37:50.4731407' AS Time), CAST(N'2021-10-30' AS Date), 2766500.0000, N'P027 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000110 ', CAST(N'16:37:06.8587227' AS Time), CAST(N'23:45:48.7120567' AS Time), CAST(N'2021-10-30' AS Date), 1441000.0000, N'P009 ', N'NV002', N'KH019')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000111 ', CAST(N'16:37:17.8701988' AS Time), CAST(N'23:38:04.7687740' AS Time), CAST(N'2021-10-30' AS Date), 3495800.0000, N'P030 ', N'NV002', N'KH018')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000112 ', CAST(N'16:37:26.4661198' AS Time), CAST(N'23:46:03.1291803' AS Time), CAST(N'2021-10-30' AS Date), 2480500.0000, N'P012 ', N'NV002', N'KH017')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000113 ', CAST(N'16:37:35.8951681' AS Time), CAST(N'23:46:21.3371128' AS Time), CAST(N'2021-10-30' AS Date), 2814900.0000, N'P015 ', N'NV002', N'KH016')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000114 ', CAST(N'09:14:07.8387799' AS Time), CAST(N'16:15:05.9307873' AS Time), CAST(N'2021-11-01' AS Date), 2904000.0000, N'P001 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000115 ', CAST(N'09:14:21.4664044' AS Time), CAST(N'16:17:32.4221825' AS Time), CAST(N'2021-11-01' AS Date), 2571250.0000, N'P014 ', N'NV002', N'KH006')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000116 ', CAST(N'09:14:31.6497778' AS Time), CAST(N'16:15:26.8551634' AS Time), CAST(N'2021-11-01' AS Date), 3349500.0000, N'P030 ', N'NV002', N'KH007')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000117 ', CAST(N'09:14:37.4864570' AS Time), CAST(N'16:16:50.7424980' AS Time), CAST(N'2021-11-01' AS Date), 3025000.0000, N'P011 ', N'NV002', N'KH008')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000118 ', CAST(N'09:14:44.4515844' AS Time), CAST(N'16:17:20.5592587' AS Time), CAST(N'2021-11-01' AS Date), 2190100.0000, N'P012 ', N'NV002', N'KH009')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000119 ', CAST(N'14:19:22.9117522' AS Time), CAST(N'21:22:02.9503470' AS Time), CAST(N'2021-11-02' AS Date), 2610666.6667, N'P001 ', N'NV002', N'KH002')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000120 ', CAST(N'14:19:30.1610928' AS Time), CAST(N'21:22:15.9582501' AS Time), CAST(N'2021-11-02' AS Date), 3039666.6667, N'P027 ', N'NV002', N'KH003')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000121 ', CAST(N'14:19:36.2595341' AS Time), CAST(N'21:31:11.3690941' AS Time), CAST(N'2021-11-02' AS Date), 4021416.6667, N'P029 ', N'NV002', N'KH004')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000122 ', CAST(N'14:19:42.1390686' AS Time), CAST(N'21:31:55.0860648' AS Time), CAST(N'2021-11-02' AS Date), 1864500.0000, N'P011 ', N'NV002', N'KH005')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000123 ', CAST(N'14:19:52.7515794' AS Time), CAST(N'21:32:07.8782828' AS Time), CAST(N'2021-11-02' AS Date), 1914000.0000, N'P014 ', N'NV002', N'KH016')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000124 ', CAST(N'15:38:33.2905650' AS Time), CAST(N'22:42:22.4008835' AS Time), CAST(N'2021-11-03' AS Date), 2714250.0000, N'P001 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000125 ', CAST(N'15:38:40.1166248' AS Time), CAST(N'22:43:09.5113077' AS Time), CAST(N'2021-11-03' AS Date), 2052600.0000, N'P008 ', N'NV002', N'KH017')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000126 ', CAST(N'15:38:45.8003354' AS Time), CAST(N'22:43:24.9673511' AS Time), CAST(N'2021-11-03' AS Date), 1977800.0000, N'P010 ', N'NV002', N'KH017')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000127 ', CAST(N'15:38:55.4657756' AS Time), CAST(N'22:42:35.7040221' AS Time), CAST(N'2021-11-03' AS Date), 3643750.0000, N'P005 ', N'NV002', N'KH018')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000128 ', CAST(N'15:39:03.6919222' AS Time), CAST(N'22:42:52.6634719' AS Time), CAST(N'2021-11-03' AS Date), 2252250.0000, N'P007 ', N'NV002', N'KH019')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000129 ', CAST(N'17:47:36.8540756' AS Time), CAST(N'22:48:19.5279449' AS Time), CAST(N'2021-11-04' AS Date), 2882000.0000, N'P001 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000130 ', CAST(N'17:47:43.0063645' AS Time), CAST(N'23:19:20.9836932' AS Time), CAST(N'2021-11-04' AS Date), 1675850.0000, N'P008 ', N'NV002', N'KH002')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000131 ', CAST(N'17:47:49.0402931' AS Time), CAST(N'23:19:36.9525474' AS Time), CAST(N'2021-11-04' AS Date), 2230250.0000, N'P009 ', N'NV002', N'KH003')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000132 ', CAST(N'17:47:54.9792722' AS Time), CAST(N'23:19:07.5919448' AS Time), CAST(N'2021-11-04' AS Date), 2180750.0000, N'P006 ', N'NV002', N'KH004')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000133 ', CAST(N'17:48:01.1988845' AS Time), CAST(N'23:18:53.3998573' AS Time), CAST(N'2021-11-04' AS Date), 2354000.0000, N'P005 ', N'NV002', N'KH005')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000134 ', CAST(N'16:36:05.8814156' AS Time), CAST(N'23:06:29.1149005' AS Time), CAST(N'2021-11-05' AS Date), 2288000.0000, N'P001 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000135 ', CAST(N'17:05:33.5053526' AS Time), CAST(N'23:37:15.3066854' AS Time), CAST(N'2021-11-05' AS Date), 2805183.3333, N'P027 ', N'NV002', N'KH014')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000136 ', CAST(N'17:05:42.9099401' AS Time), CAST(N'23:37:29.8036173' AS Time), CAST(N'2021-11-05' AS Date), 2010250.0000, N'P008 ', N'NV002', N'KH013')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000137 ', CAST(N'17:05:50.8021990' AS Time), CAST(N'23:38:16.9065725' AS Time), CAST(N'2021-11-05' AS Date), 2368300.0000, N'P015 ', N'NV002', N'KH016')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000138 ', CAST(N'17:05:55.7220560' AS Time), CAST(N'23:38:01.5235973' AS Time), CAST(N'2021-11-05' AS Date), 2399100.0000, N'P011 ', N'NV002', N'KH017')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000139 ', CAST(N'15:38:49.8602453' AS Time), CAST(N'22:46:05.1243201' AS Time), CAST(N'2021-11-06' AS Date), 2529083.3333, N'P001 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000140 ', CAST(N'15:39:01.1152836' AS Time), CAST(N'22:46:26.8516799' AS Time), CAST(N'2021-11-06' AS Date), 3656583.3333, N'P002 ', N'NV002', N'KH018')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000141 ', CAST(N'11:43:19.3078530' AS Time), CAST(N'11:43:27.7794103' AS Time), CAST(N'2021-11-14' AS Date), 1790800.0000, N'P028 ', N'NV002', N'KH027')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000142 ', CAST(N'11:43:50.6362099' AS Time), CAST(N'11:44:01.9071719' AS Time), CAST(N'2021-11-14' AS Date), 1647800.0000, N'P030 ', N'NV002', N'KH028')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000143 ', CAST(N'11:44:37.2913021' AS Time), CAST(N'22:47:12.0519032' AS Time), CAST(N'2021-11-14' AS Date), 3058000.0000, N'P013 ', N'NV002', N'KH029')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000144 ', CAST(N'11:45:01.1845457' AS Time), CAST(N'22:46:57.7081186' AS Time), CAST(N'2021-11-14' AS Date), 3372050.0000, N'P011 ', N'NV002', N'KH030')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000145 ', CAST(N'11:45:20.3888334' AS Time), CAST(N'22:47:25.7661408' AS Time), CAST(N'2021-11-14' AS Date), 2915000.0000, N'P015 ', N'NV002', N'KH031')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000146 ', CAST(N'11:45:40.9781292' AS Time), CAST(N'22:46:42.6774807' AS Time), CAST(N'2021-11-14' AS Date), 2851750.0000, N'P009 ', N'NV002', N'KH032')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000147 ', CAST(N'16:04:18.6767024' AS Time), CAST(N'22:05:51.4358583' AS Time), CAST(N'2021-11-06' AS Date), 2548883.3333, N'P001 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000148 ', CAST(N'16:04:26.5276618' AS Time), CAST(N'22:06:07.7153270' AS Time), CAST(N'2021-11-06' AS Date), 3046083.3333, N'P027 ', N'NV002', N'KH003')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000149 ', CAST(N'16:04:32.9119425' AS Time), CAST(N'22:06:23.1229483' AS Time), CAST(N'2021-11-06' AS Date), 2776583.3333, N'P029 ', N'NV002', N'KH004')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000150 ', CAST(N'16:04:42.9711421' AS Time), CAST(N'22:06:40.4598209' AS Time), CAST(N'2021-11-06' AS Date), 2085050.0000, N'P008 ', N'NV002', N'KH005')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000151 ', CAST(N'16:04:51.1554093' AS Time), CAST(N'22:06:52.9712335' AS Time), CAST(N'2021-11-06' AS Date), 1523500.0000, N'P014 ', N'NV002', N'KH006')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000152 ', CAST(N'15:07:01.0514872' AS Time), CAST(N'22:07:48.5915400' AS Time), CAST(N'2021-11-07' AS Date), 2832500.0000, N'P001 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000153 ', CAST(N'15:07:06.2480514' AS Time), CAST(N'22:08:19.9667064' AS Time), CAST(N'2021-11-07' AS Date), 1757250.0000, N'P007 ', N'NV002', N'KH007')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000154 ', CAST(N'15:07:13.1435613' AS Time), CAST(N'22:09:05.1825086' AS Time), CAST(N'2021-11-07' AS Date), 1861750.0000, N'P015 ', N'NV002', N'KH008')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000155 ', CAST(N'15:07:18.5217569' AS Time), CAST(N'22:08:51.9606602' AS Time), CAST(N'2021-11-07' AS Date), 1416250.0000, N'P013 ', N'NV002', N'KH009')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000156 ', CAST(N'15:07:23.2540944' AS Time), CAST(N'22:08:38.8483866' AS Time), CAST(N'2021-11-07' AS Date), 3071750.0000, N'P011 ', N'NV002', N'KH010')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000157 ', CAST(N'15:07:29.0111715' AS Time), CAST(N'22:08:01.9992414' AS Time), CAST(N'2021-11-07' AS Date), 3410000.0000, N'P005 ', N'NV002', N'KH010')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000158 ', CAST(N'15:09:13.6134923' AS Time), CAST(N'22:11:27.0882536' AS Time), CAST(N'2021-11-08' AS Date), 2737166.6667, N'P027 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000159 ', CAST(N'15:09:23.6473609' AS Time), CAST(N'22:11:39.7524363' AS Time), CAST(N'2021-11-08' AS Date), 2829566.6667, N'P028 ', N'NV002', N'KH012')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000160 ', CAST(N'15:09:28.6694642' AS Time), CAST(N'22:12:18.6874987' AS Time), CAST(N'2021-11-08' AS Date), 2924166.6667, N'P030 ', N'NV002', N'KH014')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000161 ', CAST(N'15:09:34.5270700' AS Time), CAST(N'22:12:43.2639599' AS Time), CAST(N'2021-11-08' AS Date), 2032250.0000, N'P006 ', N'NV002', N'KH013')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000162 ', CAST(N'15:09:44.2141439' AS Time), CAST(N'22:12:54.3603949' AS Time), CAST(N'2021-11-08' AS Date), 1724250.0000, N'P013 ', N'NV002', N'KH016')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000163 ', CAST(N'15:13:02.5959001' AS Time), CAST(N'22:13:47.7831899' AS Time), CAST(N'2021-11-09' AS Date), 3553000.0000, N'P001 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000164 ', CAST(N'15:13:07.9399164' AS Time), CAST(N'22:14:29.1380080' AS Time), CAST(N'2021-11-09' AS Date), 5995550.0000, N'P007 ', N'NV002', N'KH017')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000165 ', CAST(N'15:13:14.1005930' AS Time), CAST(N'22:14:51.6243397' AS Time), CAST(N'2021-11-09' AS Date), 2384250.0000, N'P014 ', N'NV002', N'KH018')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000166 ', CAST(N'15:13:20.1917273' AS Time), CAST(N'22:14:16.8015874' AS Time), CAST(N'2021-11-09' AS Date), 2825900.0000, N'P030 ', N'NV002', N'KH019')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000167 ', CAST(N'15:13:29.7236436' AS Time), CAST(N'22:14:02.0414774' AS Time), CAST(N'2021-11-09' AS Date), 2552000.0000, N'P003 ', N'NV002', N'KH002')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000168 ', CAST(N'14:15:11.4688046' AS Time), CAST(N'20:15:48.5123365' AS Time), CAST(N'2021-11-10' AS Date), 2931500.0000, N'P001 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000169 ', CAST(N'14:15:16.7107480' AS Time), CAST(N'20:16:41.4009722' AS Time), CAST(N'2021-11-10' AS Date), 3772083.3333, N'P027 ', N'NV002', N'KH003')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000170 ', CAST(N'14:15:20.9941206' AS Time), CAST(N'20:16:54.0573129' AS Time), CAST(N'2021-11-10' AS Date), 2868250.0000, N'P009 ', N'NV002', N'KH004')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000171 ', CAST(N'14:15:26.0984558' AS Time), CAST(N'20:17:33.0013127' AS Time), CAST(N'2021-11-10' AS Date), 1840300.0000, N'P015 ', N'NV002', N'KH005')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000172 ', CAST(N'14:15:31.8884279' AS Time), CAST(N'20:16:32.6179526' AS Time), CAST(N'2021-11-10' AS Date), 2067083.3333, N'P004 ', N'NV002', N'KH006')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000173 ', CAST(N'14:19:01.7825787' AS Time), CAST(N'14:22:42.9646850' AS Time), CAST(N'2021-11-11' AS Date), 1163250.0000, N'P006 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000174 ', CAST(N'14:19:11.0052577' AS Time), CAST(N'14:22:56.1246023' AS Time), CAST(N'2021-11-11' AS Date), 811250.0000, N'P012 ', N'NV002', N'KH007')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000175 ', CAST(N'14:19:19.3718377' AS Time), CAST(N'14:23:08.8922790' AS Time), CAST(N'2021-11-11' AS Date), 651750.0000, N'P013 ', N'NV002', N'KH008')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000176 ', CAST(N'14:19:23.9776515' AS Time), CAST(N'14:23:21.8435365' AS Time), CAST(N'2021-11-11' AS Date), 899250.0000, N'P014 ', N'NV002', N'KH009')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000177 ', CAST(N'14:19:28.5242913' AS Time), CAST(N'14:24:38.4055140' AS Time), CAST(N'2021-11-11' AS Date), 1102750.0000, N'P015 ', N'NV002', N'KH010')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000178 ', CAST(N'14:24:54.1897362' AS Time), CAST(N'22:25:49.1675470' AS Time), CAST(N'2021-11-12' AS Date), 2871000.0000, N'P027 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000179 ', CAST(N'14:24:57.3288780' AS Time), CAST(N'22:26:01.9992087' AS Time), CAST(N'2021-11-12' AS Date), 1954150.0000, N'P007 ', N'NV002', N'KH010')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000180 ', CAST(N'14:25:02.8650117' AS Time), CAST(N'22:26:15.4953427' AS Time), CAST(N'2021-11-12' AS Date), 1982750.0000, N'P010 ', N'NV002', N'KH012')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000181 ', CAST(N'14:25:07.0791684' AS Time), CAST(N'22:26:32.8064677' AS Time), CAST(N'2021-11-12' AS Date), 2829750.0000, N'P011 ', N'NV002', N'KH014')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000182 ', CAST(N'14:25:12.0165587' AS Time), CAST(N'22:26:59.1527037' AS Time), CAST(N'2021-11-12' AS Date), 3538150.0000, N'P013 ', N'NV002', N'KH013')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000183 ', CAST(N'15:27:42.6396023' AS Time), CAST(N'22:28:18.3065863' AS Time), CAST(N'2021-11-13' AS Date), 2288000.0000, N'P026 ', N'NV002', N'KH001')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000184 ', CAST(N'15:27:48.9195691' AS Time), CAST(N'22:28:31.8345410' AS Time), CAST(N'2021-11-13' AS Date), 2508000.0000, N'P008 ', N'NV002', N'KH016')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000185 ', CAST(N'15:27:54.0770341' AS Time), CAST(N'22:28:42.5869896' AS Time), CAST(N'2021-11-13' AS Date), 2586100.0000, N'P010 ', N'NV002', N'KH017')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000186 ', CAST(N'15:27:58.7461410' AS Time), CAST(N'22:29:06.9449481' AS Time), CAST(N'2021-11-13' AS Date), 1471250.0000, N'P014 ', N'NV002', N'KH018')
INSERT [dbo].[HoaDon] ([MaHD], [GioVao], [GioRa], [NgayLap], [TongTien], [MaPhong], [MaQL], [MaKH]) VALUES (N'HD0000187 ', CAST(N'15:28:05.0725126' AS Time), CAST(N'22:28:55.8892904' AS Time), CAST(N'2021-11-13' AS Date), 1837000.0000, N'P012 ', N'NV002', N'KH019')
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH001', N'Lê Tuấn', N'0343220597', 29, 73651416.6666, NULL, N'LKH01')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH002', N'Võ Thị Trà Giang', N'0972347165', 13, 30364400.0000, NULL, N'LKH01')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH003', N'Đoàn Ngọc Quốc Bảo', N'0911336236', 14, 32049233.3333, NULL, N'LKH01')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH004', N'Nguyễn Thái Nguyên', N'0339875293', 12, 31666800.0000, NULL, N'LKH01')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH005', N'Võ Đăng Khoa', N'0948105460', 12, 25515783.3333, NULL, N'LKH01')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH006', N'Tăng Bảo Trấn', N'0325676569', 8, 15928183.3333, NULL, N'LKH02')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH007', N'Huỳnh Nguyễn Quốc Bảo', N'0386513156', 8, 17503016.6667, NULL, N'LKH02')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH008', N'Trần Văn Sỹ', N'0879159420', 7, 11817300.0000, NULL, N'LKH02')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH009', N'Nguyễn Trung Hoài', N'0906461526', 8, 14555750.0000, NULL, N'LKH02')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH010', N'Võ Minh Phương', N'0396887293', 8, 16734300.0000, NULL, N'LKH02')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH011', N'Phạm Nguyễn Văn Trường', N'0396897293', 4, 7977750.0000, NULL, N'LKH03')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH012', N'Đinh Quang Huy', N'0335293294', 6, 14872000.0000, NULL, N'LKH02')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH013', N'Nguyễn Đức Huy', N'0879276284', 7, 16135533.3333, NULL, N'LKH02')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH014', N'Nguyễn Ngọc Huân', N'0974822904', 6, 15270933.3334, NULL, N'LKH02')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH015', N'Hồ Phước Duy', N'0974822944', 4, 9619500.0000, NULL, N'LKH03')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH016', N'Trần Hoàng Long', N'0394758354', 7, 14837533.3334, NULL, N'LKH02')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH017', N'Nguyễn Hoàng Khang', N'0983848700', 8, 20104150.0000, NULL, N'LKH02')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH018', N'Nguyễn Văn Trinh', N'0386200961', 8, NULL, NULL, N'LKH03')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH019', N'Võ Phước Lưu', N'0333751890', 6, 12147666.6667, NULL, N'LKH02')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH020', N'Tăng Công Tổng', N'0396897284', 1, 2821500.0000, NULL, N'LKH03')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH021', N'Nguyễn Hoàng Chung', N'0396867293', 1, 1782000.0000, NULL, N'LKH03')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH022', N'Thu Uyên', N'0387897293', 1, 2827000.0000, NULL, N'LKH03')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH023', N'Đinh Trần Quân', N'0398897293', 1, 1721500.0000, NULL, N'LKH03')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH024', N'Anh Quân', N'0396897985', 1, 1262250.0000, NULL, N'LKH03')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH025', N'Nguyễn Tuấn Anh', N'0396897463', 1, 544500.0000, NULL, N'LKH03')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH026', N'Nguyễn Gia Hy', N'0396807293', 1, 1727000.0000, NULL, N'LKH03')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH027', N'Huỳnh Tấn Tiến', N'0987732515', 1, 1790800.0000, NULL, N'LKH03')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH028', N'Huỳnh Tấn Tới', N'0987732797', 1, 1647800.0000, NULL, N'LKH03')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH029', N'Thiên Ân', N'0987065140', 1, 3058000.0000, NULL, N'LKH03')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH030', N'Nguyễn Hồng Phúc', N'0911662787', 1, 3372050.0000, NULL, N'LKH03')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH031', N'Nguyễn Gia Bảo', N'0911662767', 1, 2915000.0000, NULL, N'LKH03')
INSERT [dbo].[KhachHang] ([MaKH], [TenKhach], [SDT], [SoLanDen], [TongTien], [GhiChu], [MaLoaiKH]) VALUES (N'KH032', N'Lộc Kiệt Phát', N'0911662768', 1, 2851750.0000, NULL, N'LKH03')
GO
INSERT [dbo].[LoaiKhachHang] ([MaLoaiKH], [TenLoaiKH], [ChietKhau]) VALUES (N'LKH01', N'Vip', 10)
INSERT [dbo].[LoaiKhachHang] ([MaLoaiKH], [TenLoaiKH], [ChietKhau]) VALUES (N'LKH02', N'Thường xuyên', 5)
INSERT [dbo].[LoaiKhachHang] ([MaLoaiKH], [TenLoaiKH], [ChietKhau]) VALUES (N'LKH03', N'Thường', 0)
GO
INSERT [dbo].[LoaiNhanVien] ([MaLNV], [TenLNV], [MucLuong]) VALUES (N'LNV01', N'Quản lý', 10000000.0000)
INSERT [dbo].[LoaiNhanVien] ([MaLNV], [TenLNV], [MucLuong]) VALUES (N'LNV02', N'Thu ngân', 8000000.0000)
INSERT [dbo].[LoaiNhanVien] ([MaLNV], [TenLNV], [MucLuong]) VALUES (N'LNV03', N'Lễ tân', 7000000.0000)
INSERT [dbo].[LoaiNhanVien] ([MaLNV], [TenLNV], [MucLuong]) VALUES (N'LNV04', N'Phục vụ', 6000000.0000)
INSERT [dbo].[LoaiNhanVien] ([MaLNV], [TenLNV], [MucLuong]) VALUES (N'LNV05', N'Bảo vệ', 7500000.0000)
GO
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong], [Gia]) VALUES (N'LP001', N'VIP', 250000.0000)
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong], [Gia]) VALUES (N'LP002', N'THƯỜNG', 150000.0000)
GO
INSERT [dbo].[MatHang] ([MaMH], [TenMh], [Loai], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'MH001', N'Khô bò', N'Thức ăn', 9900, N'Hộp', 40000.0000, N'DSD', N'NV002')
INSERT [dbo].[MatHang] ([MaMH], [TenMh], [Loai], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'MH002', N'Cocacola', N'Đồ uống', 9793, N'Lon', 20000.0000, N'DSD', N'NV002')
INSERT [dbo].[MatHang] ([MaMH], [TenMh], [Loai], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'MH003', N'Bia-Tiger', N'Đồ uống', 9145, N'Lon', 30000.0000, N'DSD', N'NV002')
INSERT [dbo].[MatHang] ([MaMH], [TenMh], [Loai], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'MH004', N'7 Up', N'Đồ uống', 7314, N'Lon', 20000.0000, N'DSD', N'NV002')
INSERT [dbo].[MatHang] ([MaMH], [TenMh], [Loai], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'MH005', N'Tôm rang muối RUM', N'Thức ăn', 9754, N'Đĩa', 220000.0000, N'DSD', N'NV002')
INSERT [dbo].[MatHang] ([MaMH], [TenMh], [Loai], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'MH006', N'Mực nướng bơ', N'Thức ăn', 9830, N'Đĩa', 150000.0000, N'DSD', N'NV002')
INSERT [dbo].[MatHang] ([MaMH], [TenMh], [Loai], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'MH007', N'Bò lúc lắc', N'Thức ăn', 9807, N'Đĩa', 195000.0000, N'DSD', N'NV002')
INSERT [dbo].[MatHang] ([MaMH], [TenMh], [Loai], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'MH008', N'Salat trứng RUM', N'Thức ăn', 9790, N'Đĩa', 95000.0000, N'DSD', N'NV002')
INSERT [dbo].[MatHang] ([MaMH], [TenMh], [Loai], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'MH009', N'Sụn gà rang muối', N'Thức ăn', 9826, N'Đĩa', 50000.0000, N'DSD', N'NV002')
INSERT [dbo].[MatHang] ([MaMH], [TenMh], [Loai], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'MH010', N'Lạc rang', N'Thức ăn', 9762, N'Hộp', 55000.0000, N'DSD', N'NV002')
INSERT [dbo].[MatHang] ([MaMH], [TenMh], [Loai], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'MH011', N'Hướng dương', N'Thức ăn', 9773, N'Đĩa', 60000.0000, N'DSD', N'NV002')
INSERT [dbo].[MatHang] ([MaMH], [TenMh], [Loai], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'MH012', N'Mực câu nướng', N'Thức ăn', 9858, N'Đĩa', 160000.0000, N'DSD', N'NV002')
INSERT [dbo].[MatHang] ([MaMH], [TenMh], [Loai], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'MH013', N'Trâu gác bếp RUM', N'Thức ăn', 9786, N'Đĩa', 150000.0000, N'DSD', N'NV002')
INSERT [dbo].[MatHang] ([MaMH], [TenMh], [Loai], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'MH014', N'Trái cây nhiệt đới', N'Thức ăn', 9505, N'Đĩa', 132000.0000, N'DSD', N'NV002')
INSERT [dbo].[MatHang] ([MaMH], [TenMh], [Loai], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'MH015', N'Bia Hà Nội', N'Đồ uống', 8112, N'Lon', 25000.0000, N'DSD', N'NV002')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV001', N'Nguyễn Đức Huy', N'Nam', N'215543652', N'0935999475', N'97 Quang Trung, P.10, Gò Vấp, HCM', N'Đang làm', N'LNV01')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV002', N'Lê Anh Thảo', N'Nữ', N'215543643', N'0357075557', N'275 Nguyễn Văn Bảo, P.4, Gò Vấp, HCM', N'Đang làm', N'LNV02')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV003', N'Lê Đinh Ba', N'Nam', N'215543669', N'0357077778', N'775 Nguyễn Văn Linh, Q7, HCM', N'Đang làm', N'LNV03')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV004', N'Đào Thu Thảo', N'Nữ', N'215543789', N'0357066779', N'237 Nguyễn Thiện Thuật, Q7, HCM', N'Đang làm', N'LNV03')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV005', N'Nguyễn Thị Hảo', N'Nữ', N'215543891', N'0357066889', N'123 Nguyễn Kiệm, P.10, Gò Vấp, HCM', N'Đang làm', N'LNV03')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV006', N'Trương Thu Ánh', N'Nữ', N'215543611', N'0368066779', N'287 Phan Văn Hớn, Q.12, HCM', N'Đang làm', N'LNV03')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV007', N'Đào Bá Thông', N'Nam', N'215541234', N'0377066779', N'876 Phan Văn Hớn, Q.12, HCM', N'Đang làm', N'LNV04')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV008', N'Phan Anh Việt', N'Nam', N'214743611', N'0368066779', N'287 Phan Văn Hớn, Q.12, HCM', N'Đang làm', N'LNV04')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV009', N'Lê Đình Thái', N'Nam', N'214743081', N'0868069789', N'118 Nguyễn Kiệm, P.10, Gò Vấp, HCM', N'Đang làm', N'LNV05')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV010', N'Phan Việt Anh', N'Nam', N'212243611', N'0368066889', N'987 Phan Văn Hớn, Q.12, HCM', N'Đang làm', N'LNV05')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV011', N'Lê Anh Thư', N'Nữ', N'215343644', N'0357075590', N'149 Lê Đức Thọ, P.5, Gò Vấp, HCM', N'Đang làm', N'LNV01')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV012', N'Giang Vũ Tuấn', N'Nam', N'281252939', N'0386513111', N'13 Nguyễn Văn Bảo', N'Đang làm', N'LNV01')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV013', N'Nguyễn Thị Thuý', N'Nữ', N'272733811', N'0386513112', N'78 Lê Đức Thọ, P.6, Gò Vấp, HCM', N'Đang làm', N'LNV02')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV014', N'Lưu Khang Duy', N'Nam', N'233305581', N'0987065112', N'12 Nguyễn Kiệm, P.3 Gò Vấp', N'Đang làm', N'LNV02')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV015', N'Lê Nguyễn Khương', N'Nam', N'221491460', N'0987065332', N'735 Nguyễn Văn Linh, Q7, HCM', N'Đang làm', N'LNV03')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV016', N'Đinh Thái Hoà', N'Nam', N'245395416', N'0987065234', N'05 Nguyễn Văn Linh, Q7, HCM', N'Đang làm', N'LNV03')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV017', N'Đỗ Quang Liêm', N'Nam', N'264549675', N'0987065298', N'09 Nguyễn Văn Linh, Q7, HCM', N'Đang làm', N'LNV03')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV018', N'Nguyễn Thị Mỹ', N'Nữ', N'321736236', N'0948105461', N'29 Phan Văn Hớn, Q.12, HCM', N'Đang làm', N'LNV03')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV019', N'Trần Thị Phương', N'Nữ', N'206124105', N'0899613042', N'190 Phan Văn Hớn, Q.12, HCM', N'Đang làm', N'LNV03')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV020', N'Vũ Văn Thái', N'Nam', N'215501805', N'0394758354', N'190 Nguyễn Thiện Thuật, Q7, HCM', N'Đang làm', N'LNV03')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV021', N'Phan Nguyễn Tuân', N'Nam', N'342035083', N'0386200962', N'07 Văn Hớn, Q.11, HCM', N'Đang làm', N'LNV04')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV022', N'Trần Thị Ngọc', N'Nữ', N'251252081', N'0987065233', N'93 Nguyễn Văn Linh, Q8, HCM', N'Đang làm', N'LNV04')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV023', N'Võ Thanh Ly', N'Nữ', N'241926898', N'0394758352', N'24 Lê Lợi, P4, Gò Vấp', N'Đang làm', N'LNV04')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV024', N'Hồ Bá Minh', N'Nam', N'276017711', N'0938326026', N'06 Văn Hớn, Q.11, HCM', N'Đang làm', N'LNV04')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV025', N'Phan Hiệp Hoà', N'Nam', N'312455148', N'0974822903', N'25 Lê Lợi, P4, Gò Vấp', N'Đang làm', N'LNV04')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV026', N'Hồ Ngọc Thi', N'Nữ', N'225720505', N'0974822934', N'35 Lê Lợi, P4, Gò Vấp', N'Đang làm', N'LNV04')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV027', N'Huỳnh Quốc Việt', N'Nam', N'301783464', N'0335293293', N'37 Lê Lợi, P4, Gò Vấp', N'Đang làm', N'LNV04')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV028', N'Đỗ Quan Liêm', N'Nam', N'221511282', N'0365393434', N'90 Lê Lợi, P4, Gò Vấp', N'Đang làm', N'LNV04')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV029', N'Phan Thảo Nguyên', N'Nữ', N'241880570', N'0368066856', N'687 Phan Văn Hớn, Q.12, HCM', N'Đang làm', N'LNV05')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV030', N'Trần Gia Huy', N'Nam', N'215534605', N'0987732666', N'35 Nguyễn Văn Nghi, P.5 Gò Vấp', N'Đang làm', N'LNV05')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV031', N'Phạm Ngọc Thuận', N'Nam', N'212852295', N'0911332676', N'190 Nguyễn Văn Nghi', N'Đang làm', N'LNV05')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV032', N'Nguyễn Ngọc Hân', N'Nữ', N'272882374', N'0911333656', N'189 Lê Văn Lượng P.16 Gò Vấp', N'Đang làm', N'LNV05')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV033', N'Phan Tiến Thông', N'Nam', N'221487769', N'0921336656', N'185 Lê Văn Lượng P.16 Gò Vấp', N'Đang làm', N'LNV05')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV034', N'Bùi Quyết Phúc', N'Nam', N'221507567', N'0921336690', N'185 Huỳnh Khương An P.5 Gò Vấp', N'Đang làm', N'LNV05')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV035', N'Hồ Văn Luân', N'Nam', N'312488457', N'0921354290', N'105 Huỳnh Khương An P.5 Gò Vấp', N'Đang làm', N'LNV05')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CMND], [SDT], [DiaChi], [TrangThai], [MaLNV]) VALUES (N'NV036', N'Nguyễn Thị An', N'Nữ', N'215522058', N'0947859403', N'09 Huỳnh Khương An P.5 Gò Vấp', N'Đang làm', N'LNV05')
GO
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P001 ', N'V001', N'Đóng', N'LP001', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P002 ', N'V002', N'Đóng', N'LP001', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P003 ', N'V003', N'Đóng', N'LP001', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P004 ', N'V004', N'Đóng', N'LP001', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P005 ', N'V005', N'Đóng', N'LP001', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P006 ', N'T001', N'Đóng', N'LP002', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P007 ', N'T002', N'Đóng', N'LP002', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P008 ', N'T003', N'Đóng', N'LP002', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P009 ', N'T004', N'Đóng', N'LP002', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P010 ', N'T005', N'Đóng', N'LP002', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P011 ', N'T006', N'Đóng', N'LP002', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P012 ', N'T007', N'Đóng', N'LP002', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P013 ', N'T008', N'Đóng', N'LP002', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P014 ', N'T009', N'Đóng', N'LP002', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P015 ', N'T010', N'Đóng', N'LP002', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P016 ', N'T011', N'Đóng', N'LP002', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P017 ', N'T012', N'Đóng', N'LP002', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P018 ', N'T013', N'Đóng', N'LP002', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P019 ', N'T014', N'Đóng', N'LP002', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P020 ', N'T015', N'Đóng', N'LP002', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P026 ', N'V006', N'Đóng', N'LP001', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P027 ', N'V007', N'Đóng', N'LP001', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P028 ', N'V008', N'Đóng', N'LP001', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P029 ', N'V009', N'Đóng', N'LP001', N'NV002')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThaiPhong], [MaLoaiPhong], [MaQL]) VALUES (N'P030 ', N'V010', N'Đóng', N'LP001', N'NV002')
GO
INSERT [dbo].[Phong_TrangThietBi] ([MaPhong], [MaTTB], [SoLuong]) VALUES (N'P001 ', N'TB003', 3)
INSERT [dbo].[Phong_TrangThietBi] ([MaPhong], [MaTTB], [SoLuong]) VALUES (N'P002 ', N'TB003', 3)
INSERT [dbo].[Phong_TrangThietBi] ([MaPhong], [MaTTB], [SoLuong]) VALUES (N'P019 ', N'TB024', 34)
GO
INSERT [dbo].[TaiKhoan] ([UserName], [PassWord]) VALUES (N'NV001', N'123456              ')
INSERT [dbo].[TaiKhoan] ([UserName], [PassWord]) VALUES (N'NV002', N'123456              ')
INSERT [dbo].[TaiKhoan] ([UserName], [PassWord]) VALUES (N'NV011', N'123456              ')
INSERT [dbo].[TaiKhoan] ([UserName], [PassWord]) VALUES (N'NV012', N'123456              ')
INSERT [dbo].[TaiKhoan] ([UserName], [PassWord]) VALUES (N'NV013', N'123456              ')
INSERT [dbo].[TaiKhoan] ([UserName], [PassWord]) VALUES (N'NV014', N'123456              ')
GO
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB001', N'Loa JBL-501', 30, N'Cặp', 4300000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB002', N'TiVi LG-42in', 30, N'Cái', 7000000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB003', N'Micro Suntech', 54, N'Cái', 300000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB004', N'TiVi SamSung-42in', 60, N'Cái', 8000000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB005', N'Bộ sử lý âm thanh HIMEDIA100', 60, N'Cái', 4750000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB006', N'Đầu karaoke HIMEDIA Q100', 60, N'Cái', 8500000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB007', N'Main karaoke CAVS ZM2700', 60, N'Cái', 7990000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB008', N'Loa karaoke CAVS XB10', 60, N'Cái', 9200000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB009', N'Mic không dây Navison N.38', 60, N'Cái', 3900000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB010', N' Đầu karaoke VOD V6++ HD VinaKTV', 70, N'Cái', 9600000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB011', N'Micro không dây Galaxy LD 03', 70, N'Cặp', 4000000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB012', N'Cục đẩy BW K6', 60, N'Cái', 9200000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB013', N'Vang số X5', 70, N'Cái', 4500000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB014', N'Loa sub AVL DS-18S', 80, N'Cặp', 15200000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB015', N'Loa center AVL 210', 85, N'Cái', 7000000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB016', N'Micro USS 900', 60, N'Cặp', 5850000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB017', N'Dàn karaoke Luxury 2020-07', 20, N'Cái', 103490000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB018', N' Loa karaoke JBL KP 6012', 50, N'Cặp', 6700000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB019', N'Micro ATI A-680F', 45, N'Cặp', 5600000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB020', N'Loa 30 DMX', 46, N'Cặp', 7000000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB021', N'Cục đẩy 4 Kênh korah Ka-2860', 37, N'Cái', 5400000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB022', N'Vang cơ B3', 46, N'Cái', 4000000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB023', N'Loa Martin 30', 23, N'Cặp', 4500000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB024', N'Sub điện Bosa', 0, N'Cặp', 3400000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB025', N'Micro ATI A680F', 45, N'Cặp', 5670000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB026', N'Cục đẩy 2 kênh Korah Ka-2860', 35, N'Cái', 5700000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB027', N'Loa Bose 301 serie V', 24, N'Cặp', 6000000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB028', N'Đầu VietKTV', 45, N'Cái', 13000000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB029', N'Amply Jaguar 203N', 54, N'Cái', 8900000.0000, N'DSD', N'NV002')
INSERT [dbo].[TrangThietBi] ([MaTTB], [TenTTB], [SoLuongTon], [DonVi], [Gia], [TrangThai], [MaQL]) VALUES (N'TB030', N'Amply California PRO 568E', 32, N'Cái', 4500000.0000, N'DSD', N'NV002')
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [fk_CTHD_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [fk_CTHD_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [fk_CTHD_MatHang] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MatHang] ([MaMH])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [fk_CTHD_MatHang]
GO
ALTER TABLE [dbo].[DonDatPhong]  WITH CHECK ADD  CONSTRAINT [fk_DonDatPhong_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonDatPhong] CHECK CONSTRAINT [fk_DonDatPhong_KhachHang]
GO
ALTER TABLE [dbo].[DonDatPhong]  WITH CHECK ADD  CONSTRAINT [fk_DonDatPhong_NhanVien] FOREIGN KEY([MaQL])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[DonDatPhong] CHECK CONSTRAINT [fk_DonDatPhong_NhanVien]
GO
ALTER TABLE [dbo].[DonDatPhong]  WITH CHECK ADD  CONSTRAINT [fk_DonDatPhong_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[DonDatPhong] CHECK CONSTRAINT [fk_DonDatPhong_Phong]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_HoaDon_NhanVien] FOREIGN KEY([MaQL])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_HoaDon_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk_HoaDon_Phong]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [fk_KhachHang_LoaiKhachHang] FOREIGN KEY([MaLoaiKH])
REFERENCES [dbo].[LoaiKhachHang] ([MaLoaiKH])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [fk_KhachHang_LoaiKhachHang]
GO
ALTER TABLE [dbo].[MatHang]  WITH CHECK ADD  CONSTRAINT [fk_MatHang_NhanVien] FOREIGN KEY([MaQL])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[MatHang] CHECK CONSTRAINT [fk_MatHang_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [fk_NhanVien_LoaiNhanVien] FOREIGN KEY([MaLNV])
REFERENCES [dbo].[LoaiNhanVien] ([MaLNV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [fk_NhanVien_LoaiNhanVien]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [fk_Phong_LoaiPhong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [fk_Phong_LoaiPhong]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [fk_Phong_NhanVien] FOREIGN KEY([MaQL])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [fk_Phong_NhanVien]
GO
ALTER TABLE [dbo].[Phong_TrangThietBi]  WITH CHECK ADD  CONSTRAINT [fk_P_TTB_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[Phong_TrangThietBi] CHECK CONSTRAINT [fk_P_TTB_Phong]
GO
ALTER TABLE [dbo].[Phong_TrangThietBi]  WITH CHECK ADD  CONSTRAINT [fk_P_TTB_TrangThietBi] FOREIGN KEY([MaTTB])
REFERENCES [dbo].[TrangThietBi] ([MaTTB])
GO
ALTER TABLE [dbo].[Phong_TrangThietBi] CHECK CONSTRAINT [fk_P_TTB_TrangThietBi]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [fk_TaiKhoan_NhanVien] FOREIGN KEY([UserName])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [fk_TaiKhoan_NhanVien]
GO
ALTER TABLE [dbo].[TrangThietBi]  WITH CHECK ADD  CONSTRAINT [fk_TrangThietBi_NhanVien] FOREIGN KEY([MaQL])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[TrangThietBi] CHECK CONSTRAINT [fk_TrangThietBi_NhanVien]
GO
/****** Object:  Trigger [dbo].[trg_CapNhatMatHangTrongPhong]    Script Date: 11/14/2021 12:16:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[trg_CapNhatMatHangTrongPhong]
on [dbo].[ChiTietHoaDon]
after update as
begin
	declare @soLuongBanDau int, @soLuongCapNhat int, @maMH char(5)
	-- Lấy thông tin cập nhật.
	select @maMH = MaMH, @soLuongCapNhat =  SoLuong from inserted
	select @soLuongBanDau = SoLuong from deleted

	--print @soLuongBanDau
	--print @soLuongCapNhat

	update MatHang
	set SoLuongTon = SoLuongTon - (@soLuongCapNhat - @soLuongBanDau)
	where MaMH = @maMH
end
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ENABLE TRIGGER [trg_CapNhatMatHangTrongPhong]
GO
/****** Object:  Trigger [dbo].[trg_ThemMatHangVaoPhong]    Script Date: 11/14/2021 12:16:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[trg_ThemMatHangVaoPhong]
on [dbo].[ChiTietHoaDon]
after insert as
begin
	-- Khai báo các biến để lưu trữ giá trị cần sử dụng
	declare @maHD char(10), @maMH char(5) ,@soLuongThem int, @gia money

	-- Lấy giá trị từ bản vừa insert
	select @maHD = MaHD, @maMH = MaMH ,@soLuongThem = SoLuong from inserted
	select @gia = Gia from MatHang where MaMH = @maMH

	-- Cập nhất số lượng mặt hàng trong kho.
	update MatHang
	set SoLuongTon = SoLuongTon - @soLuongThem
	where MaMH = @maMH

	-- Cập nhật chi tiết hóa đơn.
	update ChiTietHoaDon
	set ThanhTien = @soLuongThem * @gia
	where MaHD = @maHD and MaMH = @maMH
end
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ENABLE TRIGGER [trg_ThemMatHangVaoPhong]
GO
/****** Object:  Trigger [dbo].[trg_XoaMatHangTrongPhong]    Script Date: 11/14/2021 12:16:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Xóa mặt hàng trong phòng.
create trigger [dbo].[trg_XoaMatHangTrongPhong]
on [dbo].[ChiTietHoaDon]
after delete as
begin
	declare @soLuong int, @maMH varchar(5)
		select @maMH = MaMH, @soLuong = SoLuong from deleted

		update MatHang
		set SoLuongTon = SoLuongTon + @soLuong
		where MaMH = @maMH
end
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ENABLE TRIGGER [trg_XoaMatHangTrongPhong]
GO
/****** Object:  Trigger [dbo].[trg_CapNhatTrangThietBiTrongPhong]    Script Date: 11/14/2021 12:16:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Cập nhật trang thiết bị trong phòng.
create trigger [dbo].[trg_CapNhatTrangThietBiTrongPhong]
on [dbo].[Phong_TrangThietBi]
after update as
begin
	declare @soLuongCapNhat int, @soLuongBanDau int, @soLuong int, @maTTB char(5)
	select @maTTB = MaTTB, @soLuongBanDau = SoLuong from deleted
	select @soLuongCapNhat = SoLuong from inserted

	update TrangThietBi
	set SoLuongTon = SoLuongTon - (@soLuongCapNhat - @soLuongBanDau)
	where MaTTB = @maTTB
end
GO
ALTER TABLE [dbo].[Phong_TrangThietBi] ENABLE TRIGGER [trg_CapNhatTrangThietBiTrongPhong]
GO
/****** Object:  Trigger [dbo].[trg_ThemTrangThietBiVaoPhong]    Script Date: 11/14/2021 12:16:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Thêm thiết bị vào phòng.
create trigger [dbo].[trg_ThemTrangThietBiVaoPhong]
on [dbo].[Phong_TrangThietBi]
after insert as
begin
	declare @soLuong int, @maTTB char(5)
	select @maTTB = MaTTB, @soLuong = SoLuong from inserted

	update TrangThietBi
	set SoLuongTon = SoLuongTon - @soLuong
	where MaTTB = @maTTB
end
GO
ALTER TABLE [dbo].[Phong_TrangThietBi] ENABLE TRIGGER [trg_ThemTrangThietBiVaoPhong]
GO
/****** Object:  Trigger [dbo].[trg_XoaTrangThietBiTrongPhong]    Script Date: 11/14/2021 12:16:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Xóa trang thiết bị khỏi phòng.
--drop trigger trg_XoaTrangThietBiTrongPhong
create trigger [dbo].[trg_XoaTrangThietBiTrongPhong]
on [dbo].[Phong_TrangThietBi]
after delete as
begin
	declare @soLuong int, @maTTB char(5)
	select @maTTB = MaTTB, @soLuong = SoLuong from deleted
	print @maTTB
	print @soLuong
	update TrangThietBi
	set SoLuongTon = SoLuongTon + @soLuong
	where MaTTB = @maTTB
end
GO
ALTER TABLE [dbo].[Phong_TrangThietBi] ENABLE TRIGGER [trg_XoaTrangThietBiTrongPhong]
GO
USE [master]
GO
ALTER DATABASE [db_karaoke_rum] SET  READ_WRITE 
GO
