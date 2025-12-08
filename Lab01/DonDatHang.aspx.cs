using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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
            string tenBanh = ddlBanh.SelectedItem.Text;
            int soLuong = int.Parse(txtSoLuong.Text);

            bool daTonTai = false;

            for (int i = 0; i < lstBanhDat.Items.Count; i++)
            {
                string itemStr = lstBanhDat.Items[i].Text;

                string tenBanhcu = itemStr.Split('(')[0].Trim();

                if (tenBanhcu == tenBanh)
                {
                    string slStr = itemStr.Split(new[] { '(', ')' })[1].Trim();
                    int slHienTai = int.Parse(slStr);

                    slHienTai += soLuong;
                    lstBanhDat.Items[i].Text = $"{tenBanh} ( {slHienTai} )";

                    daTonTai = true;
                    break;
                }
            }
            if (!daTonTai)
            {
                lstBanhDat.Items.Add($"{tenBanh} ( {soLuong} )");
            }

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