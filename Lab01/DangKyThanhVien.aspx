<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThanhVien.aspx.cs" Inherits="Lab01.DangKyThanhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1{
            width: 800px;
             margin: 20px auto;  
        }
         .auto-style5 {
            text-align: left;
            width: 417px;
        }
         .auto-style7 {
            height: 30px;
            text-align: left;
            width: 708px;
        }
         .auto-style9 {
            text-align: center;
        }
         .auto-style11 {
            text-align: left;
            width: 417px;
            height: 30px;
        }
        .auto-style12 {
            height: 40px;
        }
        .auto-style13 {
            text-wrap:balance;
            color:blue;
        }
        .auto-style16 {
            text-align: left;
            width: 708px;
        }
        </style>
</head>
<body>
    <form id="form" runat="server">
        <div align="center" >
            <table cellpadding="3" cellspacing="3" class="auto-style1" style="border:medium inset #000000; padding: 4px; margin: 4px; overflow: hidden; clip: rect(7px, 9px, auto, auto); table-layout: fixed; border-spacing: inherit; border-collapse: collapse;" border="1">
                <tr>
                    <td colspan="4" style="text-align:center;  color:red">
                        <h2>HỒ SƠ ĐĂNG KÝ</h2>
                    </td>
                </tr>
                 <tr>
                    <td colspan="2" style="text-align:center; background-color:pink; color:white" class="auto-style12">
                     <h4>THÔNG TIN CÁ NHÂN</h4>
                     </td>
                     <td colspan="2" style="text-align:center; background-color:pink; color:white" class="auto-style12">
                      <h4>HỒ SƠ KHÁCH HÀNG</h4>
                      </td>
                 </tr>
                <tr>
                   <td class="auto-style5">Tên đăng nhập:</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="txtusername" placeholder="duykhanh_123" runat="server" style="width:80%; text-align: left;" MaxLength="16"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTendn" runat="server" ControlToValidate="txtusername" Display="Dynamic" ErrorMessage="Tên đăng nhập không được rỗng" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revTendn" runat="server" ErrorMessage="Tên đăng nhập không hợp lệ" ForeColor="Red" ControlToValidate="txtusername" ValidationExpression="[\d\w|!|&|_|]{8}[\d\w|!|&|_]+">*</asp:RegularExpressionValidator>
                    </td>
                    <td style="border:none;">
                        <asp:Label ID="lblThongTin" CssClass="auto-style13" runat="server" Text=""></asp:Label>
                        <asp:ValidationSummary ID="vsLoi" runat="server" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Mật khẩu:</td>
                 <td class="auto-style7">
                     <asp:TextBox ID="txtpassword"  placeholder="" runat="server" style="width:80%; text-align: left;" TextMode="Password" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rvfMatKhau" runat="server" ControlToValidate="txtpassword" Display="Dynamic" ErrorMessage="Mật khẩu không được rỗng" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                 </td>
                </tr>
                <tr>
                <td class="auto-style11">Nhập lại mật khẩu:</td>
                 <td class="auto-style7">
                     <asp:TextBox ID="txtpassword2"  placeholder="" runat="server" style="width:80%; text-align: left;" TextMode="Password" ></asp:TextBox>
                     <asp:CompareValidator ID="cvNhapLaiMK" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtpassword2" Display="Dynamic" ErrorMessage="Mật khẩu nhập lại không đúng" ForeColor="Red">*</asp:CompareValidator>
                 </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center; background-color:pink; color:white">
                    <h4>THÔNG TIN CÁ NHÂN</h4>
                    </td>
                </tr>
                <tr>
                   <td class="auto-style11">Họ tên khách hàng</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtHoTen" placeholder="Nguyễn Văn A" runat="server" style="width:80%; text-align: left;" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvHoTen" runat="server" ControlToValidate="txtHoTen" Display="Dynamic" ErrorMessage="Họ tên không được rỗng" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
                    

                </tr>
                <tr>
                   <td class="auto-style11">Ngày sinh:</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddlNgay" runat="server" Width="50px">
                        </asp:DropDownList>
                        /
                        <asp:DropDownList ID="ddlThang" runat="server" Width="50px">
                        </asp:DropDownList>
                        /
                        <asp:DropDownList ID="ddlNam" runat="server" Width="60px">
                        </asp:DropDownList>
                        
                        <asp:RequiredFieldValidator ID="rfvNgay" runat="server" ControlToValidate="ddlNgay" Display="Dynamic" ErrorMessage="Chưa chọn ngày" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="rfvThang" runat="server" ControlToValidate="ddlThang" Display="Dynamic" ErrorMessage="Chưa chọn tháng" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="rfvNam" runat="server" ControlToValidate="ddlNam" Display="Dynamic" ErrorMessage="Chưa chọn năm" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Email:</td>
                     <td class="auto-style7">
                         <asp:TextBox ID="txtEmail" placeholder="duykhanh@gamil.com" runat="server" style="width:80%; text-align: left;" TextMode="Email" ></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revTendn0" runat="server" ErrorMessage="Email không hợp lệ" ForeColor="Red" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                     </td>
                </tr>
                <tr class="auto-style9">
                    <td class="auto-style11">Thu nhập:</td>
                     <td class="auto-style7">
                         <asp:TextBox ID="txtThuNhap" runat="server" style="width:80%; text-align: left;" TextMode="Number" ></asp:TextBox>
                         <asp:RangeValidator ID="rvThuNhap" runat="server" ControlToValidate="txtThuNhap" Display="Dynamic" ErrorMessage="Thu nhập từ 1tr-50tr" ForeColor="Red" MaximumValue="50000000" MinimumValue="1000000">*</asp:RangeValidator>
                     </td>
                </tr>
                <tr class="auto-style9">
                <td class="auto-style11">Giới Tính</td>
                <td class="auto-style7">
                    <asp:RadioButtonList ID="rblGioiTinh" runat="server">
                        <asp:ListItem Selected="True">Nam</asp:ListItem>
                        <asp:ListItem>Nữ</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                </tr>
                <tr class="auto-style9">
                    <td class="auto-style11">Địa chỉ:</td>
                     <td class="auto-style7">
                         <asp:TextBox ID="txtDiaChi" runat="server" style="width:80%; text-align: left;" TextMode="MultiLine" ></asp:TextBox>
                     </td>
                </tr>
                <tr class="auto-style9">
                <td class="auto-style11">Điện Thoại:</td>
                 <td class="auto-style7">
                     <asp:TextBox ID="txtSDT" runat="server" style="width:80%; text-align: left;" TextMode="Number" ></asp:TextBox>
                 </td>
                 </tr>
                 <tr class="auto-style9">
                    <td colspan="2">
                        <asp:Button ID="btnDangKy" runat="server" Text="Đăng Ký" BorderColor="#3366FF" BorderStyle="Outset" OnClick="btnDangKy_Click" />
                    </td>
                 </tr>
               
            </table>
        </div>
    </form>
</body>
</html>
