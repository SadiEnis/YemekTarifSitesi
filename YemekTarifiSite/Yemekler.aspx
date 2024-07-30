<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifiSite.Yemekler" %>

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
        .auto-style21 {
            font-size: large;
            text-align: right;
            height: 26px;
        }
        .auto-style22 {
            height: 26px;
        }
        .auto-style23 {
            font-weight: bold;
            font-size: x-large;
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
                            <asp:Button ID="btnShow" runat="server" CssClass="auto-style23" Height="35px" Text="+" Width="35px" OnClick="btnShow_Click" BorderWidth="0px" BackColor="#0092FB" />
                        </strong></td>
                        <td>
                            <strong><span class="auto-style17">Yemekler Listesi</span></strong></td>
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
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAdi") %>' CssClass="auto-style8"></asp:Label>
                        </td>
                        <td class="auto-style14">
                            <a href="Yemekler.aspx?Yemekid=<%# Eval("YemekID") %>&islem=sil" onclick="return confirm('Bu kategori silinecek. Emin misiniz?');">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Assets/delete.png" Width="30px" />
                            </a>
                        </td>
                        <td class="auto-style14">
                            <a href="YemekGuncelle.aspx?Yemekid=<%# Eval("YemekID") %>">
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
                    <asp:Button ID="btnShow2" runat="server" CssClass="auto-style23" Height="35px" Text="+" Width="35px" OnClick="Button1_Click" BackColor="#0094FF" BorderWidth="0px" />
                </strong>
            </td>
            <td>
                <strong><span class="auto-style17">Yemek Ekle</span></strong></td>
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
                <td class="auto-style18"><strong>Yemek Adı:</strong></td>
                <td>
                    <asp:TextBox ID="txtYemekAdi" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21"><strong>Malzemeler:<br /> <br />
                    <br />
                    <br />
                    </strong></td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtMalzemeler" runat="server" Height="75px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Tarifi:<br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    </strong></td>
                <td>
                    <asp:TextBox ID="txtTarifi" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Kategori:</strong></td>
                <td>
                    <asp:DropDownList ID="ddlKategori" runat="server" Height="30px" Width="250px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Yemek Icon:</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td><strong>
                    <asp:Button ID="btnEkle0" runat="server" CssClass="auto-style19" Height="30px" OnClick="btnEkle_Click" Text="Ekle" Width="100px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
