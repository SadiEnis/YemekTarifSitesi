<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifiSite.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
            text-align: right;
        }
        .auto-style8 {
            height: 23px;
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Tarif Adı:</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtTarifAdi" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Malzemeler:</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtMalzemeler" runat="server" Height="75px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Yapılışı:</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Tarif Resmi:</td>
            <td class="auto-style6">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Öneren Adı Soyadı:</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtOnerenAdi" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Öneren Mail Adresi:</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtOnerenMail" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="Button1" runat="server" Height="30px" Text="Tarif Öner" Width="100px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
