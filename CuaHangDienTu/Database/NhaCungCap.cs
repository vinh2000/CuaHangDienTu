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
    
    public partial class NhaCungCap
    {
        public NhaCungCap()
        {
            this.SanPhams = new HashSet<SanPham>();
        }
    
        public long MaNCC { get; set; }
        public string TenNCC { get; set; }
        public string DiaChi { get; set; }
    
        public virtual ICollection<SanPham> SanPhams { get; set; }
    }
}
