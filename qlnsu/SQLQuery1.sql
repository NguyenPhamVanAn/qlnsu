USE [QLNhanVien]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 3/18/2022 1:41:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[HoNV] [nvarchar](30) NULL,
	[TenNV] [nvarchar](20) NULL,
	[Phai] [bit] NOT NULL,
	[NgaySinh] [date] NULL,
	[NoiSinh] [nvarchar](50) NULL,
	[MaPhong] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 3/18/2022 1:41:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[MaPhong] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhongBan] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (1, N'Nguy?n Th?', N'H?i', 0, CAST(N'1976-03-02' AS Date), N'TP.HCM', 1)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (2, N'Tr?n V?n', N'Chính', 1, CAST(N'1970-05-12' AS Date), N'TP.HCM', 2)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (3, N'Tr?n Anh', N'Tu?n', 1, CAST(N'1985-12-25' AS Date), N'Long An', 1)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (4, N'Lê Kh?c', N'Ch??ng', 1, CAST(N'1970-03-09' AS Date), N'Sài Gòn', 2)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (5, N'Tr?n Thanh', N'Mai', 0, CAST(N'1990-07-08' AS Date), N'B?n Tre', 1)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (6, N'Tr?n Th? Thu', N'Th?y', 0, CAST(N'1970-09-15' AS Date), N'Sài Gòn', 2)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (7, N'Tr?n Th?', N'Thanh', 0, CAST(N'1982-09-04' AS Date), N'TP.HCM', 1)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (8, N'Lê Thanh', N'Liêm', 1, CAST(N'1981-10-05' AS Date), N'TP.HCM', 2)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (9, N'Nguy?n Phú', N'Thành', 1, CAST(N'1980-12-31' AS Date), N'Sài Gòn', 3)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (10, N'Bùi T?n', N'Tài', 1, CAST(N'1987-01-19' AS Date), N'??ng Nai', 2)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (11, N'Tr?n Th? Hoài', N'Th??ng', 0, CAST(N'1991-05-29' AS Date), N'Long An', 3)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (12, N'M?c Anh', N'Khoa', 1, CAST(N'1971-10-25' AS Date), N'Sài Gòn', 1)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (13, N'Tr??ng Th?', N'Hoa', 0, CAST(N'1972-02-03' AS Date), N'TP.HCM', 1)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (14, N'Tr?n Th? Thu', N'Thúy', 0, CAST(N'1998-02-27' AS Date), N'TP.HCM', 3)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (15, N'Hoàng V?n', N'Th?nh', 1, CAST(N'1977-05-20' AS Date), N'TP.HCM', 4)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[PhongBan] ON 

INSERT [dbo].[PhongBan] ([MaPhong], [TenPhong]) VALUES (1, N'Phòng t? ch?c nhân s?')
INSERT [dbo].[PhongBan] ([MaPhong], [TenPhong]) VALUES (2, N'Phòng kinh doanh')
INSERT [dbo].[PhongBan] ([MaPhong], [TenPhong]) VALUES (3, N'Phòng tài chính k? toán')
INSERT [dbo].[PhongBan] ([MaPhong], [TenPhong]) VALUES (4, N'Phòng s?n xu?t')
INSERT [dbo].[PhongBan] ([MaPhong], [TenPhong]) VALUES (5, N'Phòng ti?p th? s?n ph?m')
SET IDENTITY_INSERT [dbo].[PhongBan] OFF
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_PhongBan1] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PhongBan] ([MaPhong])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_PhongBan1]
GO