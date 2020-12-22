//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CuaHangDienTu.Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class SanPham
    {
        public SanPham()
        {
            this.CTPNs = new HashSet<CTPN>();
            this.PhieuBaoHanhs = new HashSet<PhieuBaoHanh>();
            this.CTHDs = new HashSet<CTHD>();
        }
    
        public long MaSP { get; set; }
        public string TenSP { get; set; }
        public Nullable<long> MaLoai { get; set; }
        public Nullable<long> MaNCC { get; set; }
    
        public virtual ICollection<CTPN> CTPNs { get; set; }
        public virtual LoaiSanPham LoaiSanPham { get; set; }
        public virtual NhaCungCap NhaCungCap { get; set; }
        public virtual ICollection<PhieuBaoHanh> PhieuBaoHanhs { get; set; }
        public virtual ICollection<CTHD> CTHDs { get; set; }
    }
}