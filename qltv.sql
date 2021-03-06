USE [master]
GO
/****** Object:  Database [QuanLyThuVien]    Script Date: 5/8/2022 12:05:27 AM ******/
CREATE DATABASE [QuanLyThuVien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyThuVien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QuanLyThuVien.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyThuVien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QuanLyThuVien_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyThuVien] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyThuVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyThuVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyThuVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyThuVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyThuVien] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyThuVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyThuVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyThuVien] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyThuVien] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyThuVien', N'ON'
GO
USE [QuanLyThuVien]
GO
/****** Object:  Table [dbo].[ChiTiet]    Script Date: 5/8/2022 12:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet](
	[MaCaBiet] [int] NULL,
	[MaChiTietMuon] [int] NULL,
	[MaChiTietTra] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietMuon]    Script Date: 5/8/2022 12:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietMuon](
	[MaChiTietMuon] [int] IDENTITY(1,1) NOT NULL,
	[MaDocGia] [int] NULL,
	[NgayMuon] [date] NULL,
	[SoLuongMuon] [int] NULL,
	[HanTra] [date] NULL,
	[ID_NguoiDung] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietMuon] PRIMARY KEY CLUSTERED 
(
	[MaChiTietMuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietSach]    Script Date: 5/8/2022 12:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSach](
	[MaCaBiet] [int] NOT NULL,
	[MaSach] [int] NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[AnhBarCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_MaCaBiet] PRIMARY KEY CLUSTERED 
(
	[MaCaBiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietSach_ChiTietMuon]    Script Date: 5/8/2022 12:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSach_ChiTietMuon](
	[MaChiTietMuon] [int] NULL,
	[MaSach] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietTra]    Script Date: 5/8/2022 12:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietTra](
	[MaChiTietTra] [int] NOT NULL,
	[MaChiTietMuon] [int] NULL,
	[NgayTra] [date] NULL,
	[SoLuongTra] [int] NULL,
	[TraDungHan] [bit] NULL,
 CONSTRAINT [PK_ChiTietTra] PRIMARY KEY CLUSTERED 
(
	[MaChiTietTra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChucDanh]    Script Date: 5/8/2022 12:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucDanh](
	[MaChucDanh] [int] IDENTITY(1,1) NOT NULL,
	[TenChucDanh] [nvarchar](50) NULL,
	[GhiChu] [text] NULL,
 CONSTRAINT [PK_ChucDanh] PRIMARY KEY CLUSTERED 
(
	[MaChucDanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 5/8/2022 12:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [int] NOT NULL,
	[TenChucVu] [nvarchar](50) NULL,
	[GhiChu] [text] NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhSachMuon]    Script Date: 5/8/2022 12:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSachMuon](
	[MaDocGia] [int] NULL,
	[MaSach] [int] NULL,
	[SoLuong] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DocGia]    Script Date: 5/8/2022 12:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGia](
	[MaDocGia] [int] IDENTITY(1,1) NOT NULL,
	[TenDocGia] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[MaChucDanh] [int] NULL,
	[GioiTinh] [bit] NULL,
	[Email] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[NgayDangKy] [date] NULL,
	[NgayHetHan] [date] NULL,
	[Lop] [nvarchar](50) NULL,
	[MaKhoa] [int] NULL,
	[KhoaHoc] [int] NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_DocGia] PRIMARY KEY CLUSTERED 
(
	[MaDocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 5/8/2022 12:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKhoa] [int] IDENTITY(1,1) NOT NULL,
	[TenKhoa] [nvarchar](50) NULL,
 CONSTRAINT [PK_Khoa\] PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSach]    Script Date: 5/8/2022 12:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSach](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TenLoai] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NgonNgu]    Script Date: 5/8/2022 12:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NgonNgu](
	[MaNgonNgu] [int] IDENTITY(1,1) NOT NULL,
	[TenNgonNgu] [nvarchar](50) NULL,
	[GhiChu] [text] NULL,
 CONSTRAINT [PK_NgonNgu] PRIMARY KEY CLUSTERED 
(
	[MaNgonNgu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 5/8/2022 12:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[ID_NguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[MaChucVu] [int] NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[ID_NguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 5/8/2022 12:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[MaNhaXuatBan] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaXuatBan] [nvarchar](50) NULL,
	[GhiChu] [text] NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNhaXuatBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach]    Script Date: 5/8/2022 12:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [int] IDENTITY(1,1) NOT NULL,
	[TenSach] [nvarchar](50) NULL,
	[MaNhaXuatBan] [int] NULL,
	[MaNgonNgu] [int] NULL,
	[SoLuong] [int] NULL,
	[NamXuatBan] [int] NULL,
	[DonGia] [int] NULL,
	[SoTaiBan] [int] NULL,
	[TinhTrang] [bit] NULL,
	[Anh] [varchar](max) NULL,
	[MaLoaiSach] [int] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sach_ChiTietMuon]    Script Date: 5/8/2022 12:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach_ChiTietMuon](
	[MaChiTietMuon] [int] NULL,
	[MaSach] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach_ChiTietTra]    Script Date: 5/8/2022 12:05:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach_ChiTietTra](
	[MaChiTietTra] [int] NULL,
	[MaSach] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach_LoaiSach]    Script Date: 5/8/2022 12:05:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach_LoaiSach](
	[MaSach] [int] NULL,
	[MaLoai] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach_TacGia]    Script Date: 5/8/2022 12:05:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach_TacGia](
	[MaSach] [int] NULL,
	[MaTacGia] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 5/8/2022 12:05:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTacGia] [int] IDENTITY(1,1) NOT NULL,
	[TenTacGia] [nvarchar](50) NULL,
	[GhiChu] [text] NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[MaTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[The]    Script Date: 5/8/2022 12:05:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[The](
	[SoThe] [int] NOT NULL,
	[MaDocGia] [int] NULL,
	[NgayDangKi] [date] NULL,
	[NgayHetHan] [date] NULL,
	[Anh] [nvarchar](50) NULL,
 CONSTRAINT [PK_The] PRIMARY KEY CLUSTERED 
(
	[SoThe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ViPham]    Script Date: 5/8/2022 12:05:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViPham](
	[MaViPham] [int] NOT NULL,
	[MaDocGia] [int] NULL,
	[LyDo] [text] NULL,
	[HinhThucXuLy] [nvarchar](50) NULL,
	[MaNguoiXuLy] [nvarchar](50) NULL,
	[NgayXuLy] [date] NULL,
 CONSTRAINT [PK_ViPham] PRIMARY KEY CLUSTERED 
(
	[MaViPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ChiTietMuon] ON 

INSERT [dbo].[ChiTietMuon] ([MaChiTietMuon], [MaDocGia], [NgayMuon], [SoLuongMuon], [HanTra], [ID_NguoiDung]) VALUES (2, 1, CAST(N'2022-07-05' AS Date), 3, CAST(N'2022-08-05' AS Date), 1)
SET IDENTITY_INSERT [dbo].[ChiTietMuon] OFF
SET IDENTITY_INSERT [dbo].[ChucDanh] ON 

INSERT [dbo].[ChucDanh] ([MaChucDanh], [TenChucDanh], [GhiChu]) VALUES (1, N'Sinh Viên', NULL)
SET IDENTITY_INSERT [dbo].[ChucDanh] OFF
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [GhiChu]) VALUES (1, N'Thủ thư', NULL)
SET IDENTITY_INSERT [dbo].[DocGia] ON 

INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [NgaySinh], [MaChucDanh], [GioiTinh], [Email], [DiaChi], [SoDienThoai], [NgayDangKy], [NgayHetHan], [Lop], [MaKhoa], [KhoaHoc], [Username], [Password]) VALUES (1, N'Lê Thị Thanh Tú', CAST(N'2001-11-26' AS Date), 1, 1, N'ltttus@gmail.com', N'Huế', N'0123456789', CAST(N'2022-01-01' AS Date), CAST(N'2023-01-01' AS Date), N'KTPM', 1, 43, N'ltttus', N'123')
SET IDENTITY_INSERT [dbo].[DocGia] OFF
SET IDENTITY_INSERT [dbo].[Khoa] ON 

INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (1, N'Công nghệ thông tin')
SET IDENTITY_INSERT [dbo].[Khoa] OFF
SET IDENTITY_INSERT [dbo].[LoaiSach] ON 

INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoai], [GhiChu]) VALUES (1, N'Giáo khoa', NULL)
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoai], [GhiChu]) VALUES (2, N'Giáo trình', NULL)
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoai], [GhiChu]) VALUES (3, N'Kinh dị', NULL)
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoai], [GhiChu]) VALUES (4, N'Trinh thám', NULL)
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoai], [GhiChu]) VALUES (5, N'Hài', NULL)
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoai], [GhiChu]) VALUES (6, N'Chính kịch', NULL)
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoai], [GhiChu]) VALUES (7, N'Lãng mạn', NULL)
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoai], [GhiChu]) VALUES (8, N'CNTT', NULL)
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoai], [GhiChu]) VALUES (9, N'Khoa học', NULL)
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoai], [GhiChu]) VALUES (10, N'Viễn tưởng', NULL)
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoai], [GhiChu]) VALUES (11, N'Wibu', NULL)
SET IDENTITY_INSERT [dbo].[LoaiSach] OFF
SET IDENTITY_INSERT [dbo].[NgonNgu] ON 

INSERT [dbo].[NgonNgu] ([MaNgonNgu], [TenNgonNgu], [GhiChu]) VALUES (1, N'Tiếng Việt', NULL)
INSERT [dbo].[NgonNgu] ([MaNgonNgu], [TenNgonNgu], [GhiChu]) VALUES (2, N'Tiếng Anh', NULL)
INSERT [dbo].[NgonNgu] ([MaNgonNgu], [TenNgonNgu], [GhiChu]) VALUES (3, N'Tiếng Trung', NULL)
INSERT [dbo].[NgonNgu] ([MaNgonNgu], [TenNgonNgu], [GhiChu]) VALUES (4, N'Tiếng Nhật', NULL)
INSERT [dbo].[NgonNgu] ([MaNgonNgu], [TenNgonNgu], [GhiChu]) VALUES (5, N'Tiếng Hàn', NULL)
INSERT [dbo].[NgonNgu] ([MaNgonNgu], [TenNgonNgu], [GhiChu]) VALUES (6, N'Tiếng Etiopia', NULL)
SET IDENTITY_INSERT [dbo].[NgonNgu] OFF
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([ID_NguoiDung], [HoTen], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [MaChucVu], [UserName], [Password]) VALUES (1, N'Phạm Ngọc Duy Phước', CAST(N'2001-03-31' AS Date), 0, N'0782958847', N'pndp313@gmail.com', 1, N'pndphuoc', N'123')
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[NhaXuatBan] ON 

INSERT [dbo].[NhaXuatBan] ([MaNhaXuatBan], [TenNhaXuatBan], [GhiChu]) VALUES (1, N'Nhà xuất bản Trẻ', NULL)
INSERT [dbo].[NhaXuatBan] ([MaNhaXuatBan], [TenNhaXuatBan], [GhiChu]) VALUES (2, N'Nhà xuất bản Kim đồng', NULL)
INSERT [dbo].[NhaXuatBan] ([MaNhaXuatBan], [TenNhaXuatBan], [GhiChu]) VALUES (3, N'Nhà xuất bản Giáo dục', NULL)
INSERT [dbo].[NhaXuatBan] ([MaNhaXuatBan], [TenNhaXuatBan], [GhiChu]) VALUES (4, N'Nhà xuất bản Lao động', NULL)
INSERT [dbo].[NhaXuatBan] ([MaNhaXuatBan], [TenNhaXuatBan], [GhiChu]) VALUES (5, N'Nhà xuất bản Đại học Huế', NULL)
SET IDENTITY_INSERT [dbo].[NhaXuatBan] OFF
SET IDENTITY_INSERT [dbo].[Sach] ON 

INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaNhaXuatBan], [MaNgonNgu], [SoLuong], [NamXuatBan], [DonGia], [SoTaiBan], [TinhTrang], [Anh], [MaLoaiSach]) VALUES (1, N'Lập trình hướng đối tượng', 3, 1, 10, 2001, 0, 1, 1, NULL, 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaNhaXuatBan], [MaNgonNgu], [SoLuong], [NamXuatBan], [DonGia], [SoTaiBan], [TinhTrang], [Anh], [MaLoaiSach]) VALUES (2, N'Test', 1, 2, 12, 2022, 100000, 2, 1, NULL, 2)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaNhaXuatBan], [MaNgonNgu], [SoLuong], [NamXuatBan], [DonGia], [SoTaiBan], [TinhTrang], [Anh], [MaLoaiSach]) VALUES (3, N'phuoc', 3, 5, 23, 2022, 69000, 1, 1, NULL, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaNhaXuatBan], [MaNgonNgu], [SoLuong], [NamXuatBan], [DonGia], [SoTaiBan], [TinhTrang], [Anh], [MaLoaiSach]) VALUES (4, N'abc', 2, 5, 123, 2001, 123, 1, 1, NULL, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaNhaXuatBan], [MaNgonNgu], [SoLuong], [NamXuatBan], [DonGia], [SoTaiBan], [TinhTrang], [Anh], [MaLoaiSach]) VALUES (5, N'test', 1, 1, 123, 2020, 0, 1, 1, NULL, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaNhaXuatBan], [MaNgonNgu], [SoLuong], [NamXuatBan], [DonGia], [SoTaiBan], [TinhTrang], [Anh], [MaLoaiSach]) VALUES (12, N'tesst', 4, 6, 10, 2441, 141, 1, 1, NULL, NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaNhaXuatBan], [MaNgonNgu], [SoLuong], [NamXuatBan], [DonGia], [SoTaiBan], [TinhTrang], [Anh], [MaLoaiSach]) VALUES (13, N'test1', 5, 6, 12, 2222, 123, 2, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Sach] OFF
INSERT [dbo].[Sach_TacGia] ([MaSach], [MaTacGia]) VALUES (1, 1)
INSERT [dbo].[Sach_TacGia] ([MaSach], [MaTacGia]) VALUES (1, 2)
INSERT [dbo].[Sach_TacGia] ([MaSach], [MaTacGia]) VALUES (1, 3)
INSERT [dbo].[Sach_TacGia] ([MaSach], [MaTacGia]) VALUES (2, 3)
INSERT [dbo].[Sach_TacGia] ([MaSach], [MaTacGia]) VALUES (2, 4)
INSERT [dbo].[Sach_TacGia] ([MaSach], [MaTacGia]) VALUES (2, 5)
INSERT [dbo].[Sach_TacGia] ([MaSach], [MaTacGia]) VALUES (3, 2)
INSERT [dbo].[Sach_TacGia] ([MaSach], [MaTacGia]) VALUES (3, 4)
SET IDENTITY_INSERT [dbo].[TacGia] ON 

INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [GhiChu]) VALUES (1, N'Phạm Ngọc Duy Phước', N'd?p trai')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [GhiChu]) VALUES (2, N'Nguyễn Nhật Ánh', NULL)
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [GhiChu]) VALUES (3, N'JK Rowling', NULL)
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [GhiChu]) VALUES (4, N'Arthur Conan Doyle', NULL)
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [GhiChu]) VALUES (5, N'Dan Brown', NULL)
SET IDENTITY_INSERT [dbo].[TacGia] OFF
ALTER TABLE [dbo].[ChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_ChiTiet_ChiTietMuon] FOREIGN KEY([MaChiTietMuon])
REFERENCES [dbo].[ChiTietMuon] ([MaChiTietMuon])
GO
ALTER TABLE [dbo].[ChiTiet] CHECK CONSTRAINT [FK_ChiTiet_ChiTietMuon]
GO
ALTER TABLE [dbo].[ChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_ChiTiet_ChiTietSach] FOREIGN KEY([MaCaBiet])
REFERENCES [dbo].[ChiTietSach] ([MaCaBiet])
GO
ALTER TABLE [dbo].[ChiTiet] CHECK CONSTRAINT [FK_ChiTiet_ChiTietSach]
GO
ALTER TABLE [dbo].[ChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_ChiTiet_ChiTietTra] FOREIGN KEY([MaChiTietTra])
REFERENCES [dbo].[ChiTietTra] ([MaChiTietTra])
GO
ALTER TABLE [dbo].[ChiTiet] CHECK CONSTRAINT [FK_ChiTiet_ChiTietTra]
GO
ALTER TABLE [dbo].[ChiTietMuon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietMuon_DocGia] FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[DocGia] ([MaDocGia])
GO
ALTER TABLE [dbo].[ChiTietMuon] CHECK CONSTRAINT [FK_ChiTietMuon_DocGia]
GO
ALTER TABLE [dbo].[ChiTietSach]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSach_Sach] FOREIGN KEY([MaCaBiet])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[ChiTietSach] CHECK CONSTRAINT [FK_ChiTietSach_Sach]
GO
ALTER TABLE [dbo].[ChiTietTra]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTra_ChiTietMuon] FOREIGN KEY([MaChiTietMuon])
REFERENCES [dbo].[ChiTietMuon] ([MaChiTietMuon])
GO
ALTER TABLE [dbo].[ChiTietTra] CHECK CONSTRAINT [FK_ChiTietTra_ChiTietMuon]
GO
ALTER TABLE [dbo].[DanhSachMuon]  WITH CHECK ADD  CONSTRAINT [FK_DanhSachMuon_DocGia] FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[DocGia] ([MaDocGia])
GO
ALTER TABLE [dbo].[DanhSachMuon] CHECK CONSTRAINT [FK_DanhSachMuon_DocGia]
GO
ALTER TABLE [dbo].[DanhSachMuon]  WITH CHECK ADD  CONSTRAINT [FK_DanhSachMuon_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[DanhSachMuon] CHECK CONSTRAINT [FK_DanhSachMuon_Sach]
GO
ALTER TABLE [dbo].[DocGia]  WITH CHECK ADD  CONSTRAINT [FK_DocGia_ChucDanh] FOREIGN KEY([MaChucDanh])
REFERENCES [dbo].[ChucDanh] ([MaChucDanh])
GO
ALTER TABLE [dbo].[DocGia] CHECK CONSTRAINT [FK_DocGia_ChucDanh]
GO
ALTER TABLE [dbo].[DocGia]  WITH CHECK ADD  CONSTRAINT [FK_DocGia_Khoa] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[Khoa] ([MaKhoa])
GO
ALTER TABLE [dbo].[DocGia] CHECK CONSTRAINT [FK_DocGia_Khoa]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_ChucVu] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_ChucVu]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NgonNgu] FOREIGN KEY([MaNgonNgu])
REFERENCES [dbo].[NgonNgu] ([MaNgonNgu])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NgonNgu]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NhaXuatBan] FOREIGN KEY([MaNhaXuatBan])
REFERENCES [dbo].[NhaXuatBan] ([MaNhaXuatBan])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NhaXuatBan]
GO
ALTER TABLE [dbo].[Sach_ChiTietMuon]  WITH CHECK ADD  CONSTRAINT [FK_Sach_ChiTietMuon_ChiTietMuon] FOREIGN KEY([MaChiTietMuon])
REFERENCES [dbo].[ChiTietMuon] ([MaChiTietMuon])
GO
ALTER TABLE [dbo].[Sach_ChiTietMuon] CHECK CONSTRAINT [FK_Sach_ChiTietMuon_ChiTietMuon]
GO
ALTER TABLE [dbo].[Sach_ChiTietMuon]  WITH CHECK ADD  CONSTRAINT [FK_Sach_ChiTietMuon_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[Sach_ChiTietMuon] CHECK CONSTRAINT [FK_Sach_ChiTietMuon_Sach]
GO
ALTER TABLE [dbo].[Sach_ChiTietTra]  WITH CHECK ADD  CONSTRAINT [FK_Sach_ChiTietTra_ChiTietTra] FOREIGN KEY([MaChiTietTra])
REFERENCES [dbo].[ChiTietTra] ([MaChiTietTra])
GO
ALTER TABLE [dbo].[Sach_ChiTietTra] CHECK CONSTRAINT [FK_Sach_ChiTietTra_ChiTietTra]
GO
ALTER TABLE [dbo].[Sach_ChiTietTra]  WITH CHECK ADD  CONSTRAINT [FK_Sach_ChiTietTra_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[Sach_ChiTietTra] CHECK CONSTRAINT [FK_Sach_ChiTietTra_Sach]
GO
ALTER TABLE [dbo].[Sach_LoaiSach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_LoaiSach_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[Sach_LoaiSach] CHECK CONSTRAINT [FK_Sach_LoaiSach_Sach]
GO
ALTER TABLE [dbo].[Sach_LoaiSach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_LoaiSach_TenLoai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSach] ([MaLoai])
GO
ALTER TABLE [dbo].[Sach_LoaiSach] CHECK CONSTRAINT [FK_Sach_LoaiSach_TenLoai]
GO
ALTER TABLE [dbo].[Sach_TacGia]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TacGia_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[Sach_TacGia] CHECK CONSTRAINT [FK_Sach_TacGia_Sach]
GO
ALTER TABLE [dbo].[Sach_TacGia]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TacGia_TacGia] FOREIGN KEY([MaTacGia])
REFERENCES [dbo].[TacGia] ([MaTacGia])
GO
ALTER TABLE [dbo].[Sach_TacGia] CHECK CONSTRAINT [FK_Sach_TacGia_TacGia]
GO
ALTER TABLE [dbo].[The]  WITH CHECK ADD  CONSTRAINT [FK_The_DocGia] FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[DocGia] ([MaDocGia])
GO
ALTER TABLE [dbo].[The] CHECK CONSTRAINT [FK_The_DocGia]
GO
ALTER TABLE [dbo].[ViPham]  WITH CHECK ADD  CONSTRAINT [FK_ViPham_DocGia] FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[DocGia] ([MaDocGia])
GO
ALTER TABLE [dbo].[ViPham] CHECK CONSTRAINT [FK_ViPham_DocGia]
GO
USE [master]
GO
ALTER DATABASE [QuanLyThuVien] SET  READ_WRITE 
GO
