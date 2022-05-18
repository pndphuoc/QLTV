
namespace QuanLyThuVIen.GUI
{
    partial class FormQuanLyNguoiDung
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.label1 = new System.Windows.Forms.Label();
            this.comboBox_GioiTinh = new System.Windows.Forms.ComboBox();
            this.comboBox_NamSinh = new System.Windows.Forms.ComboBox();
            this.comboBox_ChucVu = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.dataGridView_QuanLy = new System.Windows.Forms.DataGridView();
            this.ColMaNguoiDung = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.HoTen = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NgaySinh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.GioiTinh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SoDienThoai = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Email = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.MaChucVu = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.UserName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Password = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.GioiTinhhienthi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.button1 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.textBox_TimKiem = new System.Windows.Forms.TextBox();
            this.button2 = new System.Windows.Forms.Button();
            this.bs_QuanLy = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView_QuanLy)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bs_QuanLy)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(71, 60);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(297, 32);
            this.label1.TabIndex = 0;
            this.label1.Text = "Quản Lý Người Dùng";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // comboBox_GioiTinh
            // 
            this.comboBox_GioiTinh.FormattingEnabled = true;
            this.comboBox_GioiTinh.Items.AddRange(new object[] {
            "Giới Tính",
            "Nam",
            "Nữ"});
            this.comboBox_GioiTinh.Location = new System.Drawing.Point(100, 120);
            this.comboBox_GioiTinh.Name = "comboBox_GioiTinh";
            this.comboBox_GioiTinh.Size = new System.Drawing.Size(110, 24);
            this.comboBox_GioiTinh.TabIndex = 1;
            this.comboBox_GioiTinh.Text = "Giới Tính";
            this.comboBox_GioiTinh.SelectedIndexChanged += new System.EventHandler(this.comboBox_GioiTinh_SelectedIndexChanged);
            // 
            // comboBox_NamSinh
            // 
            this.comboBox_NamSinh.FormattingEnabled = true;
            this.comboBox_NamSinh.Location = new System.Drawing.Point(506, 120);
            this.comboBox_NamSinh.Name = "comboBox_NamSinh";
            this.comboBox_NamSinh.Size = new System.Drawing.Size(110, 24);
            this.comboBox_NamSinh.TabIndex = 2;
            this.comboBox_NamSinh.Text = "Năm Sinh";
            this.comboBox_NamSinh.SelectedIndexChanged += new System.EventHandler(this.comboBox_NamSinh_SelectedIndexChanged);
            // 
            // comboBox_ChucVu
            // 
            this.comboBox_ChucVu.FormattingEnabled = true;
            this.comboBox_ChucVu.Items.AddRange(new object[] {
            "Chức Vụ"});
            this.comboBox_ChucVu.Location = new System.Drawing.Point(301, 120);
            this.comboBox_ChucVu.Name = "comboBox_ChucVu";
            this.comboBox_ChucVu.Size = new System.Drawing.Size(110, 24);
            this.comboBox_ChucVu.TabIndex = 3;
            this.comboBox_ChucVu.Text = "Chức Vụ";
            this.comboBox_ChucVu.SelectedIndexChanged += new System.EventHandler(this.comboBox_ChucVu_SelectedIndexChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(29, 127);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(65, 17);
            this.label2.TabIndex = 4;
            this.label2.Text = "Giới Tính";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(230, 127);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(61, 17);
            this.label3.TabIndex = 5;
            this.label3.Text = "Chức Vụ";
            this.label3.Click += new System.EventHandler(this.label3_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(435, 127);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(69, 17);
            this.label4.TabIndex = 6;
            this.label4.Text = "Năm Sinh";
            this.label4.Click += new System.EventHandler(this.label4_Click);
            // 
            // dataGridView_QuanLy
            // 
            this.dataGridView_QuanLy.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView_QuanLy.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ColMaNguoiDung,
            this.HoTen,
            this.NgaySinh,
            this.GioiTinh,
            this.SoDienThoai,
            this.Email,
            this.MaChucVu,
            this.UserName,
            this.Password,
            this.GioiTinhhienthi});
            this.dataGridView_QuanLy.Location = new System.Drawing.Point(15, 164);
            this.dataGridView_QuanLy.Name = "dataGridView_QuanLy";
            this.dataGridView_QuanLy.RowHeadersWidth = 51;
            this.dataGridView_QuanLy.RowTemplate.Height = 24;
            this.dataGridView_QuanLy.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.dataGridView_QuanLy.Size = new System.Drawing.Size(1114, 330);
            this.dataGridView_QuanLy.TabIndex = 7;
            this.dataGridView_QuanLy.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView_QuanLy_CellContentClick);
            // 
            // ColMaNguoiDung
            // 
            this.ColMaNguoiDung.DataPropertyName = "MaNguoiDung";
            this.ColMaNguoiDung.HeaderText = "Mã Người Dùng";
            this.ColMaNguoiDung.MinimumWidth = 6;
            this.ColMaNguoiDung.Name = "ColMaNguoiDung";
            this.ColMaNguoiDung.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.ColMaNguoiDung.Visible = false;
            this.ColMaNguoiDung.Width = 125;
            // 
            // HoTen
            // 
            this.HoTen.DataPropertyName = "HoTen";
            this.HoTen.HeaderText = "Họ Tên";
            this.HoTen.MinimumWidth = 6;
            this.HoTen.Name = "HoTen";
            this.HoTen.Width = 125;
            // 
            // NgaySinh
            // 
            this.NgaySinh.DataPropertyName = "NgaySinh";
            this.NgaySinh.HeaderText = "Ngày Sinh";
            this.NgaySinh.MinimumWidth = 6;
            this.NgaySinh.Name = "NgaySinh";
            this.NgaySinh.Width = 125;
            // 
            // GioiTinh
            // 
            this.GioiTinh.DataPropertyName = "GioiTinh";
            this.GioiTinh.HeaderText = "Giới Tính";
            this.GioiTinh.MinimumWidth = 6;
            this.GioiTinh.Name = "GioiTinh";
            this.GioiTinh.Visible = false;
            this.GioiTinh.Width = 125;
            // 
            // SoDienThoai
            // 
            this.SoDienThoai.DataPropertyName = "SoDienThoai";
            this.SoDienThoai.HeaderText = "Số Điện Thoại";
            this.SoDienThoai.MinimumWidth = 6;
            this.SoDienThoai.Name = "SoDienThoai";
            this.SoDienThoai.Width = 125;
            // 
            // Email
            // 
            this.Email.DataPropertyName = "Email";
            this.Email.HeaderText = "Email";
            this.Email.MinimumWidth = 6;
            this.Email.Name = "Email";
            this.Email.Visible = false;
            this.Email.Width = 125;
            // 
            // MaChucVu
            // 
            this.MaChucVu.DataPropertyName = "MaChucVu";
            this.MaChucVu.HeaderText = "MaChucVu";
            this.MaChucVu.MinimumWidth = 6;
            this.MaChucVu.Name = "MaChucVu";
            this.MaChucVu.Visible = false;
            this.MaChucVu.Width = 125;
            // 
            // UserName
            // 
            this.UserName.DataPropertyName = "UserName";
            this.UserName.HeaderText = "UserName";
            this.UserName.MinimumWidth = 6;
            this.UserName.Name = "UserName";
            this.UserName.Visible = false;
            this.UserName.Width = 125;
            // 
            // Password
            // 
            this.Password.DataPropertyName = "Password";
            this.Password.HeaderText = "Password";
            this.Password.MinimumWidth = 6;
            this.Password.Name = "Password";
            this.Password.Visible = false;
            this.Password.Width = 125;
            // 
            // GioiTinhhienthi
            // 
            this.GioiTinhhienthi.DataPropertyName = "GetGioiTinh";
            this.GioiTinhhienthi.HeaderText = "Giới Tính";
            this.GioiTinhhienthi.MinimumWidth = 6;
            this.GioiTinhhienthi.Name = "GioiTinhhienthi";
            this.GioiTinhhienthi.Width = 125;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(15, 518);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(177, 43);
            this.button1.TabIndex = 8;
            this.button1.Text = "Xem thông tin chi tiết";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button3
            // 
            this.button3.Cursor = System.Windows.Forms.Cursors.PanNorth;
            this.button3.Location = new System.Drawing.Point(956, 115);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(173, 35);
            this.button3.TabIndex = 9;
            this.button3.Text = "Refresh";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // textBox_TimKiem
            // 
            this.textBox_TimKiem.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBox_TimKiem.Location = new System.Drawing.Point(639, 122);
            this.textBox_TimKiem.Margin = new System.Windows.Forms.Padding(3, 3, 10, 3);
            this.textBox_TimKiem.Name = "textBox_TimKiem";
            this.textBox_TimKiem.Size = new System.Drawing.Size(311, 22);
            this.textBox_TimKiem.TabIndex = 10;
            this.textBox_TimKiem.TextChanged += new System.EventHandler(this.textBox_TimKiem_TextChanged);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(246, 518);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(219, 43);
            this.button2.TabIndex = 11;
            this.button2.Text = "Thêm";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // FormQuanLyNguoiDung
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1141, 573);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.textBox_TimKiem);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.dataGridView_QuanLy);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.comboBox_ChucVu);
            this.Controls.Add(this.comboBox_NamSinh);
            this.Controls.Add(this.comboBox_GioiTinh);
            this.Controls.Add(this.label1);
            this.Name = "FormQuanLyNguoiDung";
            this.Text = "FormQuanLyNguoiDung";
            this.Load += new System.EventHandler(this.FormQuanLyNguoiDung_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView_QuanLy)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bs_QuanLy)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox comboBox_GioiTinh;
        private System.Windows.Forms.ComboBox comboBox_NamSinh;
        private System.Windows.Forms.ComboBox comboBox_ChucVu;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DataGridView dataGridView_QuanLy;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColMaNguoiDung;
        private System.Windows.Forms.DataGridViewTextBoxColumn HoTen;
        private System.Windows.Forms.DataGridViewTextBoxColumn NgaySinh;
        private System.Windows.Forms.DataGridViewTextBoxColumn GioiTinh;
        private System.Windows.Forms.DataGridViewTextBoxColumn SoDienThoai;
        private System.Windows.Forms.DataGridViewTextBoxColumn Email;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaChucVu;
        private System.Windows.Forms.DataGridViewTextBoxColumn UserName;
        private System.Windows.Forms.DataGridViewTextBoxColumn Password;
        private System.Windows.Forms.DataGridViewTextBoxColumn GioiTinhhienthi;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.TextBox textBox_TimKiem;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.BindingSource bs_QuanLy;
    }
}