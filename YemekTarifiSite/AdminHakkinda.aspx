<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHakkinda.aspx.cs" Inherits="YemekTarifiSite.AdminHakkinda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            font-size: x-large;
        }
        .auto-style11 {
            height: 23px;
        }
        .auto-style12 {
            height: 23px;
            text-align: right;
            font-size: medium;
        }
        .auto-style13 {
            text-align: right;
            font-size: medium;
        }
        .auto-style14 {
            height: 34px;
        }
        .auto-style15 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style15"><span class="auto-style10"><strong>H</strong></span><strong><span class="auto-style10">akkında Düzenle</span></strong></td>
        </tr>
        <tr>
            <td>
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style13"><strong>Ben:<br />
                            <br />
                            <br />
                            <br />
                            <br />
                            </strong></td>
                        <td>
                            <asp:TextBox ID="txtBen" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12"><strong>Proje:<br />
                            <br />
                            <br />
                            <br />
                            <br />
                            </strong></td>
                        <td class="auto-style11">
                            <asp:TextBox ID="txtProje" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14"></td>
                        <td class="auto-style14">
                            <asp:Button ID="btnOnayla" runat="server" Height="30px" OnClick="btnOnayla_Click" Text="Onayla" Width="75px" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
