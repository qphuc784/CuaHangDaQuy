using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CuaHangDaQuy.DTO
{
    class PhieuBanHang
    {
        private int iD;
        public int ID { get => iD; set => iD = value; }

        private int iDkhachhang;
        public int IDKhachHang { get => iDkhachhang; set => iDkhachhang = value; }

        private int idsanpham;
        public int IDSanPham { get => idsanpham; set => idsanpham = value; }

        private string tensanpham;
        public string TenSanPham { get => tensanpham; set => tensanpham = value; }

        private int soluong;
        public int SoLuong { get => soluong; set => soluong = value; }

        private string dvt;
        public string DVT { get => dvt; set => dvt = value; }

        private float dongia;
        public float DonGia { get => dongia; set => dongia = value; }

        private float thanhtien;
        public float ThanhTien { get => thanhtien; set => thanhtien = value; }

        private DateTime ngayban;
        public DateTime NgayBan { get => ngayban; set => ngayban = value; }


        public PhieuBanHang(int id, int idkhach, int idsp, string tensp, int soluong, string dvt, float dongia, float thanhtien, DateTime ngayban)
        {
            this.ID = id;
            this.IDKhachHang = idkhach;
            this.IDSanPham = idsp;
            this.TenSanPham = tensp;
            this.SoLuong = soluong;
            this.DVT = dvt;
            this.DonGia = dongia;
            this.ThanhTien = thanhtien;
            this.NgayBan = ngayban;
        }
    }
}
