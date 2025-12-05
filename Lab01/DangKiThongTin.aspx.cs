using System;
using System.Collections.Generic;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DangKiThongTin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                KhoiTaoCBO();
                KhoiTaoListBox();
                KhoiTaoChkList();
            }

        }

        private void KhoiTaoChkList()
        {
            cblSoThich.Items.Add("Du Lịch");
            cblSoThich.Items.Add("Âm Nhạc");
            cblSoThich.Items.Add("Thể Thao");
            cblSoThich.Items.Add("Xem Phim");
            cblSoThich.Items.Add("Ăn Uống");

        }

        private void KhoiTaoListBox()
        {
            lstNN.Items.Add("Sinh Viên");
            lstNN.Items.Add("Giáo Viên");
            lstNN.Items.Add("Lập Trình Viên");
            lstNN.Items.Add("Quản Lý");
            lstNN.Items.Add("Khác");
        }

        private void KhoiTaoCBO()
        {
            ddlTrinhDo.Items.Add("Trung Cấp");
            ddlTrinhDo.Items.Add("Cao Đẳng");
            ddlTrinhDo.Items.Add("Đại Học");
            ddlTrinhDo.Items.Add("Sau Đại Học");
        }

        protected void btnGui_Click(object sender, EventArgs e)
        {
            List<string> soThich = new List<string>();
            foreach (ListItem item in cblSoThich.Items)
            {
                if (item.Selected)
                {
                    soThich.Add(item.Text);
                }
            }
            string avatarURL = "";
            if (Hinh.HasFile)
            {
                string folder = Server.MapPath("~/Uploads/");
                string fileName = Path.GetFileName(Hinh.FileName);
                string path = Path.Combine(folder, fileName);
                Hinh.SaveAs(path);
                avatarURL = "Uploads/" + fileName;
            }
            string kq = "<ul>";

            kq += $"<li><b>Họ Tên:</b> {txtHoTen.Text}</li>";
            kq += $"<li><b>Giới Tính:</b> {(rblGioiTinh.SelectedIndex == 0 ? "Nam" : "Nữ")}</li>";
            kq += $"<li><b>Trình Độ:</b> {ddlTrinhDo.SelectedValue}</li>";
            kq += $"<li><b>Nghề Nghiệp:</b> {lstNN.SelectedValue}</li>";

            kq += !string.IsNullOrEmpty(avatarURL)
            ? $"<li><b>Ảnh:</b><img src='{avatarURL}' style='display:flex; align-items:center; gap:10px;' width='100' height='100'/></li>"
            : "<li><b>Ảnh:</b> Không có ảnh</li>";

            kq += $"<li><b>Sở Thích:</b> {string.Join(", ", soThich)}</li>";

            kq += "</ul>";

            lblKQ.Text = kq;
        }

        protected void btnLai_Click(object sender, EventArgs e)
        {
            foreach (ListItem item in cblSoThich.Items)
            {
                item.Selected = false;
            }
            foreach (Control c in form1.Controls)
            {
                if (c is TextBox)
                {
                    ((TextBox)c).Text = "";
                }
                else if (c is RadioButtonList)
                {
                    ((RadioButtonList)c).SelectedIndex = -1;
                }
                else if (c is DropDownList)
                {
                    ((DropDownList)c).SelectedIndex = -1;
                }
                else if (c is ListBox)
                {
                    ((ListBox)c).SelectedIndex = -1;
                }
            }

        }
    }
}