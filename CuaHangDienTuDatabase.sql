USE [CuaHangDienTu]
GO
/****** Object:  Table [dbo].[CTHD]    Script Date: 12/24/2020 10:50:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHD](
	[MaHD] [bigint] NOT NULL,
	[MaSP] [bigint] NOT NULL,
	[DonGia] [bigint] NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [bigint] NULL,
 CONSTRAINT [PK_CTHD1] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTPN]    Script Date: 12/24/2020 10:50:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPN](
	[MaPhieuNhap] [bigint] NOT NULL,
	[MaSP] [bigint] NOT NULL,
	[SoLuong] [int] NULL,
	[GiaNhap] [bigint] NULL,
	[ThanhTien] [bigint] NULL,
 CONSTRAINT [PK_CT_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/24/2020 10:50:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [bigint] IDENTITY(1,1) NOT NULL,
	[SDT] [bigint] NULL,
	[MaNV] [bigint] NULL,
	[NgayLap] [date] NULL,
	[TongTien] [bigint] NULL,
 CONSTRAINT [PK_Hoa_don] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/24/2020 10:50:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[SDT] [bigint] NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](4) NULL,
	[NamSinh] [int] NULL,
	[CMND] [nchar](10) NULL,
 CONSTRAINT [PK_Khach_hang] PRIMARY KEY CLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 12/24/2020 10:50:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoai] [bigint] NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_Loai_mat_hang] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 12/24/2020 10:50:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [bigint] NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Nha_cung_cap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/24/2020 10:50:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [bigint] NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](4) NULL,
	[SDT] [char](10) NULL,
 CONSTRAINT [PK_Nhan_vien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuBaoHanh]    Script Date: 12/24/2020 10:50:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuBaoHanh](
	[MaPhieu] [bigint] IDENTITY(1,1) NOT NULL,
	[SDT] [bigint] NULL,
	[MaSP] [bigint] NULL,
	[NgayMua] [date] NULL,
	[NgayHetHan] [date] NULL,
 CONSTRAINT [PK_Phieu_bao_hanh] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 12/24/2020 10:50:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPhieuNhap] [bigint] IDENTITY(1,1) NOT NULL,
	[MaNV] [bigint] NULL,
	[NgayLap] [date] NULL,
	[TongTien] [bigint] NULL,
 CONSTRAINT [PK_Phieu_nhap] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/24/2020 10:50:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [bigint] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[MaLoai] [bigint] NULL,
	[MaNCC] [bigint] NULL,
	[SoLuongTon] [int] NULL,
 CONSTRAINT [PK_Mat_hang] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 12/24/2020 10:50:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[TaiKhoan] [bigint] NOT NULL,
	[MatKhau] [nvarchar](50) NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_HoaDon]
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_SanPham]
GO
ALTER TABLE [dbo].[CTPN]  WITH CHECK ADD  CONSTRAINT [FK_CT_PhieuNhap_Mat_hang] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTPN] CHECK CONSTRAINT [FK_CT_PhieuNhap_Mat_hang]
GO
ALTER TABLE [dbo].[CTPN]  WITH CHECK ADD  CONSTRAINT [FK_CT_PhieuNhap_Phieu_nhap1] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[CTPN] CHECK CONSTRAINT [FK_CT_PhieuNhap_Phieu_nhap1]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_Hoa_don_Khach_hang] FOREIGN KEY([SDT])
REFERENCES [dbo].[KhachHang] ([SDT])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_Hoa_don_Khach_hang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_Hoa_don_Nhan_vien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_Hoa_don_Nhan_vien]
GO
ALTER TABLE [dbo].[PhieuBaoHanh]  WITH CHECK ADD  CONSTRAINT [FK_Phieu_bao_hanh_Khach_hang] FOREIGN KEY([SDT])
REFERENCES [dbo].[KhachHang] ([SDT])
GO
ALTER TABLE [dbo].[PhieuBaoHanh] CHECK CONSTRAINT [FK_Phieu_bao_hanh_Khach_hang]
GO
ALTER TABLE [dbo].[PhieuBaoHanh]  WITH CHECK ADD  CONSTRAINT [FK_Phieu_bao_hanh_Mat_hang] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[PhieuBaoHanh] CHECK CONSTRAINT [FK_Phieu_bao_hanh_Mat_hang]
GO
ALTER TABLE [dbo].[PhieuBaoHanh]  WITH CHECK ADD  CONSTRAINT [FK_PhieuBaoHanh_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[PhieuBaoHanh] CHECK CONSTRAINT [FK_PhieuBaoHanh_SanPham]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_Phieu_nhap_Nhan_vien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_Phieu_nhap_Nhan_vien]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_Mat_hang_Loai_mat_hang1] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSanPham] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_Mat_hang_Loai_mat_hang1]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_Mat_hang_Nha_cung_cap1] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_Mat_hang_Nha_cung_cap1]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_Chuc_vu_Nhan_vien] FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_Chuc_vu_Nhan_vien]
GO
Create TRIGGER [dbo].[TG_CAPNHATHT] ON [dbo].[CTPN]
FOR INSERT
AS
BEGIN	
	UPDATE SanPham
	SET SoLuongTon = SoLuongTon + (SELECT SoLuong FROM inserted WHERE MaSP = inserted.MaSP)
	FROM SanPham
	JOIN inserted ON SanPham.MaSP = inserted.MaSP	
END
GO
create trigger [dbo].[TG_TinhTongPN] on [dbo].[CTPN] 
for insert
as
begin
	update PhieuNhap
	set TongTien = (select sum(CTPN.ThanhTien) from CTPN, inserted where CTPN.MaPhieuNhap = inserted.MaPhieuNhap)
	where PhieuNhap.MaPhieuNhap in (
		select MaPhieuNhap
		from inserted
	)
end
GO
create TRIGGER [dbo].[TG_CAPNHATHANGTON] ON [dbo].[CTHD]
FOR INSERT
AS
BEGIN	
	UPDATE SanPham
	SET SoLuongTon = SoLuongTon - (SELECT SoLuong FROM inserted WHERE MaSP = inserted.MaSP)
	FROM SanPham
	JOIN inserted ON SanPham.MaSP = inserted.MaSP	
END
GO
create trigger [dbo].[TG_TinhTong] on [dbo].[CTHD] 
for insert
as
begin
	update HoaDon
	set TongTien = (select sum(cthd.ThanhTien) from CTHD, inserted where CTHD.MaHD = inserted.MaHD)
	where hoadon.mahd in (
		select mahd
		from inserted
	)
end