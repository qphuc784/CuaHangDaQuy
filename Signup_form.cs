using Guna.UI.WinForms;
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
    public partial class Signup_form : Form
    {
        public Signup_form()
        {
            InitializeComponent();
        }

        private void ControlBox_SignupForm_X_Click(object sender, EventArgs e)
        {
            Login f = new Login();
            this.Hide();
            f.ShowDialog();
            this.Show();
        }

        private void Button_SignupForm_SIGNUP_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TextBox_SignupForm_Username.Text) ||
                string.IsNullOrWhiteSpace(TextBox_SignupForm_Email.Text) ||
                string.IsNullOrWhiteSpace(TextBox_SignupForm_Password.Text) ||
                string.IsNullOrWhiteSpace(TextBox_SignupForm_cf_password.Text))
            {
                MessageBox.Show("Nhập đầy đủ thông tin");
            }
            else
            {
                MessageBox.Show("Thành công");
                this.Close();
            }
        }
    }
}
