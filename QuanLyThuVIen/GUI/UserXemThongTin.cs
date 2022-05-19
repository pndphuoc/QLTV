using QuanLyThuVIen.Data;
using QuanLyThuVIen.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyThuVIen.GUI
{
    public partial class UserXemThongTin : Form
    {
        private int MaDocGia;
        public UserXemThongTin()
        {
            InitializeComponent();
        }
        public UserXemThongTin(int MaDocGia)
        {
            InitializeComponent();
            this.MaDocGia = MaDocGia;
            var DataDG = new DataDocGia();
            DocGia DG = DataDG.GetDocGia(this.MaDocGia);
            label13.Text = DG.MaDocGia.ToString();
            label14.Text = DG.TenDocGia;
            label15.Text = DG.NgaySinh.ToString();
            label16.Text = DG.Email;
            label17.Text = DG.DiaChi;
            label18.Text = DG.SoDienThoai;
            label19.Text = DG.NgayDangKy.ToString();
            label20.Text = DG.NgayHetHan.ToString();
            label21.Text = DG.Lop;
            var DataKhoa = new DataKhoa();
            foreach(var K in DataKhoa.GetListKhoa())
            {
                if (K.MaKhoa == DG.MaKhoa)
                {
                    label22.Text = K.TenKhoa.ToString();
                }
            }
            
            if (DG.GioiTinh)
            {
                label23.Text = "Nữ";
            }
            else
            {
                label23.Text = "Nam";
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void bttMuonTra_Click(object sender, EventArgs e)
        {
            var frm = new UserLichSuMuonTra(MaDocGia);
            frm.StartPosition = FormStartPosition.CenterParent;
            if (frm.ShowDialog() == DialogResult.OK)
            {
                
            }
        }
    }
 }

