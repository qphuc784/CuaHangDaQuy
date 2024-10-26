using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CuaHangDaQuy.DTO
{
    class SanPham
    {
        private int iD;
        public int ID { get => iD; set => iD = value; }

        private string tensanpham;
        public string TenSanPham { get => tensanpham; set => tensanpham = value; }

        private int iDloai;
        public int IDLoai { get => IDLoai; set => iDloai = value; }

        private float dongia;
        public float DonGia { get => dongia; set => dongia = value; }

        private int soluong;
        public int SoLuong { get => soluong; set => soluong = value; }

        private Boolean trangthai;
        public Boolean TrangThai { get => trangthai; set => trangthai = value; }

        private DateTime ngaythaydoisl;
        public DateTime NgayThayDoiSL { get => ngaythaydoisl; set => ngaythaydoisl = value; }

        private int sl_truoc;
        public int Sl_Truoc { get => sl_truoc; set => sl_truoc = value; }

        public SanPham(int id, string tensanpham, int idloai, float dongia, int soluong, Boolean trangthai, DateTime ngaythaydoisl, int sltruoc)
        {
            this.ID = id;
            this.TenSanPham = tensanpham;
            this.IDLoai = idloai;
            this.DonGia = dongia;
            this.SoLuong = soluong;
            this.TrangThai = trangthai;
            this.NgayThayDoiSL = ngaythaydoisl;
            this.Sl_Truoc = sltruoc;
        }
    }
}
