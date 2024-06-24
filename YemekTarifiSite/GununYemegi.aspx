<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifiSite.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        font-size: x-large;
    }
        .auto-style8 {
            height: 23px;
            text-align: center;
            width: 422px;
        }
        .auto-style10 {
            height: 23px;
            width: 422px;
        }
        .auto-style11 {
            height: 23px;
            text-align: left;
            width: 422px;
        }
        .auto-style12 {
            width: 428px;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style14 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style12">
                <tr>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <div class="auto-style13">
                            <strong>
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Text='<%# Eval("GununYemegiAd") %>'></asp:Label>
                            </strong>
                        </div>
                        <hr />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style10"><strong>Malzemeler</strong>:<br />
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("GununYemegiMalzeme") %>'></asp:Label>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"><strong>Tarif</strong>:<br />
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Image ID="Image1" runat="server" Height="200px" Width="330px" ImageUrl="~/Assets/mucver.png" />
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <table class="auto-style1">
                            <tr>
                                <td><strong>Puan:</strong>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                                </td>
                                <td class="auto-style14"><strong>Tarih:</strong>&nbsp;<em><asp:Label ID="Label7" runat="server" Text='<%# Eval("GununYemegiTarih") %>'></asp:Label>
                                    </em></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
