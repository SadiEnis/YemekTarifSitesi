<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="YemekTarifiSite.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style8">
            <tr>
                <td colspan="2"><strong>MESAJ GÖNDER</strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Ad Soyad:</strong></td>
                <td>
                    <asp:TextBox ID="txtAdSoyad" runat="server" CssClass="tb" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Mail:</strong></td>
                <td>
                    <asp:TextBox ID="txtMail" runat="server" CssClass="tb" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Başlık:</strong></td>
                <td>
                    <asp:TextBox ID="txtBaslik" runat="server" CssClass="tb" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Mesaj:<br />
                    <br />
                    <br />
                    <br />
                    </strong>
                </td>
                <td>
                    <asp:TextBox ID="txtMesaj" runat="server" CssClass="tb" Height="80px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnGonder" runat="server" Text="Mesaj Gönder" Height="30px" OnClick="btnGonder_Click" Width="120px" />
                </td>
            </tr>
        </table>
</asp:Content>
