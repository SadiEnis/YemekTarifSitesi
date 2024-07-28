<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifiSite.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 101%;
        }

        .auto-style13 {
            text-align: left;
            width: 253px;
            height: 34px;
        }

        .auto-style14 {
            text-align: right;
            height: 34px;
        }

        .auto-style15 {
            font-weight: bold;
            font-size: medium;
        }

        .auto-style16 {
            width: 35px;
        }

        .auto-style17 {
            font-size: x-large;
        }

        .auto-style18 {
            font-size: large;
            text-align: right;
        }

        .auto-style19 {
            font-weight: bold;
        }
        .auto-style20 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style16"><strong>
                <asp:Button ID="btnShow" runat="server" CssClass="auto-style15" Height="35px" Text="+" Width="35px" OnClick="btnShow_Click" />
            </strong></td>
                        <td>
                <strong><span class="auto-style17">Kategoriler Listesi</span></strong></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <hr />
            </td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <asp:DataList ID="DataList1" runat="server" Width="450px">
            <ItemTemplate>
                <table class="auto-style11">
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAdi") %>'></asp:Label>
                        </td>
                        <td class="auto-style14">
                            <a href="Kategoriler.aspx?Kategoriid=<%# Eval("KategoriID") %>&islem=sil" onclick="return confirm('Bu kategori silinecek. Emin misiniz?');">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Assets/delete.png" Width="30px" />
                            </a>
                        </td>
                        <td class="auto-style14">
                            <a href="KategoriGuncelle.aspx?Kategoriid=<%# Eval("KategoriID") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Assets/update.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <table class="auto-style6">
        <tr>
            <td class="auto-style16">
                <strong>
                <asp:Button ID="btnShow2" runat="server" CssClass="auto-style15" Height="35px" Text="+" Width="35px" OnClick="Button1_Click" />
            </strong>
            </td>
            <td>
                <strong><span class="auto-style17">Kategori Ekle</span></strong></td>
        </tr>
        <tr>
            <td colspan="2">
                <hr />
            </td>
        </tr>
    </table>
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <table class="auto-style6">
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Kategori Adı:</strong></td>
                <td>
                    <asp:TextBox ID="txtAdi" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Kategori Icon:</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td><strong>
                    <asp:Button ID="btnKategoriEkle" runat="server" CssClass="auto-style19" Height="30px" OnClick="btnKategoriEkle_Click" Text="Ekle" Width="75px" />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
