using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyCuaHangDaQuy.DAO
{
    public class AccountDAO
    {
        private static AccountDAO instance;
        public static AccountDAO Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new AccountDAO();
                }
                return AccountDAO.instance;
            }
            private set { instance = value; }
        }

        private AccountDAO() { }

        public bool Login_Admin(string username, string password)
        {
            if (username == "phuc" && password == "1")
            {
                return true;
            }
            else return false;
        }


    }
}
