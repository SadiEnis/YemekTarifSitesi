<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekGuncelle.aspx.cs" Inherits="YemekTarifiSite.YemekGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            width: 295px;
        }
        .auto-style21 {
            font-size: large;
            text-align: right;
            height: 26px;
        }
        .auto-style22 {
            height: 26px;
        }
        .auto-style23 {
            text-align: right;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
                <td class="auto-style23" __designer:mapid="8d"><strong __designer:mapid="8e">Yemek Adı:</strong></td>
                <td __designer:mapid="8f">
                    <asp:TextBox ID="txtYemekAdi" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
        <tr>
                <td class="auto-style21" __designer:mapid="92"><strong __designer:mapid="b0"><span class="auto-style8">Malzemeler:<br />
                    </span>
                    <br __designer:mapid="b6" class="auto-style8" />
                    <br __designer:mapid="be" class="auto-style8" />
                    <br __designer:mapid="b7" class="auto-style8" />
                    </strong></td>
                <td __designer:mapid="94" class="auto-style22">
                    <asp:TextBox ID="txtMalzemeler" runat="server" Width="250px" Height="75px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
        <tr>
                <td class="auto-style23" __designer:mapid="97"><strong __designer:mapid="b1"><span class="auto-style8">Tarifi:<br />
                    <br />
                    <br />
                    </span>
                    <br __designer:mapid="bd" class="auto-style8" />
                    <br __designer:mapid="b8" class="auto-style8" />
                    <br __designer:mapid="b9" class="auto-style8" />
                    <br __designer:mapid="ba" class="auto-style8" />
                    </strong></td>
                <td __designer:mapid="98">
                    <asp:TextBox ID="txtTarifi" runat="server" Width="250px" Height="150px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
        <tr>
                <td class="auto-style23" __designer:mapid="9c"><strong __designer:mapid="b2">Kategori:</strong></td>
                <td __designer:mapid="9d">
                    <asp:TextBox ID="txtKategori" runat="server" Width="250px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
        <tr>
                <td class="auto-style23" __designer:mapid="9f"><strong>Yemek Tarihi:</strong></td>
                <td __designer:mapid="a0">
                    <asp:TextBox ID="txtTarihi" runat="server" Width="250px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
        <tr>
            <td class="auto-style23"><strong>Yemek Puanı: </strong></td>
            <td class="auto-style13">
                    <asp:TextBox ID="txtPuani" runat="server" Width="250px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23"><strong __designer:mapid="93">Yemek Icon:</strong></td>
            <td class="auto-style13">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style13">
                <asp:Button ID="btnGuncelle" runat="server" OnClick="btnGuncelle_Click" Text="Güncelle" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style13">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
