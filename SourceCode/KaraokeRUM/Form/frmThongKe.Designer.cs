﻿
namespace KaraokeRUM
{
    partial class frmThongKe
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
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea1 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend1 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series1 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Title title1 = new System.Windows.Forms.DataVisualization.Charting.Title();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmThongKe));
            this.label11 = new System.Windows.Forms.Label();
            this.errorProvider1 = new System.Windows.Forms.ErrorProvider(this.components);
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.lstvDSHoaDon = new System.Windows.Forms.ListView();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.cboNam = new System.Windows.Forms.ComboBox();
            this.cboThang = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnXuatExcel = new System.Windows.Forms.Button();
            this.btnTKDoanhThu = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.rdoHomNay = new System.Windows.Forms.RadioButton();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.txtSMH = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtTDT = new System.Windows.Forms.TextBox();
            this.btnTraCuu = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.txtSKH = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.chrThongKeDoanhThu = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider1)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chrThongKeDoanhThu)).BeginInit();
            this.groupBox4.SuspendLayout();
            this.SuspendLayout();
            // 
            // label11
            // 
            this.label11.BackColor = System.Drawing.Color.Teal;
            this.label11.Dock = System.Windows.Forms.DockStyle.Top;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 16F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.ForeColor = System.Drawing.SystemColors.Window;
            this.label11.Location = new System.Drawing.Point(0, 0);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(1649, 50);
            this.label11.TabIndex = 3;
            this.label11.Text = "Thống kê";
            this.label11.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // errorProvider1
            // 
            this.errorProvider1.ContainerControl = this;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.lstvDSHoaDon);
            this.groupBox1.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(24, 92);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.groupBox1.Size = new System.Drawing.Size(817, 312);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Danh sách hóa đơn";
            // 
            // lstvDSHoaDon
            // 
            this.lstvDSHoaDon.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lstvDSHoaDon.HideSelection = false;
            this.lstvDSHoaDon.Location = new System.Drawing.Point(5, 32);
            this.lstvDSHoaDon.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.lstvDSHoaDon.Name = "lstvDSHoaDon";
            this.lstvDSHoaDon.Size = new System.Drawing.Size(805, 264);
            this.lstvDSHoaDon.TabIndex = 0;
            this.lstvDSHoaDon.UseCompatibleStateImageBehavior = false;
            this.lstvDSHoaDon.DoubleClick += new System.EventHandler(this.lstvDSHoaDon_DoubleClick);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.cboNam);
            this.groupBox2.Controls.Add(this.cboThang);
            this.groupBox2.Controls.Add(this.label1);
            this.groupBox2.Controls.Add(this.btnXuatExcel);
            this.groupBox2.Controls.Add(this.btnTKDoanhThu);
            this.groupBox2.Controls.Add(this.label2);
            this.groupBox2.Controls.Add(this.rdoHomNay);
            this.groupBox2.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(29, 423);
            this.groupBox2.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.groupBox2.Size = new System.Drawing.Size(345, 215);
            this.groupBox2.TabIndex = 1;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Lựa chọn";
            // 
            // cboNam
            // 
            this.cboNam.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboNam.FormattingEnabled = true;
            this.cboNam.Location = new System.Drawing.Point(108, 114);
            this.cboNam.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cboNam.Name = "cboNam";
            this.cboNam.Size = new System.Drawing.Size(195, 30);
            this.cboNam.TabIndex = 2;
            this.cboNam.SelectedIndexChanged += new System.EventHandler(this.cboNam_SelectedIndexChanged);
            // 
            // cboThang
            // 
            this.cboThang.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboThang.FormattingEnabled = true;
            this.cboThang.Location = new System.Drawing.Point(108, 71);
            this.cboThang.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cboThang.Name = "cboThang";
            this.cboThang.Size = new System.Drawing.Size(195, 30);
            this.cboThang.TabIndex = 1;
            this.cboThang.SelectedIndexChanged += new System.EventHandler(this.cboThang_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(32, 118);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 22);
            this.label1.TabIndex = 1;
            this.label1.Text = "Năm:";
            // 
            // btnXuatExcel
            // 
            this.btnXuatExcel.BackColor = System.Drawing.Color.Teal;
            this.btnXuatExcel.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXuatExcel.ForeColor = System.Drawing.Color.White;
            this.btnXuatExcel.Location = new System.Drawing.Point(181, 165);
            this.btnXuatExcel.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnXuatExcel.Name = "btnXuatExcel";
            this.btnXuatExcel.Size = new System.Drawing.Size(122, 39);
            this.btnXuatExcel.TabIndex = 3;
            this.btnXuatExcel.Text = "Xuất Excel";
            this.btnXuatExcel.UseVisualStyleBackColor = false;
            this.btnXuatExcel.Click += new System.EventHandler(this.btnXuatExcel_Click);
            // 
            // btnTKDoanhThu
            // 
            this.btnTKDoanhThu.BackColor = System.Drawing.Color.Teal;
            this.btnTKDoanhThu.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTKDoanhThu.ForeColor = System.Drawing.Color.White;
            this.btnTKDoanhThu.Location = new System.Drawing.Point(36, 165);
            this.btnTKDoanhThu.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnTKDoanhThu.Name = "btnTKDoanhThu";
            this.btnTKDoanhThu.Size = new System.Drawing.Size(122, 39);
            this.btnTKDoanhThu.TabIndex = 3;
            this.btnTKDoanhThu.Text = "Thống kê";
            this.btnTKDoanhThu.UseVisualStyleBackColor = false;
            this.btnTKDoanhThu.Click += new System.EventHandler(this.btnTKDoanhThu_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(32, 75);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(64, 22);
            this.label2.TabIndex = 1;
            this.label2.Text = "Tháng:";
            // 
            // rdoHomNay
            // 
            this.rdoHomNay.AutoSize = true;
            this.rdoHomNay.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rdoHomNay.Location = new System.Drawing.Point(36, 30);
            this.rdoHomNay.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.rdoHomNay.Name = "rdoHomNay";
            this.rdoHomNay.Size = new System.Drawing.Size(101, 26);
            this.rdoHomNay.TabIndex = 0;
            this.rdoHomNay.TabStop = true;
            this.rdoHomNay.Text = "Hôm nay";
            this.rdoHomNay.UseVisualStyleBackColor = true;
            this.rdoHomNay.CheckedChanged += new System.EventHandler(this.rdoHomNay_CheckedChanged);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.txtSMH);
            this.groupBox3.Controls.Add(this.label5);
            this.groupBox3.Controls.Add(this.txtTDT);
            this.groupBox3.Controls.Add(this.btnTraCuu);
            this.groupBox3.Controls.Add(this.label4);
            this.groupBox3.Controls.Add(this.txtSKH);
            this.groupBox3.Controls.Add(this.label3);
            this.groupBox3.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox3.Location = new System.Drawing.Point(451, 423);
            this.groupBox3.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.groupBox3.Size = new System.Drawing.Size(390, 215);
            this.groupBox3.TabIndex = 2;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Thông tin";
            // 
            // txtSMH
            // 
            this.txtSMH.Enabled = false;
            this.txtSMH.Location = new System.Drawing.Point(184, 79);
            this.txtSMH.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtSMH.Name = "txtSMH";
            this.txtSMH.Size = new System.Drawing.Size(186, 30);
            this.txtSMH.TabIndex = 1;
            this.txtSMH.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(16, 79);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(162, 22);
            this.label5.TabIndex = 2;
            this.label5.Text = "Số lượng mặt hàng:";
            // 
            // txtTDT
            // 
            this.txtTDT.Enabled = false;
            this.txtTDT.Location = new System.Drawing.Point(184, 122);
            this.txtTDT.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtTDT.Name = "txtTDT";
            this.txtTDT.Size = new System.Drawing.Size(186, 30);
            this.txtTDT.TabIndex = 2;
            this.txtTDT.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // btnTraCuu
            // 
            this.btnTraCuu.BackColor = System.Drawing.Color.Teal;
            this.btnTraCuu.ForeColor = System.Drawing.Color.White;
            this.btnTraCuu.Location = new System.Drawing.Point(184, 165);
            this.btnTraCuu.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnTraCuu.Name = "btnTraCuu";
            this.btnTraCuu.Size = new System.Drawing.Size(186, 39);
            this.btnTraCuu.TabIndex = 3;
            this.btnTraCuu.Text = "Tra cứu";
            this.btnTraCuu.UseVisualStyleBackColor = false;
            this.btnTraCuu.Click += new System.EventHandler(this.btnTraCuu_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(16, 122);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(136, 22);
            this.label4.TabIndex = 2;
            this.label4.Text = "Tổng doanh thu:";
            // 
            // txtSKH
            // 
            this.txtSKH.Enabled = false;
            this.txtSKH.Location = new System.Drawing.Point(184, 34);
            this.txtSKH.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtSKH.Name = "txtSKH";
            this.txtSKH.Size = new System.Drawing.Size(186, 30);
            this.txtSKH.TabIndex = 0;
            this.txtSKH.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(16, 34);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(128, 22);
            this.label3.TabIndex = 2;
            this.label3.Text = "Số khách hàng:";
            // 
            // chrThongKeDoanhThu
            // 
            chartArea1.Name = "ChartArea1";
            this.chrThongKeDoanhThu.ChartAreas.Add(chartArea1);
            this.chrThongKeDoanhThu.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            legend1.Name = "Legend1";
            this.chrThongKeDoanhThu.Legends.Add(legend1);
            this.chrThongKeDoanhThu.Location = new System.Drawing.Point(7, 22);
            this.chrThongKeDoanhThu.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.chrThongKeDoanhThu.Name = "chrThongKeDoanhThu";
            series1.ChartArea = "ChartArea1";
            series1.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Doughnut;
            series1.Legend = "Legend1";
            series1.Name = "MatHang";
            this.chrThongKeDoanhThu.Series.Add(series1);
            this.chrThongKeDoanhThu.Size = new System.Drawing.Size(725, 497);
            this.chrThongKeDoanhThu.TabIndex = 0;
            this.chrThongKeDoanhThu.Text = "Chart";
            title1.Name = "chart";
            title1.Text = "Thống kê mặt hàng bán được";
            this.chrThongKeDoanhThu.Titles.Add(title1);
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.chrThongKeDoanhThu);
            this.groupBox4.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.groupBox4.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox4.Location = new System.Drawing.Point(885, 96);
            this.groupBox4.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox4.Size = new System.Drawing.Size(739, 543);
            this.groupBox4.TabIndex = 3;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Biểu đồ thống kê mặt hàng";
            // 
            // frmThongKe
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1649, 650);
            this.Controls.Add(this.groupBox4);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label11);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Name = "frmThongKe";
            this.Text = "Form9";
            this.Load += new System.EventHandler(this.frmThongKe_Load);
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider1)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chrThongKeDoanhThu)).EndInit();
            this.groupBox4.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.ErrorProvider errorProvider1;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.RadioButton rdoHomNay;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ListView lstvDSHoaDon;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnTKDoanhThu;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataVisualization.Charting.Chart chrThongKeDoanhThu;
        private System.Windows.Forms.TextBox txtSMH;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtTDT;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtSKH;
        private System.Windows.Forms.ComboBox cboNam;
        private System.Windows.Forms.ComboBox cboThang;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.Button btnXuatExcel;
        private System.Windows.Forms.Button btnTraCuu;
    }
}