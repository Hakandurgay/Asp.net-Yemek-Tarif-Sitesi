<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifSitesi.Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            background-color: #C0C0C0;
        }
    .auto-style9 {
        height: 26px;
    }
    .auto-style10 {
        height: 26px;
        text-align: right;
    }
        .auto-style11 {
            font-size: large;
        }
        .auto-style12 {
            width: 41px;
        }
        .auto-style13 {
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8">
        <table class="auto-style6">
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11"  Text="+" OnClick="Button1_Click" />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style11"  Text="-" OnClick="Button3_Click" />
                    </strong></td>
                <td>Yemek Listesi</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Height="209px" Width="443px">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style10">
                        <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil">    <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style10">
                           <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/refresh.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style8"></asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style6">
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style11"  Text="+" OnClick="Button2_Click"  />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style11"  Text="-" OnClick="Button4_Click"  />
                    </strong></td>
                <td>Yemek ekleme</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
        <table class="auto-style6">
            <tr>
                <td>Yemek Ad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Malzemeler</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>YEMEK TARİFİ</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ</td>
                <td class="auto-style13">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style13">
                    <asp:Button ID="BtnEkle" runat="server" OnClick="Button5_Click" Text="Ekle" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
