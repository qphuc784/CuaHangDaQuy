using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CuaHangDaQuy.DTO
{
    class PhieuDichVu
    {
        private int iD;
        public int ID { get => iD; set => iD = value; }

        private int idkhach;
        public int IDKhach { get => idkhach; set => idkhach = value; }

        private DateTime ngay;
        public DateTime Ngay { get => ngay; set => ngay = value; }

        private int iddichvu;
        public int IDDichVu { get => iddichvu; set => iddichvu = value; }

        private int soluong;
        public int SoLuong { get => soluong; set => soluong = value; }

        private float dongia;
        public float DonGia { get => dongia; set => dongia = value; }

        private string tinhtrang;
        public string TinhTrang { get => tinhtrang; set => tinhtrang = value; }

        private float tongtien;
        public float TongTien { get => tongtien; set => tongtien = value; }

        private float tratruoc;
        public float TraTruoc { get => tratruoc; set => tratruoc = value; }

        private float conlai;
        public float ConLai { get => conlai; set => conlai = value; }



        public PhieuDichVu(int id, int idkhach, DateTime ngay, int iddichvu, int soluong, float dongia, string tinhtrang, float tongtien, float tratruoc, float conlai)
        {
            this.ID = id;
            this.IDKhach = idkhach;
            this.Ngay = ngay;
            this.IDDichVu = iddichvu;
            this.SoLuong = soluong;
            this.DonGia = dongia;
            this.TinhTrang = tinhtrang;
            this.TongTien = tongtien;
            this.TraTruoc = tratruoc;
            this.ConLai = conlai;
        }
    }
}
