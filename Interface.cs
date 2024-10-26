using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CNPM
{
    public partial class Interface : Form
    {
        public Interface()
        {
            InitializeComponent();
        }

        private void Interface_Load(object sender, EventArgs e)
        {

        }

        private void Button_Interface_logout_Click(object sender, EventArgs e)
        {
            Login f = new Login();
            this.Hide();
            this.Close();
            f.ShowDialog();
        }
    }
}
