<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKiThongTin.aspx.cs" Inherits="Lab01.DangKiThongTin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            border-style: solid;
            border-width: 2px;
            outline-color:blue;
            text-align:center;
            justify-items:center;
            width: 600px;
            
        }
        .auto-style3 {
            height: 30px;
        }
        .auto-style5 {
            text-align:start;
        }
        .auto-style7 {
            height: 30px;
            text-align: left;
        }
        .auto-style8 {
            height:40px;
            width:80px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server"  >
   
            <table cellpadding="11" align="center" class="auto-style1">
                <tr>
                    <td style="color: #FFFFFF; background-color: #0066FF; font-size: large;" colspan="2"> ĐĂNG KÍ THÔNG TIN</td>
                </tr>
                <tr>
                    <td class="auto-style5">Nhập họ tên</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtHoTen" placeholder="Trần Thanh Minh" runat="server" style="width:80%; text-align: left;" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Ngày sinh</td>
                    <td class="auto-style7">
                         <input type="date" id="txtNgaySinh" runat="server" style="width: 80%; text-align: left" />
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style5">Giới Tính</td>
                    <td class="auto-style7">
                        <asp:RadioButtonList ID="rblGioiTinh" runat="server">
                            <asp:ListItem Selected="True">Nam</asp:ListItem>
                            <asp:ListItem>Nữ</asp:ListItem>
                        </asp:RadioButtonList>

                    </td>
                </tr>
                 <tr>
                    <td class="auto-style5" >Trình độ</td>
                    <td class="auto-style7">
                         <asp:DropDownList  style="width:82%" ID="ddlTrinhDo" runat="server">
                         </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                   <td class="auto-style5" >Nghề nghiệp</td>
                    <td class="auto-style7">
                         <asp:ListBox ID="lstNN"  style="width:82%" runat="server"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" >Hình</td>
                    <td class="auto-style7">
                         <asp:FileUpload ID="Hinh"  style="width:82%" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" >Sở thích</td>
                    <td class="auto-style7">
                         <asp:CheckBoxList ID="cblSoThich" style="width:82%"  runat="server">
                         </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" >&nbsp;</td>
                    <td class="auto-style7">
                         <asp:Button CssClass="auto-style8" ID="btnGui" runat="server" BackColor="Green" ForeColor="White" Text="Gửi" OnClick="btnGui_Click" />
                         <asp:Button  CssClass="auto-style8" ID="btnLai" runat="server"  BackColor="Red" ForeColor="White" Text="Làm Lại" OnClick="btnLai_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="color: #FFFFFF; background-color: #0066FF; font-size: large;" colspan="2">KẾT QUẢ ĐĂNG KÍ</td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2" >
                        <asp:Label ID="lblKQ" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                </table>
       
    </form>
</body>
</html>
