CREATE DATABASE QuanLyBanHang
USE [QuanLyBanHang]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 12/23/2021 2:26:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[UserAdmin] [varchar](30) NOT NULL,
	[PassAdmin] [varchar](30) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[UserAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETDONHANG]    Script Date: 12/23/2021 2:26:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONHANG](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CHITIETDONHANG4] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 12/23/2021 2:26:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[Dathanhtoan] [bit] NULL,
	[Tinhtranggiaohang] [bit] NULL,
	[Ngaydat] [datetime] NULL,
	[Ngaygiao] [datetime] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DONDATHANG] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/23/2021 2:26:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[Taikhoan] [varchar](50) NULL,
	[Matkhau] [varchar](50) NOT NULL,
	[Email] [varchar](50) NULL,
	[DiachiKH] [nvarchar](50) NULL,
	[DienthoaiKH] [varchar](50) NULL,
	[Ngaysinh] [datetime] NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAISP]    Script Date: 12/23/2021 2:26:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISP](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LOAISP] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 12/23/2021 2:26:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[Masanpham] [int] IDENTITY(1,1) NOT NULL,
	[Tensanpham] [nvarchar](50) NOT NULL,
	[Giaban] [decimal](18, 0) NULL,
	[Mota] [nvarchar](max) NULL,
	[Anhbia] [varchar](50) NULL,
	[Ngaycapnhat] [smalldatetime] NULL,
	[Soluongton] [int] NULL,
	[MaLoai] [int] NULL,
	[MaTH] [int] NULL,
 CONSTRAINT [PK_DONGHO] PRIMARY KEY CLUSTERED 
(
	[Masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THUONGHIEU]    Script Date: 12/23/2021 2:26:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUONGHIEU](
	[MaTH] [int] IDENTITY(1,1) NOT NULL,
	[TenTH] [nvarchar](50) NOT NULL,
	[Diachi] [nvarchar](50) NULL,
	[Dienthoai] [varchar](50) NULL,
 CONSTRAINT [PK_THUONGHIEU] PRIMARY KEY CLUSTERED 
(
	[MaTH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([UserAdmin], [PassAdmin], [HoTen]) VALUES (N'admin', N'1', N'Huỳnh Ngọc Tuấn')
GO
SET IDENTITY_INSERT [dbo].[DONDATHANG] ON 

INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (2, 0, 0, CAST(N'2021-12-11T13:01:16.643' AS DateTime), CAST(N'2021-12-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (3, 0, 0, CAST(N'2021-12-11T13:03:20.667' AS DateTime), CAST(N'2021-12-19T00:00:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[DONDATHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienthoaiKH], [Ngaysinh]) VALUES (2, N'Huỳnh Ngọc Tuấn', N'huynh', N'123', N'admin@gmaill.com', N'Sài Gòn Quận 12', N'0976972771', CAST(N'1998-09-10T00:00:00.000' AS DateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienthoaiKH], [Ngaysinh]) VALUES (5, N'HDFHJD', N'DFDFDFD', N'1234567890', N'nhg@gmail.com', N'Đồng Nai', N'5675675656', CAST(N'1998-09-10T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAISP] ON 

INSERT [dbo].[LOAISP] ([MaLoai], [TenLoai]) VALUES (1, N'Nội Thất Phòng Khách')
INSERT [dbo].[LOAISP] ([MaLoai], [TenLoai]) VALUES (2, N'Nội Thất Phòng Ngủ')
INSERT [dbo].[LOAISP] ([MaLoai], [TenLoai]) VALUES (3, N'Nội Thất Phòng Bếp')
SET IDENTITY_INSERT [dbo].[LOAISP] OFF
GO
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([Masanpham], [Tensanpham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoai], [MaTH]) VALUES (12, N'Nội Thất Phòng Khách 01', CAST(500000000 AS Decimal(18, 0)), N'Nội Thất Phòng Khách Theo Phong Cách Hiện Đại Sang Trong Thời Thượng', N'NoiThatPhongKhach1.jpg', CAST(N'2016-04-30T00:00:00' AS SmallDateTime), 22, 1, 1)
INSERT [dbo].[SANPHAM] ([Masanpham], [Tensanpham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoai], [MaTH]) VALUES (13, N'Nội Thất Phòng Khách 02', CAST(100000000 AS Decimal(18, 0)), N'Nội Thất Phòng Khách Theo Phong Cách Hiện Đại Sang Trong Thời Thượng', N'NoiThatPhongKhach2.jpg', CAST(N'2016-04-30T00:00:00' AS SmallDateTime), 20, 1, 2)
INSERT [dbo].[SANPHAM] ([Masanpham], [Tensanpham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoai], [MaTH]) VALUES (14, N'Nội Thất Phòng Khách 03', CAST(250000000 AS Decimal(18, 0)), N'Nội Thất Phòng Khách Theo Phong Cách Hiện Đại Sang Trong Thời Thượng', N'NoiThatPhongKhach3.jpg', CAST(N'2016-04-30T00:00:00' AS SmallDateTime), 50, 1, 3)
INSERT [dbo].[SANPHAM] ([Masanpham], [Tensanpham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoai], [MaTH]) VALUES (26, N'Nội Thất Phòng Ngủ 01', CAST(300000000 AS Decimal(18, 0)), N'Phòng ngủ là không gian riêng tư quan trọng không thể thiếu trong ngôi nhà của bạn, chính vì vậy thiết kế nội thất phòng ngủ luôn nhận được sự quan tâm và chăm chút đặc biệt trong thiết kế nội thất. Dù là một phòng ngủ nhỏ hay phòng ngủ với không gian rộng lớn thì cũng cần có dấu ấn riêng của chủ nhân. Để làm được điều đó hãy cùng xem qua những mẫu thiết kế nội thất phòng ngủ siêu đẹp dưới đây nhé.', N'NoiThatPhongNgu1.jpg', CAST(N'2019-06-04T00:00:00' AS SmallDateTime), 10, 2, 4)
INSERT [dbo].[SANPHAM] ([Masanpham], [Tensanpham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoai], [MaTH]) VALUES (43, N'Nội Thất Phòng Ngủ 02', CAST(200000000 AS Decimal(18, 0)), N'Phòng ngủ là không gian riêng tư quan trọng không thể thiếu trong ngôi nhà của bạn, chính vì vậy thiết kế nội thất phòng ngủ luôn nhận được sự quan tâm và chăm chút đặc biệt trong thiết kế nội thất. Dù là một phòng ngủ nhỏ hay phòng ngủ với không gian rộng lớn thì cũng cần có dấu ấn riêng của chủ nhân. Để làm được điều đó hãy cùng xem qua những mẫu thiết kế nội thất phòng ngủ siêu đẹp dưới đây nhé.', N'NoiThatPhongNgu2.jpg', CAST(N'2019-06-04T00:00:00' AS SmallDateTime), 50, 2, 5)
INSERT [dbo].[SANPHAM] ([Masanpham], [Tensanpham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoai], [MaTH]) VALUES (45, N'Nội Thất Phòng Ngủ 03', CAST(400000000 AS Decimal(18, 0)), N'Phòng ngủ là không gian riêng tư quan trọng không thể thiếu trong ngôi nhà của bạn, chính vì vậy thiết kế nội thất phòng ngủ luôn nhận được sự quan tâm và chăm chút đặc biệt trong thiết kế nội thất. Dù là một phòng ngủ nhỏ hay phòng ngủ với không gian rộng lớn thì cũng cần có dấu ấn riêng của chủ nhân. Để làm được điều đó hãy cùng xem qua những mẫu thiết kế nội thất phòng ngủ siêu đẹp dưới đây nhé.', N'NoiThatPhongNgu3.jpg', CAST(N'2019-06-04T00:00:00' AS SmallDateTime), 40, 2, 6)
INSERT [dbo].[SANPHAM] ([Masanpham], [Tensanpham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoai], [MaTH]) VALUES (46, N'Nội Thất Phòng Bếp 01', CAST(600000000 AS Decimal(18, 0)), N'Nội Thật Trang Trí Theo Mô Hình Hiện Đại Theo Phong Cách Mới', N'NoiThatPhongBep1.jpg', CAST(N'2019-06-04T00:00:00' AS SmallDateTime), 30, 3, 7)
INSERT [dbo].[SANPHAM] ([Masanpham], [Tensanpham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoai], [MaTH]) VALUES (47, N'Nội Thất Phòng Bếp 02', CAST(700000000 AS Decimal(18, 0)), N'Nội Thật Trang Trí Theo Mô Hình Hiện Đại Theo Phong Cách Mới', N'NoiThatPhongBep2.jpg', CAST(N'2019-06-04T00:00:00' AS SmallDateTime), 20, 3, 8)
INSERT [dbo].[SANPHAM] ([Masanpham], [Tensanpham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaLoai], [MaTH]) VALUES (48, N'Nội Thất Phòng Bếp 03', CAST(300000000 AS Decimal(18, 0)), N'Nội Thật Trang Trí Theo Mô Hình Hiện Đại Theo Phong Cách Mới', N'NoiThatPhongBep3.jpg', CAST(N'2019-06-04T00:00:00' AS SmallDateTime), 30, 3, 9)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
GO
SET IDENTITY_INSERT [dbo].[THUONGHIEU] ON 

INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH], [Diachi], [Dienthoai]) VALUES (1, N'Ashley', N'Sài Gòn', N'0976973771')
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH], [Diachi], [Dienthoai]) VALUES (2, N'Aaron', NULL, NULL)
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH], [Diachi], [Dienthoai]) VALUES (3, N'Dunelm Group', NULL, NULL)
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH], [Diachi], [Dienthoai]) VALUES (4, N'Row', NULL, NULL)
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH], [Diachi], [Dienthoai]) VALUES (5, N'French Heritage', NULL, NULL)
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH], [Diachi], [Dienthoai]) VALUES (6, N'Forma Ideale', NULL, NULL)
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH], [Diachi], [Dienthoai]) VALUES (7, N'Harvey Norman', NULL, NULL)
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH], [Diachi], [Dienthoai]) VALUES (8, N'Steelcase', NULL, NULL)
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH], [Diachi], [Dienthoai]) VALUES (9, N'Sofa Workshop', NULL, NULL)
SET IDENTITY_INSERT [dbo].[THUONGHIEU] OFF
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONHANG_DONDATHANG] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DONDATHANG] ([MaDonHang])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_CHITIETDONHANG_DONDATHANG]
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONHANG_SANPHAM] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([Masanpham])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_CHITIETDONHANG_SANPHAM]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_LOAISP] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LOAISP] ([MaLoai])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_LOAISP]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_THUONGHIEU] FOREIGN KEY([MaTH])
REFERENCES [dbo].[THUONGHIEU] ([MaTH])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_THUONGHIEU]
GO
