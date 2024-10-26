using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CuaHangDaQuy.DTO
{
    class KhachHang
    {
        private int iD;
        public int ID { get => iD; set => iD = value; }

        private string sdt;
        public string SDT { get => sdt; set => sdt = value; }

        private int diem;
        public int Diem { get => diem; set => diem = value; }


        public KhachHang(int id, string sdt, int diem)
        {
            this.ID = id;
            this.SDT = sdt;
            this.Diem = diem;
        }
    }
}
