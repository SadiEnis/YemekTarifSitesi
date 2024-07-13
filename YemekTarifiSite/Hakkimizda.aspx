<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekTarifiSite.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            font-size: x-large;
        }
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            width: 203px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <strong>HAKKIMDA</strong><table class="auto-style8">
            <tr>
                <td class="auto-style9">
                    <asp:Image ID="Image1" runat="server" BorderStyle="Solid" BorderWidth="2px" Height="200px" ImageUrl="~/Assets/me200.jpg" Width="200px" />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    <asp:DataList ID="DataList3" runat="server">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Ben") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:DataList>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:DataList ID="DataList4" runat="server">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Proje") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
        </table>
</asp:Content>
