<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumGuncelle.aspx.cs" Inherits="YemekTarifiSite.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
            font-size: large;
            text-align: right;
            width: 167px;
        }
        .auto-style12 {
            height: 26px;
            margin-left: 80px;
        }
        .auto-style14 {
            width: 167px;
            border-radius: 5px;
        }
        .auto-style15 {
            width: 167px;
            border-radius: 5px;
            height: 23px;
        }
        .auto-style16 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style15"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Yorum Ad Soyad:</strong></td>
            <td class="auto-style10">
                <asp:TextBox ID="txtAdSoyad" runat="server" Width="220px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Yorum Mail:</strong></td>
            <td class="auto-style10">
                <asp:TextBox ID="txtMail" runat="server" Width="220px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Yorum İçerik:<br />
                <br />
                <br />
                <br />
                </strong></td>
            <td class="auto-style10">
                <asp:TextBox ID="txtIcerik" runat="server" Height="75px" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Yorum Onay:</strong></td>
            <td class="auto-style10">
                <asp:CheckBox ID="cbOnay" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Yorum Tarih:</strong></td>
            <td class="auto-style10">
                <asp:TextBox ID="txtTarih" runat="server" Enabled="False" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Yemek:</strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="txtYemek" runat="server" Enabled="False" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style12"><strong>
                <asp:Button ID="btnGuncelle" runat="server" CssClass="auto-style14" Height="30px" OnClick="btnGuncelle_Click" Text="Güncelle" Width="91px" OnClientClick="return alert('Güncellendi.');" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
