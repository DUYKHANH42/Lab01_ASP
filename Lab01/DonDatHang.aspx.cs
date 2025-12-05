using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            KhoiTaoDDL();
        }

        private void KhoiTaoDDL()
        {
          ddlBanh.Items.Add("Bánh Mì");
          ddlBanh.Items.Add("Bánh Bao");
          ddlBanh.Items.Add("Bánh Gối");
          ddlBanh.Items.Add("Bánh Chưng");
        }

        protected void btnDat_Click(object sender, EventArgs e)
        {
            lstBanhDat.Items.Add(ddlBanh.SelectedItem.Text+$"({txtSoLuong.Text})");
        }

        protected void btnXoa_Click(object sender, ImageClickEventArgs e)
        {
            for (int i = lstBanhDat.Items.Count - 1; i >= 0; i--)
            {
                if (lstBanhDat.Items[i].Selected)
                {
                    lstBanhDat.Items.RemoveAt(i);
                }
            }
        }

        protected void BtnIn_Click(object sender, EventArgs e)
        {
            string kq = "<div class='invoice'>";
            kq += "<h2>HÓA ĐƠN ĐẶT HÀNG</h2>";

            kq += "<b>Khách hàng:</b> " + txtHoTen.Text + "<br/>";
            kq += "<b>Địa chỉ:</b> " + txtDiaChi.Text + "<br/>";
            kq += "<b>Mã số thuế:</b> " + txtMaSoThue.Text + "<br/><br/>";
                
            kq += "<b>Đặt các loại bánh sau:</b>";

            kq += "<table class='invoice-table'>";

            foreach (ListItem item in lstBanhDat.Items)
            {
                string[] tach = item.Text.Split(new string[] { "()" }, StringSplitOptions.None);
                string ten = item.Text.Split('(')[0].Trim();
                string gia = item.Text.Split('(')[1].Replace(")", "").Trim();
                kq += "<tr>";
                kq += $"<td>{ten}</td>";
                kq += $"<td>{gia}</td>";
                kq += "</tr>";
            }

            kq += "</table>";
            kq += "</div>";

            lblDonDH.Text = kq;
        }
    }
}