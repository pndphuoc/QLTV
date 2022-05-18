using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Net;
using System.Net.Mail;
using QuanLyThuVIen.Data;

namespace QuanLyThuVIen.Forms
{
    public partial class SendCode : Form
    {
        string randomCode;
        public static string to;
        public SendCode()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DataNguoiDung data = new DataNguoiDung();
            if (string.IsNullOrWhiteSpace(txtEmail.Text))
            {
                MessageBox.Show("bạn chưa nhập email");

            }
            else
            {
                try
                {
                    data.sosanhEmail(txtEmail.Text);



                    string from, pass, messagebody;
                    Random rand = new Random();
                    randomCode = (rand.Next(999999)).ToString();
                    using (MailMessage message = new MailMessage())
                    {

                        to = (txtEmail.Text).ToString();
                        from = "ktpm.husc.qltv@gmail.com";
                        pass = "phuocdeptrai";
                        messagebody = "mã xác nhận của bạn là: " + randomCode;
                        message.To.Add(to);
                        message.From = new MailAddress(from);
                        message.Body = messagebody;
                        message.Subject = "mã xác thực là";
                        using (SmtpClient smtp = new SmtpClient("smtp.gmail.com"))
                        {
                            smtp.EnableSsl = true;
                            smtp.Port = 587;
                            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                            smtp.Credentials = new NetworkCredential(from, pass);
                            try
                            {
                                smtp.Send(message);
                                MessageBox.Show("mã xác nhận thành công");
                            }
                            catch (Exception ex)
                            {
                                MessageBox.Show(ex.Message);
                            }
                        }
                    }
                }
                catch
                {
                    MessageBox.Show("Bạn Không Có Tài Khoản");

                }

            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (randomCode == (txtVerCode.Text).ToString())
            {
                to = txtEmail.Text;
                ResetPassword rp = new ResetPassword();
                this.Hide();
                rp.Show();
            }
            else
            {
                MessageBox.Show("Sai Mã");
            }
        }

        private void txtEmail_TextChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
