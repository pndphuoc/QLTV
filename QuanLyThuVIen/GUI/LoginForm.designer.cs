
namespace QuanLyThuVIen.Forms
{
    partial class LoginForm
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
            this.txtUserName = new System.Windows.Forms.TextBox();
            this.txtPassword = new System.Windows.Forms.TextBox();
            this.button_login = new System.Windows.Forms.Button();
            this.label_Forgetpassword = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // txtUserName
            // 
            this.txtUserName.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.txtUserName.Font = new System.Drawing.Font("Century", 12.75F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtUserName.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(101)))), ((int)(((byte)(98)))), ((int)(((byte)(145)))));
            this.txtUserName.Location = new System.Drawing.Point(379, 106);
            this.txtUserName.Margin = new System.Windows.Forms.Padding(4);
            this.txtUserName.Name = "txtUserName";
            this.txtUserName.Size = new System.Drawing.Size(422, 33);
            this.txtUserName.TabIndex = 5;
            this.txtUserName.TextChanged += new System.EventHandler(this.label1_Click);
            this.txtUserName.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtUserName_KeyDown);
            this.txtUserName.MouseDown += new System.Windows.Forms.MouseEventHandler(this.txtUserName_MouseDown);
            // 
            // txtPassword
            // 
            this.txtPassword.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.txtPassword.Font = new System.Drawing.Font("Century", 12.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPassword.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(101)))), ((int)(((byte)(98)))), ((int)(((byte)(145)))));
            this.txtPassword.Location = new System.Drawing.Point(378, 179);
            this.txtPassword.Margin = new System.Windows.Forms.Padding(4);
            this.txtPassword.Name = "txtPassword";
            this.txtPassword.Size = new System.Drawing.Size(319, 33);
            this.txtPassword.TabIndex = 6;
            this.txtPassword.UseSystemPasswordChar = true;
            this.txtPassword.TextChanged += new System.EventHandler(this.txtpassword_TextChanged);
            this.txtPassword.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtPassword_KeyDown);
            // 
            // button_login
            // 
            this.button_login.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.button_login.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(143)))), ((int)(((byte)(217)))), ((int)(((byte)(209)))));
            this.button_login.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button_login.ForeColor = System.Drawing.SystemColors.ControlDarkDark;
            this.button_login.Location = new System.Drawing.Point(378, 239);
            this.button_login.Margin = new System.Windows.Forms.Padding(4);
            this.button_login.Name = "button_login";
            this.button_login.Size = new System.Drawing.Size(229, 55);
            this.button_login.TabIndex = 7;
            this.button_login.Text = "Đăng Nhập";
            this.button_login.UseVisualStyleBackColor = false;
            this.button_login.Click += new System.EventHandler(this.button1_Click);
            // 
            // label_Forgetpassword
            // 
            this.label_Forgetpassword.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label_Forgetpassword.AutoSize = true;
            this.label_Forgetpassword.Cursor = System.Windows.Forms.Cursors.Hand;
            this.label_Forgetpassword.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_Forgetpassword.ForeColor = System.Drawing.SystemColors.ControlDarkDark;
            this.label_Forgetpassword.Location = new System.Drawing.Point(413, 298);
            this.label_Forgetpassword.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label_Forgetpassword.Name = "label_Forgetpassword";
            this.label_Forgetpassword.Size = new System.Drawing.Size(157, 25);
            this.label_Forgetpassword.TabIndex = 8;
            this.label_Forgetpassword.Text = "Quên mật khẩu?";
            this.label_Forgetpassword.Click += new System.EventHandler(this.label2_Click_1);
            // 
            // label1
            // 
            this.label1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(128, 108);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(224, 26);
            this.label1.TabIndex = 9;
            this.label1.Text = "Email/Tên đăng nhập:";
            // 
            // label2
            // 
            this.label2.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(245, 186);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(107, 26);
            this.label2.TabIndex = 10;
            this.label2.Text = "Mật khẩu:";
            // 
            // LoginForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(966, 397);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.label_Forgetpassword);
            this.Controls.Add(this.button_login);
            this.Controls.Add(this.txtPassword);
            this.Controls.Add(this.txtUserName);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "LoginForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "LoginForm";
            this.Load += new System.EventHandler(this.LoginForm_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.TextBox txtUserName;
        private System.Windows.Forms.TextBox txtPassword;
        private System.Windows.Forms.Button button_login;
        private System.Windows.Forms.Label label_Forgetpassword;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
    }
}