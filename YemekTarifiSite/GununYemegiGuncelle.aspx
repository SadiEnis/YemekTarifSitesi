<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiGuncelle.aspx.cs" Inherits="YemekTarifiSite.GununYemegiGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            height: 23px;
            font-size: x-large;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            font-size: x-large;
        }
        .auto-style14 {
            font-size: medium;
            border-radius: 5px;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Mevcut Günün Yemeği</strong></td>
        </tr>
        <tr>
            <td>
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" Width="440px">
                    <ItemTemplate>
                        <table class="auto-style6">
                            <tr>
                                <td><strong>
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekAdi") %>'></asp:Label>
                                    </strong></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Günün Yemeği Yapacağınız Yemek</strong></td>
        </tr>
        <tr>
            <td>
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList2" runat="server" Width="440px">
                    <ItemTemplate>
                        <table class="auto-style6">
                            <tr>
                                <td><strong>
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekAdi") %>'></asp:Label>
                                    </strong></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Button ID="btnOnayla" runat="server" CssClass="auto-style14" Height="30px" Text="Onayla" Width="100px" OnClick="btnOnayla_Click" OnClientClick="return confirm('Emin misiniz?')" />
            </td>
        </tr>
    </table>
</asp:Content>
