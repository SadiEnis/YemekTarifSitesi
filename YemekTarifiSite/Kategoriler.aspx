<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifiSite.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        font-size: x-large;
    }
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
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style10">
    <strong>Kategoriler Listesi</strong></p>
<asp:Panel ID="Panel1" runat="server">
    <asp:DataList ID="DataList1" runat="server" Width="450px">
        <ItemTemplate>
            <table class="auto-style11">
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAdi") %>'></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Assets/delete.png" Width="30px" />
                    </td>
                    <td class="auto-style14">
                        <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Assets/update.png" Width="30px" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel>
</asp:Content>
