using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DangKyThanhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                KhoiTaoCBO();
            }
        }

        private void KhoiTaoCBO()
        {
           ddlNgay.Items.Add(new ListItem("Chọn Ngày", ""));
            for (int i = 1; i < 31; i++)
            {
                ddlNgay.Items.Add(new ListItem((i).ToString(), (i).ToString()));
            }
            ddlThang.Items.Add(new ListItem("Chọn Tháng", ""));
            for(int i = 1; i <= 12; i++)
            {
                ddlThang.Items.Add(new ListItem((i).ToString(), (i).ToString()));
            }
            ddlNam.Items.Add(new ListItem("Chọn Năm", ""));
            for(int i = 1970; i <= 2024; i++)
            {
                ddlNam.Items.Add(new ListItem((i).ToString(), (i).ToString()));
            }
        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            
            string kq = "<ul>";
            kq += $"<li>Họ tên khách hàng: <i>{txtHoTen.Text}</i>";
            kq += $"<li>Tên đăng nhập: <i>{txtusername.Text}</i>";
            kq += $"<li>Mật khẩu: <i>{txtpassword.Text}</i>";
            kq += $"<li>Ngày sinh: <i>{ddlNgay.SelectedValue}/{ddlThang.SelectedValue}/{ddlNam.SelectedValue} </i>";
            kq += $"<li>Giới tính: <i>{rblGioiTinh.SelectedValue}</i>";
            kq += $"<li>Email: <i>{txtEmail.Text}</i>";
            kq += $"<li>Địa chỉ: <i>{txtDiaChi.Text}</i>";
            kq += $"<li>Điện thoại: <i>{txtSDT.Text}</i>";
            kq += "</ul>";
            lblThongTin.Text = kq;

        }
    }
}