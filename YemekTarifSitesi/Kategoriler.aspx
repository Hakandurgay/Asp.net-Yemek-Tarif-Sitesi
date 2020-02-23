<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifSitesi.Kategoriler" %>
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
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" OnClick="Button1_Click" Text="+" />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style11" OnClick="Button3_Click" Text="-" />
                    </strong></td>
                <td>kategori listesi</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Height="209px" Width="443px">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style10">
                        <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil">    <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style10">
                           <a href="KategoriDuzenle.aspx?Kategoriid=<%#Eval("Kategoriid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/refresh.png" Width="30px" /></a>
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
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style11"  Text="+" OnClick="Button2_Click" />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style11"  Text="-" OnClick="Button4_Click" />
                    </strong></td>
                <td>kategori ekleme</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
        <table class="auto-style6">
            <tr>
                <td>Kategori ad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Kategori ikon:</td>
                <td class="auto-style13">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style13">
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Ekle" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
