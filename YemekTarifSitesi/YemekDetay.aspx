<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifSitesi.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            font-size: large;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            background-color: #C0C0C0;
        }
    .auto-style9 {
        width: 100%;
    }
    .auto-style10 {
        margin-left: 40px;
    }
    .auto-style11 {
        margin-left: 80px;
    }
    .auto-style12 {
        margin-left: 120px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td><strong>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style2" Text="Label"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList2" runat="server" Width="243px" Height="252px">
                    <ItemTemplate>
                        <table class="auto-style4">
                            <tr>
                                <td><strong>
                                    <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                                    </strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style7" style="border-bottom-style: inset; border-bottom-width: thick">
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                                    <br />
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("YorumMail") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <br />
                <div class="auto-style8">YORUM YAPMA PANELİ</div>
                <asp:Panel ID="Panel1" runat="server">
                    <table class="auto-style9">
                        <tr>
                            <td class="auto-style6"><strong>Ad Soyad : </strong></td>
                            <td class="auto-style10">
                                <asp:TextBox ID="TxtAdsoyad" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">Mail:</td>
                            <td class="auto-style11">
                                <asp:TextBox ID="Txtmail" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">Yorum:</td>
                            <td class="auto-style12">
                                <asp:TextBox ID="Txticerik" runat="server" Height="100px" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style12">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Yorum Yap" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
