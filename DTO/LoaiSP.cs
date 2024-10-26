using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CuaHangDaQuy.DTO
{
    class LoaiSP
    {
        private int iD;
        public int ID { get => iD; set => iD = value; }

        private string ten;
        public string Ten { get => ten; set => ten = value; }

        private int loinhuan;
        public int LoiNhuan { get => loinhuan; set => loinhuan = value; }

        private string dvt;
        public string DVT { get => dvt; set => dvt = value; }


        public LoaiSP(int id, string ten, int loinhuan, string dvt)
        {
            this.ID = id;
            this.Ten = ten;
            this.LoiNhuan = loinhuan;
            this.DVT = dvt;
        }

    }
}
