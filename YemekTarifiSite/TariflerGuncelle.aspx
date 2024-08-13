<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TariflerGuncelle.aspx.cs" Inherits="YemekTarifiSite.TariflerGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style13 {
            width: 295px;
        }
        .auto-style23 {
            text-align: right;
            font-size: large;
        }
        .auto-style21 {
            font-size: large;
            text-align: right;
            height: 26px;
        }
        .auto-style22 {
            height: 26px;
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
            <td class="auto-style23" __designer:mapid="8d"><strong __designer:mapid="8e">Tarif Adı:</strong></td>
            <td __designer:mapid="8f">
                <asp:TextBox ID="txtAdi" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" __designer:mapid="92"><strong __designer:mapid="b0"><span class="auto-style8">Malzemeler:<br /></span>
                <br __designer:mapid="b6" class="auto-style8" />
                <br __designer:mapid="be" class="auto-style8" />
                <br __designer:mapid="b7" class="auto-style8" /></strong></td>
            <td __designer:mapid="94" class="auto-style22">
                <asp:TextBox ID="txtMalzemeler" runat="server" Width="250px" Height="75px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23" __designer:mapid="97"><strong __designer:mapid="b1"><span class="auto-style8">Tarifi:<br />
                <br />
                <br /></span>
                <br __designer:mapid="bd" class="auto-style8" />
                <br __designer:mapid="b8" class="auto-style8" />
                <br __designer:mapid="b9" class="auto-style8" />
                <br __designer:mapid="ba" class="auto-style8" /></strong></td>
            <td __designer:mapid="98">
                <asp:TextBox ID="txtTarifi" runat="server" Width="250px" Height="150px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23" __designer:mapid="9f"><strong>Yemek Resmi:</strong></td>
            <td __designer:mapid="a0">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style23"><strong>Öneren: </strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="txtOneren" runat="server" Width="250px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23"><strong __designer:mapid="93">Öneren Mail:</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="txtMail" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style13">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
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
            <td class="auto-style13">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
