<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifiSite.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            font-size: x-large;
        }
        .auto-style10 {
            font-size: small;
        }
        .auto-style11 {
            text-align: right;
        }
        .auto-style13 {
            text-align: right;
            width: 109px;
        }
        .auto-style14 {
            width: 375px;
        }
        .auto-style15 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style15" Text="Label"></asp:Label>
    </strong>
    <asp:DataList ID="DataList2" runat="server" Width="450px" Height="415px">
        <ItemTemplate>
            <table class="auto-style8">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style9" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" style="border-bottom-style: inset; border-bottom-width: thin; border-bottom-color: #FFFFFF;">
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style10" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div style="border-width: thin; border-style: solid; margin: 35px; background-color: #32abf1;" class="auto-style14">
        <strong>YORUM YAPMA PANELİ
        </strong>
        <asp:Panel ID="Panel1" runat="server">
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style13"><strong>Ad Soyad:</strong></td>
                        <td>
                            <asp:TextBox ID="txtAdSoyad" runat="server" Height="15px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>Mail:</strong></td>
                        <td>
                            <asp:TextBox ID="txtMail" runat="server" Height="15px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><strong>Yorum:<br />
                            <br />
                            <br />
                            </strong></td>
                        <td>
                            <asp:TextBox ID="txtYorum" runat="server" Height="75px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td>
                            <asp:Button ID="btnYorumYap" runat="server" Text="Yorum Yap" Width="100px" OnClick="btnYorumYap_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
    </div>
    
</asp:Content>
