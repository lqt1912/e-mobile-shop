USE [master]
GO
/****** Object:  Database [eShopDb]    Script Date: 4/24/2020 9:54:11 AM ******/
CREATE DATABASE [eShopDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'eShopDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\eShopDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'eShopDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\eShopDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [eShopDb] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eShopDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eShopDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [eShopDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [eShopDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [eShopDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [eShopDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [eShopDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [eShopDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [eShopDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [eShopDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [eShopDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [eShopDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [eShopDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [eShopDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [eShopDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [eShopDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [eShopDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [eShopDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [eShopDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [eShopDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [eShopDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [eShopDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [eShopDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [eShopDb] SET RECOVERY FULL 
GO
ALTER DATABASE [eShopDb] SET  MULTI_USER 
GO
ALTER DATABASE [eShopDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [eShopDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [eShopDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [eShopDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [eShopDb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'eShopDb', N'ON'
GO
ALTER DATABASE [eShopDb] SET QUERY_STORE = OFF
GO
USE [eShopDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/24/2020 9:54:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnhSanPham]    Script Date: 4/24/2020 9:54:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnhSanPham](
	[Anh1] [text] NULL,
	[Anh2] [text] NULL,
	[Anh3] [text] NULL,
	[Id] [nchar](10) NOT NULL,
	[MaSp] [nchar](5) NULL,
 CONSTRAINT [PK_AnhSanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 4/24/2020 9:54:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/24/2020 9:54:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/24/2020 9:54:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/24/2020 9:54:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/24/2020 9:54:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/24/2020 9:54:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[CMND] [nvarchar](20) NULL,
	[HoTen] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [int] NULL,
	[DiaChi] [text] NULL,
	[Avatar] [text] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 4/24/2020 9:54:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BannerKhuyenMai]    Script Date: 4/24/2020 9:54:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BannerKhuyenMai](
	[MaSp] [nchar](5) NULL,
	[AnhDaiDien] [nvarchar](100) NULL,
	[MaKM] [nchar](10) NOT NULL,
	[ThongTin] [text] NULL,
 CONSTRAINT [PK_BannerKhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 4/24/2020 9:54:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBL] [int] NOT NULL,
	[MaSP] [nchar](5) NULL,
	[MaKH] [nvarchar](450) NULL,
	[NoiDung] [ntext] NULL,
	[NgayDang] [datetime] NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [nvarchar](128) NULL,
	[DaTraLoi] [char](1) NULL,
	[Parent] [int] NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 4/24/2020 9:54:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDH] [nchar](5) NOT NULL,
	[MaSP] [nchar](5) NOT NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [decimal](18, 0) NULL,
	[MaCTDH] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 4/24/2020 9:54:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [nchar](5) NOT NULL,
	[MaKH] [nvarchar](450) NULL,
	[PhiVanChuyen] [decimal](18, 0) NULL,
	[PTGiaoDich] [nvarchar](200) NULL,
	[NgayDatMua] [datetime] NULL,
	[TinhTrangDH] [int] NULL,
	[Tongtien] [float] NULL,
	[Ghichu] [text] NULL,
	[Diachi] [nvarchar](100) NULL,
	[Dienthoai] [nchar](15) NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSp]    Script Date: 4/24/2020 9:54:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSp](
	[MaLoai] [nchar](5) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiSp] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/24/2020 9:54:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nchar](5) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[LoaiSP] [nchar](5) NOT NULL,
	[SoLuotXemSP] [int] NULL,
	[HangSX] [nchar](5) NOT NULL,
	[XuatXu] [nvarchar](50) NULL,
	[GiaGoc] [decimal](18, 0) NULL,
	[GiaTien] [decimal](18, 0) NULL,
	[MoTa] [ntext] NULL,
	[AnhDaiDien] [ntext] NULL,
	[AnhNen] [ntext] NULL,
	[AnhKhac] [ntext] NULL,
	[SoLuong] [int] NULL,
	[isnew] [bit] NULL,
	[ishot] [bit] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongSoKiThuat]    Script Date: 4/24/2020 9:54:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongSoKiThuat](
	[MaSP] [nchar](5) NOT NULL,
	[ThuocTinh] [nvarchar](50) NOT NULL,
	[GiaTri] [nvarchar](256) NOT NULL,
	[MaTSKT] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTSKT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200410120712_init', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200410122221_update-nullable-type', N'3.1.1')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'sp001 .png', N'anh.png', N'sp001.jpg', N'00001     ', N'sp001')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'636748771945393060_iPhone-Xs-Max-gold.png', N'download.jpg', N'download (1).jpg', N'00002     ', N'sp002')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'Billionaire-Pham-Nhat-Vuong-launches-a-Dreamlike-smartphone-Vsmart-Joy.jpg', N'8e16d54698753fc4c294dd810b1541f9.jpg', N'637164273141859571_Vsmart-joy-3-den-1.jpg', N'00003     ', N'sp003')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'download (2).jpg', N'download (3).jpg', N'download (4).jpg', N'00004     ', N'sp004')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'4540217_cover-vsmart-active1.jpg', N'download (5).jpg', N'6a0c3449c5a34765b2d0dd6f06b5d3b1.jpg', N'00005     ', N'sp005')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'download (6).jpg', N'samsung-galaxy-a50_1570073584.jpg', N'galaxy-a50-faq.png', N'00006     ', N'sp006')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'a7c75477425311688dfdbd4951dcc26e.jpeg', N'download (7).jpg', N'samsung_galaxy_a20_a205_3gb_32gb_negro_01_l.jpg', N'00007     ', N'sp007')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'specs1.png', N'download (8).jpg', N'51Fv-PIiDQL._SX466_.jpg', N'00008     ', N'sp008')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'gsmarena_002.jpg', N'download (9).jpg', N'Mi-A3-Front-view-diagonal-on-table-home-screen.jpg', N'00009     ', N'sp009')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'download (10).jpg', N'download (11).jpg', N'download (12).jpg', N'00010     ', N'sp010')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'laptop-asus-a412fa-ek156t-1_1575255439.jpg.jpg', N'laptop-asus-a412fa-ek156t_1575255424.jpg', N'index.jpg', N'00011     ', N'sp011')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'asus-vivobook-x509u-i3-7020-4gb-1tb-chuot-win10-e-14-400x400.jpg', N'P_setting_fff_1_90_end_600.jpg', N'download (13).jpg', N'00012     ', N'sp012')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'laptop-asus-vivobook-s15-s530fa-bq186t-1.jpg', N'laptop-asus-vivobook-s15-s530fa-bq185t.jpg', N'laptop-asus-vivobook-s15-s530fa-bq185t-1_1575104215.jpg.jpg', N'00013     ', N'sp013')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'P_setting_fff_1_90_end_600 (1).jpg', N'636960463122937957_Mo-ta-san-pham-lenovo-ideadpad-s340-15iwl-2.jpg', N'636960463122747957_Mo-ta-san-pham-lenovo-ideadpad-s340-15iwl-4.jpg', N'00014     ', N'sp014')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'apple-macbook-air-2015-mmgf2zp-a-i5-5250u-8gb-128g-bac-1-450x300-450x300.jpg', N'636371105037434011_macbook-air-13-128gb-mqd32saa-3.jpg', N'636371105037590012_macbook-air-13-128gb-mqd32saa-2.jpg', N'00015     ', N'sp015')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'636994802817547909_acer-aspire-a315-54-den-1.png', N'download (14).jpg', N'637082175855689548_Acer-Aspire-A315-54-52HT-2.jpg', N'00016     ', N'sp016')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'images.jpg', N'ap24h_1567508642.jpg', N'acer-swift-sf315-52-38yq-nxgzbsv003-2_1568018717.jpg.jpg', N'00017     ', N'sp017')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'29943_a515_54_59kt_nx_hfnsv_009_1.jpg', N'download (15).jpg', N'06GIOQspwHID6g6kespZ6YS-25.fit_scale.size_1028x578.v_1569481878.jpg', N'00018     ', N'sp018')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'637214369462951535_hp-15s-du0075tx-1.png', N'636969862649862907_dell-vostro-3480.jpg', N'download (16).jpg', N'00019     ', N'sp019')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'sg-galaxy-taba-2019-8-sm-t295nzkaxsp-frontblack-175174967.webp', N'ae-galaxy-tab-a-t295-sm-t295nzsaxsg-frontsilver-172640354.webp', N'download (17).jpg', N'00020     ', N'sp020')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'download (18).jpg', N'download (19).jpg', N'download (20).jpg', N'00021     ', N'sp021')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'ca-galaxy-tab-a-2019-101-sm-t510nzkaxac-frontblack-157801267.webp', N'download (21).jpg', N'csm_Samsung_Galaxy_Tab_A_10.1_2019_5856_edc1a40099.jpg', N'00022     ', N'sp022')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'Samsung-Galaxy-Tab-S6-Lite-Winfuture-Collage-1420x799-1.jpg', N'galaxy-tab-s6_cloudblue.png', N'download (22).jpg', N'00023     ', N'sp023')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'download (23).jpg', N'HTB1xfu4aInrK1RkHFrdq6xCoFXab.webp', N'Global-rom-HUAWEI-Honor-MediaPad-T3-8-inch-Tablet-PC-3GB-32GB-EMUI-5-1-SnapDragon.jpg', N'00024     ', N'sp024')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'csm_Huawei_MediaPad_T5_0330313f71.jpg', N'download (24).jpg', N'41bxSgfvlgL.jpg', N'00025     ', N'sp025')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'huawei-mediapad-m5-lite-kv.jpg', N'download (25).jpg', N'download (26).jpg', N'00026     ', N'sp026')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'41-BzVmsABL._SX466_.jpg', N'ipad-mini-5-2019-64gbwifi-space-grey_1574825728.png', N'636107446649794846_ipad-mini-4-wi-fi-32gb-4.jpg', N'00027     ', N'sp027')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'ipad-gen-7-space-gray_1575019772.jpg', N'og__bo5kqdkye536_specs.png', N'download (27).jpg', N'00028     ', N'sp028')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'images (1).jpg', N'637063883392591386_ipad-wifi-2019-bac-1.png', N'download (28).jpg', N'00029     ', N'sp029')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'250-8361_apple_adapter_magsafe2_85w_md506bb.jpg', N'download (29).jpg', N'250-20064-md592-1.jpg', N'00030     ', N'sp030')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'download (30).jpg', N'download (31).jpg', N'mini_white_cable_c__12_3f363333695945acbdc7f1d905676a94_medium.webp', N'00031     ', N'sp031')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'download (32).jpg', N'download (33).jpg', N'1eed8f49954fc2758b6c9770754d807f.jpg', N'00032     ', N'sp032')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'download (34).jpg', N'dd231c167e291bb5473cff1072be2ed1.jpg', N'6fbf287f5b41fd9413dbfedf452a9a27.jpg', N'00033     ', N'sp033')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'nelnouezmpcth.jpg', N'41c944907a80a6702c36de63502dcbb0.jpg_200x200q80.jpg_.webp', N'lc78fw0rwb7jy.jpg', N'00034     ', N'sp034')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'op-lung-galaxy-a71-nhua-deo-kolar-imd-jm-bac-1-600x600.jpg', N't?i xu?ng.jpg', N'op-lung-galaxy-a71-nhua-deo-kolar-imd-jm-bac.html', N'00035     ', N'sp035')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'op-lung-galaxy-a01-nhua-cung-vien-deo-mitter-dao-6-180x125.jpg', N'op-lung-galaxy-a01-nhua-cung-vien-deo-mitter-dao-4-180x125.jpg', N'op-lung-galaxy-a01-nhua-cung-vien-deo-mitter-dao-8-180x125.jpg', N'00036     ', N'sp036')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'op-lung-galaxy-s20-nhua-deo-slim-tpu-nude-1-600x600.jpg', N'op-lung-galaxy-s20-nhua-deo-slim-tpu-nude-4-org.jpg', N'op-lung-galaxy-s20-nhua-deo-slim-tpu-nude-5-180x125.jpg', N'00037     ', N'sp037')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'tai-nghe-earpods-cong-lightning-apple-mmtn2-1-1-600x600.jpg', N'1_9_3_1.webp', N'tai-nghe-earpods-cong-lightning-apple-mmtn2-fix.jpg', N'00038     ', N'sp038')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'tai-nghe-bluetooth-airpods-2-apple-mv7n2-trang-avatar-1-600x600.jpg', N'tai-nghe-bluetooth-airpods-2-apple-mv7n2-trang-1-org1.jpg', N'tai-nghe-bluetooth-airpods-2-apple-mv7n2-trang-1-org3.jpg', N'00039     ', N'sp039')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'download (35).jpg', N'tai-nghe-bluetooth-samsung-mg900e--1-1.jpg', N'tai-nghe-bluetooth-samsung-mg900e-add-600x600.jpg', N'00040     ', N'sp040')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'tai-nghe-nhet-trong-samsung-ig935b-2-1-600x600.jpg', N'tai-nghe-nhet-trong-samsung-ig935b-5.jpg', N'tai-nghe-nhet-trong-samsung-ig935b-6.jpg', N'00041     ', N'sp041')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'tai-nghe-bluetooth-samsung-level-u-pro-bn920c-add-600x600.jpg', N'tai-nghe-bluetooth-samsung-level-u-pro-bn920c-1.jpg', N'tai-nghe-bluetooth-samsung-level-u-pro-bn920c-fix.jpg', N'00042     ', N'sp042')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'the-nho-microsd-8gb-class-4-9-600x600.jpg', N'download (36).jpg', N'download (37).jpg', N'00043     ', N'sp043')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'the-nho-microsd-16gb-class-10-10-600x600.jpg', N'kingston-micro-16gb-class-10.jpg', N'the-nho-micro-sdxc-sdhc-class-10-transcend-16gb-1-1.jpg', N'00044     ', N'sp044')
INSERT [dbo].[AnhSanPham] ([Anh1], [Anh2], [Anh3], [Id], [MaSp]) VALUES (N'the-microsd-128gb-lexar-class-10-uhs-i-kem-adapter-600x600.jpg', N'the-nho-microsd-128gb-lexar-class-10-uhs-i-kem-ada2.jpg', N'00719fe1992990eabf720af45c6b4323.png', N'00045     ', N'sp045')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CMND], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [Avatar]) VALUES (N'26e2790f-7665-4f25-9330-3497c29f4c98', N'thanglequoc19121@gmail.com', N'THANGLEQUOC19121@GMAIL.COM', N'thanglequoc19121@gmail.com', N'THANGLEQUOC19121@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEEFmpg6HUN/VbIBb93DHTvircTDDrSwPlxN7KPc64VGThplm5qxBRL2nd1Sk6wSMWA==', N'F4INSGKOPXE4WQ4BWV2ZB6ZVV2QKESK3', N'7c4a55b3-2afd-482b-ae7f-20bf77ee8764', NULL, 0, 0, NULL, 1, 0, NULL, NULL, CAST(N'1999-12-12' AS Date), 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CMND], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [Avatar]) VALUES (N'2a46c1c0-55b8-481e-a1c4-4358eb836e41', N'thanglequoc1912@gmail.com', N'THANGLEQUOC1912@GMAIL.COM', N'thanglequoc1912@gmail.com', N'THANGLEQUOC1912@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEBkBb5liIzUVnfU40t+GKqJw+6gQLDigji+RnE3qj7QqSvKltWZBe//l6p//g+YLLA==', N'ZHY7NDLJN3RQ3COMDPI33SHNC34PSL56', N'592c668a-6ac5-4604-9f0d-337382417c46', N'0937186594', 1, 0, NULL, 1, 0, N'01119999872561', N'Lê Quốc Thắng', CAST(N'1999-12-12' AS Date), 1, N'HCM', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CMND], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [Avatar]) VALUES (N'874aacd8-6310-48ca-af24-14c2d0beb498', N'thanglequoc1912@gmail.com5', N'THANGLEQUOC1912@GMAIL.COM5', N'thanglequoc1912@gmail.com5', N'THANGLEQUOC1912@GMAIL.COM5', 1, N'AQAAAAEAACcQAAAAEC6erEssoZvk8vSIC/zlj6TW3hxt7R8HP5H8eTl7D9Dus7uxgfZsgOmGyuf79/UHZA==', N'F5PWWGJOZ4DCNQ6VIOY37O7VQUHFD62C', N'b784fc03-02bd-4bde-9169-f5b0c067213d', NULL, 0, 0, NULL, 1, 0, NULL, NULL, CAST(N'1999-12-12' AS Date), 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CMND], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [Avatar]) VALUES (N'96ebf609-40e1-4d9f-8ffc-052dc79ecb1a', N'thanglequoc19127@gmail.com', N'THANGLEQUOC19127@GMAIL.COM', N'thanglequoc19127@gmail.com', N'THANGLEQUOC19127@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEOSXJaW13mI3nbVDFB7nYDehRsx7qwP3AssOOkyHw3OzxPX3g5YXfvIu+eAc5aCOXQ==', N'VXZI4ML3NZHLVXA7XWSBLU7IPJABKBC5', N'0c69d53a-54a6-4f6e-a9f0-2a26fb4d0947', NULL, 0, 0, NULL, 1, 0, NULL, NULL, CAST(N'1999-12-12' AS Date), 1, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CMND], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [Avatar]) VALUES (N'bea75286-1a18-4f8d-9eb4-abbdb8198875', N'thanglequoc19129@gmail.com', N'THANGLEQUOC19129@GMAIL.COM', N'thanglequoc19129@gmail.com', N'THANGLEQUOC19129@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAELUSsgvLuY2JuinSOXCzJs4cyyQWBw4611PfT3gcD10nmGCS3EarWIpewpTrDkWDVg==', N'26UKXRE5PB5N4ONH6MQXI3L4AZZN5AIA', N'121e99c1-9175-4368-8f92-6a7b19c01d73', NULL, 0, 0, NULL, 1, 0, NULL, NULL, CAST(N'1999-11-11' AS Date), 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CMND], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [Avatar]) VALUES (N'c1153c1a-e857-4af3-ad68-b0ca532a8947', N'thanglequoc191299@gmail.com', N'THANGLEQUOC191299@GMAIL.COM', N'thanglequoc191299@gmail.com', N'THANGLEQUOC191299@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEGkodp2SsA2rjI4TFRykhYcxeNjMaOTMBe/PbOZ+aQirl8ey3A4oCj1DdfJRGsTORw==', N'EHF2FA66METHRBITPYDCFXHRLQMLBEYX', N'738027b3-2764-45bb-933e-2c9a1a9d2c15', NULL, 0, 0, NULL, 1, 0, NULL, NULL, CAST(N'1199-11-11' AS Date), 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CMND], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [Avatar]) VALUES (N'c2deb0ae-3c15-480e-8430-a7140ef87851', N'thanglequoc19128@gmail.com', N'THANGLEQUOC19128@GMAIL.COM', N'thanglequoc19128@gmail.com', N'THANGLEQUOC19128@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEKrIjMe85nrIcj0Q0+obPmRJmfn9cCTc+X5H8Q92RnxcrmJCcfIRcMHOnjP/sDodwg==', N'EEC7ZEQ3NFKHFKR75MKWH3JEDXGBNYP3', N'7b60d0ea-a0eb-4fa9-a74f-e4c40dd82228', NULL, 0, 0, NULL, 1, 0, NULL, NULL, CAST(N'1999-12-12' AS Date), 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CMND], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [Avatar]) VALUES (N'e0ed60dd-e987-4219-b4dc-43882897b6be', N'thanglequoc19124@gmail.com', N'THANGLEQUOC19124@GMAIL.COM', N'thanglequoc19124@gmail.com', N'THANGLEQUOC19124@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEJEDFJnlxw9NOW/tc9jM/Wa2cY0mZjK6ecrrMDQVUI1u9xb/DLzp+ycUYzExO5AVqQ==', N'YBSSGE7DG6VOYQW3HAAO4VVG2NN25FVK', N'599d7ec9-5b5d-4990-a0e8-54da73c36bb9', NULL, 0, 0, NULL, 1, 0, NULL, NULL, CAST(N'1999-12-12' AS Date), 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CMND], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [Avatar]) VALUES (N'fb468888-dc0c-432f-b729-a91b726d9be1', N'thanglequoc191210@gmail.com', N'THANGLEQUOC191210@GMAIL.COM', N'thanglequoc191210@gmail.com', N'THANGLEQUOC191210@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEMCyV32hVnWH2OtYPylvNPQJTkNm4vnMWZZU6CSkuXp0BORoyAFq3O35j1VhoPjfzQ==', N'TU6ZC3GL5MF37NFRHWR5BWGEGR6CKLCB', N'1a4aca0e-b699-451d-8a5b-a5962912328a', NULL, 0, 0, NULL, 1, 0, NULL, NULL, CAST(N'1111-11-11' AS Date), 0, NULL, NULL)
INSERT [dbo].[BannerKhuyenMai] ([MaSp], [AnhDaiDien], [MaKM], [ThongTin]) VALUES (N'sp001', N'800-300-800x300-19.png', N'001       ', NULL)
INSERT [dbo].[BannerKhuyenMai] ([MaSp], [AnhDaiDien], [MaKM], [ThongTin]) VALUES (N'sp002', N'laptop-onha-800-300-800x300.png', N'002       ', NULL)
INSERT [dbo].[BannerKhuyenMai] ([MaSp], [AnhDaiDien], [MaKM], [ThongTin]) VALUES (N'sp003', N'oppo-2f-800-300-800x300.png', N'003       ', NULL)
INSERT [dbo].[BannerKhuyenMai] ([MaSp], [AnhDaiDien], [MaKM], [ThongTin]) VALUES (N'sp004', N'pk-onha-800-300-800x300.png', N'004       ', NULL)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [ThanhTien], [MaCTDH]) VALUES (N'1    ', N'sp010', 4, CAST(25000000 AS Decimal(18, 0)), N'1')
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [ThanhTien], [MaCTDH]) VALUES (N'2    ', N'sp001', 2, CAST(18000000 AS Decimal(18, 0)), N'2')
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [ThanhTien], [MaCTDH]) VALUES (N'3    ', N'sp010', 3, CAST(25000000 AS Decimal(18, 0)), N'3')
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [ThanhTien], [MaCTDH]) VALUES (N'4    ', N'sp010', 1, CAST(25000000 AS Decimal(18, 0)), N'4')
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [ThanhTien], [MaCTDH]) VALUES (N'5    ', N'sp010', 4, CAST(25000000 AS Decimal(18, 0)), N'5')
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [ThanhTien], [MaCTDH]) VALUES (N'7    ', N'sp003', 5, CAST(2000000 AS Decimal(18, 0)), N'6')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [PhiVanChuyen], [PTGiaoDich], [NgayDatMua], [TinhTrangDH], [Tongtien], [Ghichu], [Diachi], [Dienthoai]) VALUES (N'1    ', N'2a46c1c0-55b8-481e-a1c4-4358eb836e41', CAST(1000000 AS Decimal(18, 0)), NULL, CAST(N'2020-04-24T08:50:09.930' AS DateTime), 0, NULL, N'', NULL, NULL)
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [PhiVanChuyen], [PTGiaoDich], [NgayDatMua], [TinhTrangDH], [Tongtien], [Ghichu], [Diachi], [Dienthoai]) VALUES (N'2    ', N'2a46c1c0-55b8-481e-a1c4-4358eb836e41', CAST(1000000 AS Decimal(18, 0)), NULL, CAST(N'2020-04-24T08:53:54.843' AS DateTime), 0, NULL, N'', NULL, NULL)
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [PhiVanChuyen], [PTGiaoDich], [NgayDatMua], [TinhTrangDH], [Tongtien], [Ghichu], [Diachi], [Dienthoai]) VALUES (N'3    ', N'2a46c1c0-55b8-481e-a1c4-4358eb836e41', CAST(1000000 AS Decimal(18, 0)), NULL, CAST(N'2020-04-24T08:55:01.330' AS DateTime), 0, NULL, N'', NULL, NULL)
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [PhiVanChuyen], [PTGiaoDich], [NgayDatMua], [TinhTrangDH], [Tongtien], [Ghichu], [Diachi], [Dienthoai]) VALUES (N'4    ', N'2a46c1c0-55b8-481e-a1c4-4358eb836e41', CAST(1000000 AS Decimal(18, 0)), NULL, CAST(N'2020-04-24T09:01:37.030' AS DateTime), 0, 25000000, N'', NULL, NULL)
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [PhiVanChuyen], [PTGiaoDich], [NgayDatMua], [TinhTrangDH], [Tongtien], [Ghichu], [Diachi], [Dienthoai]) VALUES (N'5    ', N'2a46c1c0-55b8-481e-a1c4-4358eb836e41', CAST(1000000 AS Decimal(18, 0)), NULL, CAST(N'2020-04-24T09:08:52.047' AS DateTime), 0, 25000000, N'', NULL, NULL)
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [PhiVanChuyen], [PTGiaoDich], [NgayDatMua], [TinhTrangDH], [Tongtien], [Ghichu], [Diachi], [Dienthoai]) VALUES (N'6    ', N'2a46c1c0-55b8-481e-a1c4-4358eb836e41', CAST(1000000 AS Decimal(18, 0)), NULL, CAST(N'2020-04-24T09:09:06.747' AS DateTime), 0, 0, N'', NULL, NULL)
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [PhiVanChuyen], [PTGiaoDich], [NgayDatMua], [TinhTrangDH], [Tongtien], [Ghichu], [Diachi], [Dienthoai]) VALUES (N'7    ', N'2a46c1c0-55b8-481e-a1c4-4358eb836e41', CAST(1000000 AS Decimal(18, 0)), NULL, CAST(N'2020-04-24T09:43:52.717' AS DateTime), 0, 2000000, N'', NULL, NULL)
INSERT [dbo].[LoaiSp] ([MaLoai], [TenLoai]) VALUES (N'00000', N'Phụ Kiện')
INSERT [dbo].[LoaiSp] ([MaLoai], [TenLoai]) VALUES (N'15674', N'Điện thoại di động')
INSERT [dbo].[LoaiSp] ([MaLoai], [TenLoai]) VALUES (N'22832', N'Phụ Kiện')
INSERT [dbo].[LoaiSp] ([MaLoai], [TenLoai]) VALUES (N'55341', N'Phụ Kiện')
INSERT [dbo].[LoaiSp] ([MaLoai], [TenLoai]) VALUES (N'64844', N'Phụ Kiện')
INSERT [dbo].[LoaiSp] ([MaLoai], [TenLoai]) VALUES (N'84771', N'Phụ Kiện')
INSERT [dbo].[LoaiSp] ([MaLoai], [TenLoai]) VALUES (N'87356', N'Máy tính bảng')
INSERT [dbo].[LoaiSp] ([MaLoai], [TenLoai]) VALUES (N'89742', N'Laptop')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp001', N'iPhone 11 64GB', N'15674', 29438, N'Apple', N'Trung Quốc', CAST(18000000 AS Decimal(18, 0)), CAST(21900000 AS Decimal(18, 0)), NULL, N'637037652457717299_11-den.png', NULL, NULL, 1000, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp002', N'iPhone Xs Max 64GB', N'15674', 20012, N'Apple', N'Trung Quốc', CAST(23000000 AS Decimal(18, 0)), CAST(27990000 AS Decimal(18, 0)), NULL, N'iphone-xs-max-gold-600x600.jpg', NULL, NULL, 1000, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp003', N'Vsmart Joy 3 (3GB/32GB)', N'15674', 40291, N'Vinsm', N'Việt Nam', CAST(2000000 AS Decimal(18, 0)), CAST(2690000 AS Decimal(18, 0)), NULL, N'vsmart-joy-3-tim-600x600-600x600.jpg', NULL, NULL, 2000, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp004', N'Vsmart Live (4GB/64GB)', N'15674', 59281, N'Vinsm', N'Việt Nam', CAST(2900000 AS Decimal(18, 0)), CAST(3490000 AS Decimal(18, 0)), NULL, N'vsmart-live-blue-600x600.jpg', NULL, NULL, 1500, 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp005', N'Vsmart Active 3 (6GB/64GB)', N'15674', 30481, N'Vinsm', N'Việt Nam', CAST(3300000 AS Decimal(18, 0)), CAST(3990000 AS Decimal(18, 0)), NULL, N'vsmart-active-3-6gb-purple-ruby-400x460-1-400x460.png', NULL, NULL, 999, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp006', N'Samsung Galaxy A50 128GB', N'15674', 20381, N'Samsu', N'Hàn Quốc', CAST(6000000 AS Decimal(18, 0)), CAST(7290000 AS Decimal(18, 0)), NULL, N'samsung-galaxy-a50-128gb-blue-600x600.jpg', NULL, NULL, 500, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp007', N'Samsung Galaxy A20s 32GB', N'15674', 39018, N'Samsu', N'Hàn Quốc', CAST(3500000 AS Decimal(18, 0)), CAST(4390000 AS Decimal(18, 0)), NULL, N'samsung-galaxy-a20s-32gb-red-600x600.jpg', NULL, NULL, 802, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp008', N'Xiaomi Redmi Note 8 (4GB/64GB)', N'15674', 87421, N'Xiaom', N'Trung Quốc', CAST(3600000 AS Decimal(18, 0)), CAST(4390000 AS Decimal(18, 0)), NULL, N'xiaomi-redmi-note-8-white-600x600.jpg', NULL, NULL, 200, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp009', N'Xiaomi Mi A3', N'15674', 42812, N'Xiaom', N'Trung Quốc', CAST(3000000 AS Decimal(18, 0)), CAST(3790000 AS Decimal(18, 0)), NULL, N'xiaomi-mi-a3-white-400x460.png', NULL, NULL, 381, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp010', N'Samsung Galaxy S20 Ultra', N'15674', 58214, N'Samsu', N'Hàn Quốc', CAST(25000000 AS Decimal(18, 0)), CAST(27900000 AS Decimal(18, 0)), NULL, N'samsung-galaxy-s20-ultra-400x460-1-400x460.png', NULL, NULL, 200, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp011', N'Asus VivoBook A412FA i3 8145U/4GB/512GB/Win10 ', N'89742', 49020, N'Asus ', N'Đài Loan', CAST(11000000 AS Decimal(18, 0)), CAST(12990000 AS Decimal(18, 0)), NULL, N'asus-vivobook-a412f-i3-8145u-4gb-32gb-512gb-win10-600x600.jpg', NULL, NULL, 100, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp012', N'Asus VivoBook X509U i3 7020U 4GB/1TB/Chuột/Win10', N'89742', 29421, N'Asus ', N'Đài Loan', CAST(9000000 AS Decimal(18, 0)), CAST(10690000 AS Decimal(18, 0)), NULL, N'asus-vivobook-x509u-i3-7020-4gb-1tb-chuot-win10-e-14-600x600.jpg', NULL, NULL, 100, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp013', N'Asus VivoBook S530FA i3 8145U/4GB/1TB/Win10', N'89742', 39021, N'Asus ', N'Đài Loan', CAST(11500000 AS Decimal(18, 0)), CAST(13290000 AS Decimal(18, 0)), NULL, N'asus-530f-i3-8145u-4gb-1tb-bq185t-24-600x600.jpg', NULL, NULL, 200, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp014', N'Asus VivoBook X409FA i3 8145U/4GB/512GB/Win10', N'89742', 39124, N'Asus ', N'Đài Loan', CAST(10500000 AS Decimal(18, 0)), CAST(12390000 AS Decimal(18, 0)), NULL, N'asus-vivobook-x409fa-i3-8145u-4gb-512gb-win10-ek3-15-400x400.jpg', NULL, NULL, 100, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp015', N'Apple MacBook Air 2017 i5 1.8GHz/8GB/128GB', N'89742', 20040, N'Apple', N'Trung Quốc', CAST(17500000 AS Decimal(18, 0)), CAST(19990000 AS Decimal(18, 0)), NULL, N'apple-macbook-air-mqd32sa-a-i5-5350u-600x600.jpg', NULL, NULL, 50, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp016', N'Acer Aspire A315 54 558R i5 8265U/4GB/1TB/Win10', N'89742', 42031, N'Acer ', N'Đài Loan', CAST(10000000 AS Decimal(18, 0)), CAST(11990000 AS Decimal(18, 0)), NULL, N'acer-aspire-a315-54-558r-i5-8265u-4gb-1tb-win10-n-18-400x400.jpg', NULL, NULL, 80, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp017', N'Acer Swift 3 SF315 52 38YQ i3 8130U/4GB/1TB/Win10', N'89742', 29412, N'Acer ', N'Đài Loan', CAST(10000000 AS Decimal(18, 0)), CAST(11490000 AS Decimal(18, 0)), NULL, N'acer-swift-sf315-52-38yq-i3-8130u-4gb-1tb-156f-win-600x600.jpg', NULL, NULL, 120, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp018', N'Acer Aspire A515 54 59KT i5 8265U/4GB/1TB/Win10', N'89742', 49201, N'Acer ', N'Đài Loan', CAST(11000000 AS Decimal(18, 0)), CAST(13990000 AS Decimal(18, 0)), NULL, N'acer-aspire-a515-54-59kt-i5-8265u-4gb-1tb-win10-n-19-600x600.jpg', NULL, NULL, 90, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp019', N'HP 348 G7 i5 10210U/8GB/512GB/Win10 ', N'89742', 12842, N'HP   ', N'Mỹ', CAST(14000000 AS Decimal(18, 0)), CAST(16290000 AS Decimal(18, 0)), NULL, N'hp-348-g7-i5-9ph06pa-218439-1-600x600.jpg', NULL, NULL, 49, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp020', N'Samsung Galaxy Tab A8 8" T295 ', N'87356', 29401, N'Samsu', N'Hàn Quốc', CAST(2500000 AS Decimal(18, 0)), CAST(3690000 AS Decimal(18, 0)), NULL, N'samsung-galaxy-tab-a8-t295-2019-silver-400x460.png', NULL, NULL, 299, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp021', N'Samsung Galaxy Tab with S Pen', N'87356', 39201, N'Samsu', N'Hàn Quốc', CAST(5500000 AS Decimal(18, 0)), CAST(6990000 AS Decimal(18, 0)), NULL, N'download.jpg', NULL, NULL, 299, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp022', N'Samsung Galaxy Tab A 10.1 T515', N'87356', 20492, N'Samsu', N'Hàn Quốc', CAST(6000000 AS Decimal(18, 0)), CAST(7490000 AS Decimal(18, 0)), NULL, N'samsung-galaxy-tab-a-101-t515-2019-gold-600x600.jpg', NULL, NULL, 100, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp023', N'Samsung Galaxy Tab S6', N'87356', 14921, N'Samsu', N'Hàn Quốc', CAST(16000000 AS Decimal(18, 0)), CAST(18490000 AS Decimal(18, 0)), NULL, N'samsung-galaxy-tab-s6-600x600.jpg', NULL, NULL, 299, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp024', N'Huawei MediaPad T3 8.0', N'87356', 12942, N'Huawe', N'Trung Quốc', CAST(2500000 AS Decimal(18, 0)), CAST(3490000 AS Decimal(18, 0)), NULL, N'huawei-mediapad-t3-80-400x460.png', NULL, NULL, 133, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp025', N'Huawei Mediapad T5 10.1 inch', N'87356', 24914, N'Huawe', N'Trung Quốc', CAST(3500000 AS Decimal(18, 0)), CAST(4990000 AS Decimal(18, 0)), NULL, N'huawei-mediapad-t5-33397-hinhchitiet-400x460.png', NULL, NULL, 123, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp026', N'Huawei MediaPad M5 Lite
', N'87356', 25212, N'Huawe', N'Trung Quốc', CAST(6000000 AS Decimal(18, 0)), CAST(7490000 AS Decimal(18, 0)), NULL, N'huawei-mediapad-m5-lite-gray-600x600.jpg', NULL, NULL, 123, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp027', N'iPad Mini 7.9 inch Wifi 64GB', N'87356', 24921, N'Apple', N'Trung Quốc', CAST(9000000 AS Decimal(18, 0)), CAST(10990000 AS Decimal(18, 0)), NULL, N'ipad-mini-79-inch-wifi-2019-gold-400x460.png', NULL, NULL, 194, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp028', N'iPad 10.2 inch Wifi Cellular 32GB', N'87356', 39012, N'Apple', N'Trung Quốc', CAST(10500000 AS Decimal(18, 0)), CAST(12990000 AS Decimal(18, 0)), NULL, N'ipad-10-2-inch-wifi-cellular-32gb-2019-gold-400x460.png', NULL, NULL, 100, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp029', N'iPad 10.2 inch Wifi Cellular 128GB', N'87356', 20492, N'Apple', N'Trung Quốc', CAST(14000000 AS Decimal(18, 0)), CAST(15990000 AS Decimal(18, 0)), NULL, N'ipad-10-2-inch-wifi-cellular-128gb-2019-gray-400x460.png', NULL, NULL, 100, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp030', N'Adapter Sạc Type-C 87W Apple MNF82 Trắng', N'22832', 10000, N'Apple', N'Trung Quốc', CAST(1900000 AS Decimal(18, 0)), CAST(2490000 AS Decimal(18, 0)), NULL, N'adapter-type-c-87w-cho-ipad-macbook-apple-trang-1-2-org.jpg', NULL, NULL, 200, 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp031', N'Cáp Type C- Lightning 1m Apple MX0K2 Trắng
', N'22832', 12042, N'Apple', N'Trung Quốc', CAST(400000 AS Decimal(18, 0)), CAST(590000 AS Decimal(18, 0)), NULL, N'cap-type-c-lightning-1m-apple-mx0k2-trang-ava-600x600.jpg', NULL, NULL, 200, 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp032', N'Adapter Type C sang HDMI/Type C/USB Apple ', N'22832', 4920, N'Apple', N'Trung Quốc', CAST(1700000 AS Decimal(18, 0)), CAST(2490000 AS Decimal(18, 0)), NULL, N'adapter-type-c-sang-hdmi-type-c-usb-apple-muf82-ava-600x600.jpg', NULL, NULL, 21, 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp033', N'Bộ Adapter sạc kèm cáp Type C', N'22832', 4829, N'Samsu', N'Hàn Quốc', CAST(400000 AS Decimal(18, 0)), CAST(600000 AS Decimal(18, 0)), NULL, N'bo-adapter-sac-kem-cap-type-c-samsung-ta20ew-1-1-600x600.jpg', NULL, NULL, 29, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp034', N'Bộ Adapter sạc kèm cáp Micro Samsung TA20HW
', N'22832', 5281, N'Samsu', N'Hàn Quốc', CAST(150000 AS Decimal(18, 0)), CAST(290000 AS Decimal(18, 0)), NULL, N'download (1).jpg', NULL, NULL, 29, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp035', N'Galaxy A71 Nhựa dẻo KOLAR IMD JM Bạc

', N'55341', 1000, N'NOTTT', N'Việt Nam', CAST(60000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), NULL, N'op-lung-galaxy-a71-nhua-deo-kolar-imd-jm-bac-1-600x600.jpg', NULL, NULL, 50, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp036', N'Galaxy A01 nhựa cứng viền dẻo MITTER JM Đào
', N'55341', 2942, N'NOTTT', N'Việt Nam', CAST(100000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), NULL, N'op-lung-galaxy-a01-nhua-cung-vien-deo-mitter-dao-2-180x125.jpg', NULL, NULL, 100, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp037', N'Galaxy S20+ Nhựa dẻo Slim TPU JM Nude
', N'55341', 4902, N'NOTTT', N'Việt Nam', CAST(30000 AS Decimal(18, 0)), CAST(70000 AS Decimal(18, 0)), NULL, N'op-lung-galaxy-s20-nhua-deo-slim-tpu-nude-1-600x600.jpg', NULL, NULL, 94, 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp038', N'EarPods Lightning Apple MMTN2', N'64844', 9002, N'Apple', N'Trung Quốc', CAST(500000 AS Decimal(18, 0)), CAST(790000 AS Decimal(18, 0)), NULL, N'tai-nghe-earpods-cong-lightning-apple-mmtn2-1-1-600x600.jpg', NULL, NULL, 49, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp039', N'Bluetooth AirPods 2 Apple MV7N2 Trắng
', N'64844', 8721, N'Apple', N'Trung Quốc', CAST(4000000 AS Decimal(18, 0)), CAST(4990000 AS Decimal(18, 0)), NULL, N'tai-nghe-bluetooth-airpods-2-apple-mv7n2-trang-avatar-1-600x600.jpg', NULL, NULL, 49, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp040', N'Bluetooth Samsung MG900E', N'64844', 9021, N'Samsu', N'Hàn Quốc', CAST(500000 AS Decimal(18, 0)), CAST(850000 AS Decimal(18, 0)), NULL, N'tai-nghe-bluetooth-samsung-mg900e-add-600x600.jpg', NULL, NULL, 94, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp041', N'Samsung IG935B
', N'64844', 2412, N'Samsu', N'Hàn Quốc', CAST(200000 AS Decimal(18, 0)), CAST(300000 AS Decimal(18, 0)), NULL, N'tai-nghe-nhet-trong-samsung-ig935b-2-1-600x600.jpg', NULL, NULL, 94, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp042', N'Bluetooth Samsung Level U Pro BN920C
', N'64844', 4921, N'Samsu', N'Hàn Quốc', CAST(1000000 AS Decimal(18, 0)), CAST(1450000 AS Decimal(18, 0)), NULL, N'tai-nghe-bluetooth-samsung-level-u-pro-bn920c-add-600x600.jpg', NULL, NULL, 29, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp043', N'MicroSD 8 GB Class 4
', N'84771', 8248, N'Sandi', N'Mỹ', CAST(100000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), NULL, N'the-nho-microsd-8gb-class-4-9-600x600.jpg', NULL, NULL, 200, 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp044', N'MicroSD 16 GB Class 10

', N'84771', 9421, N'Sandi', N'Mỹ', CAST(140000 AS Decimal(18, 0)), CAST(198000 AS Decimal(18, 0)), NULL, N'the-nho-microsd-16gb-class-10-10-600x600.jpg', NULL, NULL, 140, 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [LoaiSP], [SoLuotXemSP], [HangSX], [XuatXu], [GiaGoc], [GiaTien], [MoTa], [AnhDaiDien], [AnhNen], [AnhKhac], [SoLuong], [isnew], [ishot]) VALUES (N'sp045', N'MicroSD 128 GB Lexar class 10 UHS-I ', N'84771', 9211, N'Lexar', N'Mỹ', CAST(600000 AS Decimal(18, 0)), CAST(750000 AS Decimal(18, 0)), NULL, N'the-microsd-128gb-lexar-class-10-uhs-i-kem-adapter-600x600.jpg', NULL, NULL, 199, 1, 1)
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp001', N'bộ nhớ trong ', N'32GB', N'00001')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp001', N'camera', N'12MP', N'00002')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp001', N'độ phân giải', N'828 x 1792 Pixels', N'00003')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp001', N'dung lượng pin', N'3110 mAh', N'00004')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp001', N'hệ điều hành', N'iOS 13', N'00005')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp001', N'kích thước', N'150.9 x  5.7 x  8.3 mm', N'00006')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp001', N'màn hình', N'6.1"', N'00007')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp001', N'Ram', N'4 GB', N'00008')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp001', N'trọng lượng', N'194 g', N'00009')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp002', N'bộ nhớ trong', N'64GB', N'00010')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp002', N'camera', N'12MP', N'00011')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp002', N'độ phân giải', N'1242 x 2688 Pixels
', N'00012')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp002', N'dung lượng pin', N'3174 mAh', N'00013')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp002', N'hệ điều hành', N'iOS 12', N'00014')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp002', N'kích thước', N'157.5 x 77.4 x 7.7 mm', N'00015')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp002', N'màn hình', N'6.5"', N'00016')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp002', N'Ram', N'4GB', N'00017')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp002', N'trọng lượng', N'208 g', N'00018')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp003', N'bộ nhớ trong', N'32GB', N'00019')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp003', N'camera', N'13MP', N'00020')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp003', N'độ phân giải', N'720 x 1600 Pixels', N'00021')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp003', N'dung lượng pin', N'5000 mAh', N'00022')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp003', N'hệ điều hành', N'	Android 9.0 (Pie)', N'00023')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp003', N'kích thước', N'165.13 x 76.4 x 9.19 mm
', N'00024')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp003', N'màn hình', N'6.5"', N'00025')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp003', N'Ram', N'3GB', N'00026')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp003', N'trọng lượng', N'192 g', N'00027')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp004', N'bộ nhớ trong', N'64GB', N'00028')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp004', N'camera', N'48MP', N'00029')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp004', N'độ phân giải', N'1080 x 2232 Pixels', N'00030')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp004', N'dung lượng pin', N'4000 mAh', N'00031')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp004', N'hê điều hành', N'	Android 9.0 (Pie)', N'00032')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp004', N'kích thước', N'152 x 74.4 x 8.3 mm', N'00033')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp004', N'màn hình', N'6.2"', N'00034')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp004', N'Ram', N'4GB', N'00035')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp004', N'trọng lượng', N'175 g', N'00036')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp005', N'bộ nhớ trong', N'64GB', N'00037')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp005', N'camera', N'48MB', N'00038')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp005', N'độ phân giải', N'1080 x 2340 Pixels', N'00039')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp005', N'dung lượng pin', N'4020 mAh', N'00040')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp005', N'hệ điều hành', N'Android 9.0 (Pie)', N'00041')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp005', N'kích thước', N'166.25 x 75.62 x 8.83 mm', N'00042')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp005', N'màn hình', N'6.39"', N'00043')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp005', N'Ram', N'6GB', N'00044')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp005', N'trọng lượng', N'183 g', N'00045')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp006', N'bộ nhớ trong', N'128 GB', N'00046')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp006', N'camera', N'25MP', N'00047')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp006', N'độ phân giải', N'1080 x 2340 Pixels', N'00048')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp006', N'dung lượng pin', N'4000 mAh', N'00049')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp006', N'hê điều hành', N'	Android 9.0 (Pie)', N'00050')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp006', N'kích thước', N'158.5 x 74.7 x 7.7 mm', N'00051')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp006', N'màn hình', N'6.4"', N'00052')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp006', N'Ram', N'6GB', N'00053')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp006', N'trọng lượng', N'166 g', N'00054')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp007', N'bộ nhớ trong', N'32GB', N'00055')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp007', N'camera', N'13MP', N'00056')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp007', N'độ phân giải', N'720 x 1520 Pixels', N'00057')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp007', N'dung lượng pin', N'4000 mAh', N'00058')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp007', N'hê điều hành', N'	Android 9.0 (Pie)', N'00059')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp007', N'kích thước', N'163.3 x 77.5 x 8 mm', N'00060')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp007', N'màn hình', N'	6.5"', N'00061')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp007', N'Ram', N'3GB', N'00062')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp007', N'trọng lượng', N'183 g', N'00063')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp008', N'bộ nhớ trong', N'64GB', N'00064')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp008', N'camera', N'48MP', N'00065')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp008', N'độ phân giải', N'1080 x 2340 Pixels', N'00066')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp008', N'dung lượng pin', N'4000 mAh', N'00067')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp008', N'hê điều hành', N'Android 9.0 (Pie)', N'00068')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp008', N'màn hình', N'	6.3"', N'00069')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp008', N'kích thước', N'158.3 x 75.3 x 8.4 mm', N'00070')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp008', N'Ram', N'4GB', N'00071')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp008', N'trọng lượng', N'190 g', N'00072')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp009', N'bộ nhớ trong', N'64GB', N'00073')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp009', N'camera', N'48MP', N'00074')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp009', N'độ phân giải', N'720 x 1560 Pixels', N'00075')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp009', N'dung lượng pin', N'4030 mAh', N'00076')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp009', N'hê điều hành', N'	Android 9 Pie ', N'00077')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp009', N'kích thước', N'153.5 x  71.9 x 8.5 mm', N'00078')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp009', N'màn hình', N'6.01"', N'00079')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp009', N'Ram', N'4GB', N'00080')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp009', N'trọng lượng', N'173.8 g', N'00081')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp010', N'bộ nhớ trong', N'128GB', N'00082')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp010', N'camera', N'108MP', N'00083')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp010', N'độ phân giải', N'1440 x 3200 Pixels', N'00084')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp010', N'dung lượng pin', N'	5000 mAh', N'00085')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp010', N'hê điều hành', N'Android 10', N'00086')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp010', N'kích thước', N'166.9 x 76 x 8.8 mm', N'00087')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp010', N'màn hình', N'	6.9"', N'00088')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp010', N'Ram', N'	12 GB', N'00089')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp010', N'trọng lượng', N'222 g', N'00090')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp011', N'công nghệ CPU', N'Intel Core i3 Coffee Lake', N'00091')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp011', N'Ram', N'4GB', N'00092')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp011', N'ổ cứng', N'	Intel Optane 32GB (H10)', N'00093')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp011', N'màn hình', N'14 inch', N'00094')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp011', N'độ phân giải', N'1920 x 1080', N'00095')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp011', N'card đồ họa', N'Intel® UHD Graphics 620', N'00096')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp011', N'hệ điều hành', N'Windows 10 Home SL', N'00097')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp011', N'pin', N'	Li-Ion 2 cell', N'00098')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp011', N'trọng lượng', N'1.5 kg', N'00099')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp012', N'công nghệ cpu', N'Intel Core i3 Kabylake', N'00100')
GO
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp012', N'Ram', N'4GB', N'00101')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp012', N'ổ cứng', N'HDD: 1 TB SATA3', N'00102')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp012', N'màn hình', N'15.6 inch', N'00103')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp012', N'độ phân giải', N'1920 x 1080', N'00104')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp012', N'card đồ họa', N'	Intel® UHD Graphics 620', N'00105')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp012', N'hệ điều hành', N'	Windows 10 Home SL', N'00106')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp012', N'pin', N'	Li-Ion 2 cell', N'00107')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp012', N'trọng lượng', N'1.8 kg', N'00108')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp013', N'công nghệ cpu', N'Intel Core i3 Coffee Lake', N'00109')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp013', N'Ram', N'	4 GB', N'00110')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp013', N'ổ cứng', N'HDD: 1 TB SATA3', N'00111')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp013', N'màn hình', N'15.6 inch', N'00112')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp013', N'độ phân giải', N'1920 x 1080', N'00113')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp013', N'card đồ họa', N'Intel® UHD Graphics 620', N'00114')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp013', N'hệ điều hành', N'Windows 10 Home SL', N'00115')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp013', N'pin', N'Li-Ion 3 cell', N'00116')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp013', N'trọng lượng', N'1.8 kg', N'00117')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp014', N'công nghệ cpu', N'Intel Core i3 Coffee Lake', N'00118')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp014', N'Ram', N'4 GB', N'00119')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp014', N'ổ cứng', N'SSD 512 GB M.2 PCIe', N'00120')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp014', N'màn hình', N'14 inch', N'00121')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp014', N'độ phân giải', N'1920 x 1080', N'00122')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp014', N'card đồ họa ', N'	Intel® UHD Graphics 620', N'00123')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp014', N'hệ điều hành', N'Windows 10 Home SL', N'00124')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp014', N'pin', N'Li-Ion 2 cell', N'00125')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp014', N'trọng lượng', N'1.6 kg', N'00126')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp015', N'công nghệ cpu', N'Intel Core i5 Broadwell', N'00127')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp015', N'Ram', N'8 GB', N'00128')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp015', N'ổ cứng', N'SSD: 128 GB', N'00129')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp015', N'màn hình', N'13.3 inch', N'00130')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp015', N'độ phân giải', N'1440 x 900', N'00131')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp015', N'card đồ họa', N'Intel HD Graphics 6000', N'00132')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp015', N'hệ điều hành', N'Mac OS', N'00133')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp015', N'pin', N'12 giờ', N'00134')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp015', N'trọng lượng', N'1.35 Kg', N'00135')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp016', N'công nghệ cpu', N'Intel Core i5 Coffee Lake', N'00136')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp016', N'Ram', N'4 GB', N'00137')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp016', N'ổ cứng', N'HDD: 1 TB SATA3', N'00138')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp016', N'màn hình', N'15.6 inch', N'00139')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp016', N'độ phân giải', N'1920 x 1080', N'00140')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp016', N'card đồ họa', N'Intel® HD Graphics 620', N'00141')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp016', N'hệ điều hành', N'Windows 10 Home SL', N'00142')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp016', N'pin', N'Li-Ion 2 cell', N'00143')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp016', N'trọng lượng', N'1.7 Kg', N'00144')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp017', N'công nghệ cpu', N'Intel Core i3 Coffee Lake', N'00145')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp017', N'Ram', N'	4 GB', N'00146')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp017', N'ổ cứng', N'HDD: 1 TB SATA3', N'00147')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp017', N'màn hình', N'15.6 inch', N'00148')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp017', N'độ phân giải', N'1920 x 1080', N'00149')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp017', N'card đồ họa', N'Intel® UHD Graphics 620', N'00150')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp017', N'hệ điều hành', N'Windows 10 Home SL', N'00151')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp017', N'pin', N'	Li - Polymer 4 cell', N'00152')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp017', N'trọng lượng', N'1.7 kg', N'00153')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp018', N'công nghệ cpu', N'Intel Core i5 Coffee Lake', N'00154')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp018', N'Ram', N'	4 GB', N'00155')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp018', N'ổ cứng', N'HDD: 1 TB SATA3', N'00156')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp018', N'màn hình', N'15.6 inch', N'00157')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp018', N'độ phân giải', N'1920 x 1080', N'00158')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp018', N'card đồ họa', N'Intel® UHD Graphics 620', N'00159')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp018', N'hệ điều hành', N'Windows 10 Home SL', N'00160')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp018', N'pin', N'	Li-Ion 4 cell', N'00161')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp018', N'trọng lượng', N'1.7 Kg', N'00162')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp019', N'công nghệ cpu', N'Intel Core i5 Comet Lake', N'00163')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp019', N'Ram', N'	8 GB', N'00164')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp019', N'ổ cứng', N'SSD 512 GB M.2 PCIe', N'00165')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp019', N'màn hình', N'14 inch', N'00166')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp019', N'độ phân giải', N'1920 x 1080', N'00167')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp019', N'card đồ họa', N'Intel® UHD Graphics 620', N'00168')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp019', N'hệ điều hành', N'	Windows 10 Home SL', N'00169')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp019', N'pin', N'Li-Ion 3 cell', N'00170')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp019', N'trọng lượng', N'1.5 kg', N'00171')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp020', N'độ phân giải', N'1280 x 800 pixels', N'00172')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp020', N'màn hình', N'	8"', N'00173')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp020', N'hệ điều hành', N'	Android 9.0 (Pie)', N'00174')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp020', N'Ram', N'2 GB', N'00175')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp020', N'bộ nhớ trong', N'32 GB', N'00176')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp020', N'trọng lượng', N'347 g', N'00177')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp020', N'pin', N'5100 mAh', N'00178')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp021', N'độ phân giải', N'1920 x 1200 pixels', N'00179')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp021', N'màn hình', N'8"', N'00180')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp021', N'hệ điều hành', N'Android 9.0 (Pie)', N'00181')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp021', N'Ram', N'	3 GB', N'00182')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp021', N'bộ nhớ trong', N'32 GB', N'00183')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp021', N'trọng lượng', N'380 g', N'00184')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp021', N'pin', N'4200 mAh', N'00185')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp022', N'độ phân giải', N'1920 x 1200 pixels', N'00186')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp022', N'màn hình', N'10.1"', N'00187')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp022', N'hệ điều hành', N'Android 9.0 (Pie)', N'00188')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp022', N'Ram', N'3 GB', N'00189')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp022', N'bộ nhớ trong', N'32 GB', N'00190')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp022', N'trọng lượng', N'470 g', N'00191')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp022', N'pin', N'6150 mAh', N'00192')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp023', N'độ phân giải', N'2560 x 1600 pixels', N'00193')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp023', N'màn  hình', N'10.5"', N'00194')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp023', N'hệ điều hành', N'Android 9.0 (Pie)', N'00195')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp023', N'Ram', N'6 GB', N'00196')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp023', N'bộ nhớ trong', N'128 GB', N'00197')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp023', N'trọng lượng', N'420 g', N'00198')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp023', N'pin', N'7040 mAh', N'00199')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp024', N'độ phân giải', N'1280 x 800 pixels', N'00200')
GO
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp024', N'màn hình', N'8"', N'00201')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp024', N'hệ điều hành', N'Android 7.0', N'00202')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp024', N'Ram', N'2 GB', N'00203')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp024', N'bộ nhớ trong', N'16 GB', N'00204')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp024', N'trọng lượng', N'350 g', N'00205')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp024', N'pin', N'4800 mAh', N'00206')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp025', N'độ phân giải', N'1920 x 1200 pixels', N'00207')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp025', N'màn hình', N'10.1"', N'00208')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp025', N'hệ điều hành', N'	Android 8.0', N'00209')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp025', N'Ram', N'	3 GB', N'00210')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp025', N'bộ nhớ trong', N'	32 GB', N'00211')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp025', N'trọng lượng', N'460 g', N'00212')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp025', N'pin', N'5100 mAh', N'00213')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp026', N'độ phân giải', N'1920 x 1200 pixels', N'00214')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp026', N'màn hình', N'10.1"', N'00215')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp026', N'hệ điều hành', N'	Android 8.0', N'00216')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp026', N'Ram', N'	4 GB', N'00217')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp026', N'bộ nhớ trong', N'64 GB', N'00218')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp026', N'trọng lượng', N'475 g', N'00219')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp026', N'pin', N'7500 mAh', N'00220')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp027', N'độ phân giải', N'1536 x 2048 pixels', N'00221')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp027', N'màn hình', N'7.9"', N'00222')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp027', N'hệ điều hành', N'iOS 12', N'00223')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp027', N'Ram', N'3 GB', N'00224')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp027', N'bộ nhớ trong', N'64 GB', N'00225')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp027', N'trọng lượng', N'300 g', N'00226')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp027', N'pin', N'5124 mAh', N'00227')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp028', N'độ phân giải', N'2160 x 1620 pixels', N'00228')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp028', N'màn hình', N'10.2"', N'00229')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp028', N'hệ điều hành', N'iOS 13', N'00230')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp028', N'Ram', N'3 GB', N'00231')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp028', N'bộ nhớ trong', N'32 GB', N'00232')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp028', N'trọng lượng', N'493 g', N'00233')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp028', N'pin', N'8600 mAh', N'00234')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp029', N'độ phân giải', N'2160 x 1620 pixels', N'00235')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp029', N'màn hình', N'10.2"', N'00236')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp029', N'hệ điều hành', N'	iOS 13', N'00237')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp029', N'Ram', N'3 GB', N'00238')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp029', N'bộ nhớ trong', N'128 GB', N'00239')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp029', N'trọng lượng', N'493 g', N'00240')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp029', N'pin', N'8600 mAh', N'00241')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp030', N'đầu ra', N'Type C: 87W', N'00242')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp031', N'độ dài dây', N'1 m', N'00243')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp032', N'chức năng', N'Truyền dữ liệu, xuất hình ảnh, xuất âm thanh, chuyển đổi cổng kết nối', N'00244')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp032', N'đầu vào', N'USB Type-C', N'00245')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp032', N'đầu ra', N'USB Type-C, USB, HDMI', N'00246')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp032', N'độ dài dây', N'11 cm', N'00247')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp033', N'chức năng', N'Sạc', N'00248')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp033', N'đầu ra', N'Type C: 5V - 2A, 9V - 1.67A', N'00249')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp033', N'độ dài dây', N'1.5 m', N'00250')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp034', N'chức năng', N'Sạc, truyền dữ liệu', N'00251')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp034', N'đầu ra', N'Micro USB: 5V - 2A', N'00252')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp034', N'độ dài dây', N'1.5 m', N'00253')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp035', N'chất liệu', N'nhựa dẻo', N'00254')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp035', N'màu sắc', N'bạc', N'00255')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp036', N'chất liệu', N'nhựa cứng viền dẻo', N'00256')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp036', N'màu sắc', N'đào', N'00257')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp037', N'chất liệu', N'nhựa dẻo', N'00258')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp037', N'màu sắc', N'nude', N'00259')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp038', N'tương thích', N'iOS (iPhone)', N'00260')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp038', N'Jack cắm', N'Lightning', N'00261')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp038', N'kết nối cùng lúc', N'1 thiết bị', N'00262')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp038', N'độ dài dây', N'1.2 m', N'00263')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp039', N'tương thích', N'Android, iOS (iPhone)', N'00264')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp039', N'cổng sạc', N'Lightning', N'00265')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp039', N'thời gian sạc đầy', N'15 phút', N'00266')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp039', N'kết nối cùng lúc', N'1 thiết bị', N'00267')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp039', N'khoảng cách kết nối', N'10 m', N'00268')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp039', N'trọng lượng', N'4 g', N'00269')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp040', N'tương thích', N'Android, Windows, iOS (iPhone), Windows Phone', N'00270')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp040', N'cổng sạc', N'Micro USB', N'00271')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp040', N'thời gian sạc đầy', N'2 giờ', N'00272')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp040', N'kết nối cùng lúc', N'2 thiết bị', N'00273')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp040', N'khoảng cách kết nối', N'10 m', N'00274')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp040', N'trọng lượng', N'10.6 g', N'00275')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp041', N'tương thích', N'Android, Windows, iOS (iPhone), Windows Phone', N'00276')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp041', N'Jack cắm', N'3.5 mm', N'00277')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp041', N'kết nối cùng lúc', N'1 thiết bị', N'00278')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp041', N'độ dài dây', N'1.2 m', N'00279')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp042', N'tương thích', N'Android, Windows, iOS (iPhone), Windows Phone', N'00280')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp042', N'cổng sạc', N'Micro USB', N'00281')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp042', N'thời gian sạc đầy', N'3 giờ', N'00282')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp042', N'kết nối cùng lúc', N'2 thiết bị', N'00283')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp042', N'khoảng cách kết nối', N'10 m', N'00284')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp042', N'trọng lượng', N'45.7 g', N'00285')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp043', N'loại thẻ', N'Thẻ Micro SD', N'00286')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp043', N'dung lượng', N'8 GB', N'00287')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp043', N'chuẩn tốc độ', N'Class 4', N'00288')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp043', N'tốc độ đọc dữ liệu', N'30 MB/s', N'00289')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp043', N'tốc độ ghi dữ liệu', N'4 MB/s', N'00290')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp044', N'loại thẻ', N'Thẻ Micro SD', N'00291')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp044', N'dung lượng', N'16 GB', N'00292')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp044', N'chuẩn tốc độ', N'Class 10', N'00293')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp044', N'tốc độ đọc dữ liệu', N'30 MB/s', N'00294')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp044', N'tốc độ ghi dữ liệu', N'10 MB/s', N'00295')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp045', N'loại thẻ', N'Thẻ Micro SD', N'00296')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp045', N'dung lượng', N'128 GB', N'00297')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp045', N'chuẩn tốc độ', N'Class 10', N'00298')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp045', N'tốc độ đọc dữ liệu', N'95 MB/s', N'00299')
INSERT [dbo].[ThongSoKiThuat] ([MaSP], [ThuocTinh], [GiaTri], [MaTSKT]) VALUES (N'sp045', N'tốc độ ghi dữ liệu', N'45 MB/s', N'00300')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 4/24/2020 9:54:12 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/24/2020 9:54:12 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 4/24/2020 9:54:12 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 4/24/2020 9:54:12 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 4/24/2020 9:54:12 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 4/24/2020 9:54:12 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/24/2020 9:54:12 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BinhLuan] ADD  CONSTRAINT [DF_BinhLuan_DaTraLoi]  DEFAULT ('C') FOR [DaTraLoi]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_LoaiSP]  DEFAULT ('NOTTT') FOR [LoaiSP]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_HangSX]  DEFAULT ('NOTTT') FOR [HangSX]
GO
ALTER TABLE [dbo].[AnhSanPham]  WITH CHECK ADD  CONSTRAINT [FK_AnhSanPham_SanPham] FOREIGN KEY([MaSp])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[AnhSanPham] CHECK CONSTRAINT [FK_AnhSanPham_SanPham]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BannerKhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_BannerKhuyenMai_SanPham] FOREIGN KEY([MaSp])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BannerKhuyenMai] CHECK CONSTRAINT [FK_BannerKhuyenMai_SanPham]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_AspNetUsers] FOREIGN KEY([MaKH])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_AspNetUsers]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_SanPham]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSp] FOREIGN KEY([LoaiSP])
REFERENCES [dbo].[LoaiSp] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSp]
GO
ALTER TABLE [dbo].[ThongSoKiThuat]  WITH CHECK ADD  CONSTRAINT [FK_ThongSoKiThuat_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ThongSoKiThuat] CHECK CONSTRAINT [FK_ThongSoKiThuat_SanPham]
GO
USE [master]
GO
ALTER DATABASE [eShopDb] SET  READ_WRITE 
GO
