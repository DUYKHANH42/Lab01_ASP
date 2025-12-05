<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="Lab01.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 800px;
             margin: 20px auto; 
        }
         .auto-style5 {
          text-align:start;
         }
         .auto-style7 {
             height: 30px;
             text-align: left;
         }
         .auto-style8 {
             height:30px;
             width:40px;
             text-align: center;
             margin: 5px auto;
         }
        .auto-style9 {
            text-align: center;
        }
         .invoice {
        width: 380px;
        border: 2px solid red;
        padding: 15px;
        color: red;
        font-size: 14px;
       margin: 20px auto; 
    }

    .invoice h2 {
        text-align: center;
        margin-top: 0;
        color: red;
    }

    .invoice b {
        color: red;
    }

    .invoice-table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 10px;
       
    }

    .invoice-table td {
        border: 1px solid red;
        padding: 5px;
    }

    .invoice-table td:last-child {
        width: 80px;
        text-align: right;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 806px">
            <table align="center" cellpadding="3" cellspacing="3" class="auto-style1" style="border-style: solid; border-color: #00CC66; padding: 4px; margin: 4px; overflow: hidden; clip: rect(7px, 9px, auto, auto); table-layout: fixed; border-spacing: inherit; align-self:center">
                <tr>
                    <td colspan="2" style="text-align:center; background-color:blue; color:white">
                        <h2><asp:Label runat="server" >ĐƠN ĐẶT HÀNG</asp:Label></h2>
                    </td>
                </tr>
                <tr>
                   <td class="auto-style5">Khách hàng:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtHoTen" placeholder="Trần Thanh Minh" runat="server" style="width:80%; text-align: left;" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Địa chỉ:</td>
                 <td class="auto-style7">
                     <asp:TextBox ID="txtDiaChi" placeholder="" runat="server" style="width:80%; text-align: left;" ></asp:TextBox>
                 </td>
                </tr>
                <tr>
                <td class="auto-style5">Mã số thuế:</td>
                 <td class="auto-style7">
                     <asp:TextBox ID="txtMaSoThue" placeholder="" runat="server" style="width:80%; text-align: left;" ></asp:TextBox>
                 </td>
                </tr>
                <tr>
                    <td >
                        <asp:Label ID="Label1" ForeColor="Green" Font-Bold="true"  runat="server" Text="Chọn các loại bánh sau:" style="text-align: left"></asp:Label>
                        <div class="auto-style9">
                        <br />
                        <asp:DropDownList ID="ddlBanh" Width="55%" style="margin:10px auto;" runat="server">
                        </asp:DropDownList>
                        <br />
                        <asp:Label ID="Label2" runat="server"  Text="Số lượng:"></asp:Label>
                        <asp:TextBox ID="txtSoLuong" placeholder="" runat="server" style="width:30%; text-align: left;" ></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Text="cái"></asp:Label>
                        <br />
                        <asp:Button ID="btnDat" CssClass="auto-style8" runat="server" Text=">" BorderColor="Lime" OnClick="btnDat_Click" />
                            </div>
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="Label4" ForeColor="Green" Font-Bold="true"  runat="server" Text="Chọn các loại bánh sau:"></asp:Label>
                        <br />
                        <asp:ListBox ID="lstBanhDat" Width="55%" runat="server"></asp:ListBox>
                        
                        <asp:ImageButton ID="btnXoa" runat="server" Height="30px" ImageUrl="~/Assets/recycle-bin.png" OnClick="btnXoa_Click" style="width: 30px" />
                        
                    </td>
                </tr>
                <tr class="auto-style9">
                    <td colspan="2">
                        <asp:Button ID="BtnIn" runat="server" Text="In đơn đặt hàng" style="background-color: #00FF00" CssClass="auto-style7" OnClick="BtnIn_Click" />
                    </td>
                </tr>
               
                <tr class="auto-style9">
                    <td colspan="2">
                        <asp:Label ID="lblDonDH" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
               
            </table>
        </div>
    </form>
</body>
</html>
