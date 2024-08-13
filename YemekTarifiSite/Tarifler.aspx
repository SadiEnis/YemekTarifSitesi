<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifiSite.Tarifler" %>

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
                            <strong><span class="auto-style17">Onaysız Tarifler Listesi</span></strong></td>
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
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TarifAdi") %>' CssClass="auto-style8"></asp:Label>
                        </td>
                        <td class="auto-style14">
                            <a href="TariflerGuncelle.aspx?Tarifid=<%# Eval("TarifID") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Assets/tick.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

    <table class="auto-style6">
        <tr>
            <td>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style16"><strong>
                            <asp:Button ID="btnShow1" runat="server" CssClass="auto-style23" Height="35px" Text="+" Width="35px" OnClick="btnShow1_Click" BorderWidth="0px" BackColor="#0092FB" />
                        </strong></td>
                        <td>
                            <strong><span class="auto-style17">Onaylı Tarifler Listesi</span></strong></td>
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
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <asp:DataList ID="DataList2" runat="server" Width="450px">
            <ItemTemplate>
                <table class="auto-style11">
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TarifAdi") %>' CssClass="auto-style8"></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
