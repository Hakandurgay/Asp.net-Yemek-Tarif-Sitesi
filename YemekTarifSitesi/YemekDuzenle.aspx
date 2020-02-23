<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekTarifSitesi.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Yemek Ad:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Malzemeler:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="85px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Tarif:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Kategori:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Güncelle" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Gunun Yemegi Düzenle" />
            </td>
        </tr>
    </table>
</asp:Content>
