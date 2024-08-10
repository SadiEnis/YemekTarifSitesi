<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="YemekTarifiSite.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        font-size: x-large;
    }
    .auto-style11 {
        height: 23px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
    <tr>
        <td class="auto-style10"><strong>Mesajlar</strong></td>
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
                            <td class="auto-style11"><strong>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("MesajBaslik") %>'></asp:Label>
                                </strong></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("MesajMail") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <hr />
                    <table class="auto-style6">
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("MesajIcerik") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
</table>
</asp:Content>
