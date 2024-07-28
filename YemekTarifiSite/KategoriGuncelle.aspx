<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriGuncelle.aspx.cs" Inherits="YemekTarifiSite.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            font-size: medium;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Kategori Adı:</strong></td>
            <td>
                <asp:TextBox ID="txtAdi" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Kategori Adedi:</strong></td>
            <td>
                <asp:TextBox ID="txtAdet" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Kategori Ikonu:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnGuncelle" runat="server" OnClick="btnGuncelle_Click" Text="Güncelle" />
            </td>
        </tr>
    </table>
</asp:Content>
