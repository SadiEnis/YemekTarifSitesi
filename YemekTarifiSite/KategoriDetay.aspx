<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="YemekTarifiSite.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style7 {
            width: 100%;
        }

        .auto-style10 {
            height: 23px;
            background-color: #FFFFFF;
        }
    
        .auto-style9 {
            font-size: x-large;
            color: #FF0000;
        }

        .auto-style8 {
            height: 23px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="450px">
    <ItemTemplate>
        <table class="auto-style7">
            <tr>
                <td class="auto-style10"><strong><a href="YemekDetay.aspx?YemekID=<%# Eval("YemekID") %>">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text='<%# Eval("YemekAdi") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Malzemeler:</strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekMalzemeleri") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Yapılışı:</strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Eklenme Tarihi:</strong>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;- <strong><em>Puan:
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuani") %>'></asp:Label>
                    </em></strong></td>
            </tr>
            <tr>
                <td class="auto-style8" style="border-bottom-style: solid; border-bottom-width: medium; border-bottom-color: #000000">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
