<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="YemekTarifSitesi.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        width: 450px;
    }
    .auto-style7 {
        width: 224px;
        margin-left: 120px;
    }
    .auto-style12 {
        width: 224px;
    }
    .auto-style13 {
        width: 224px;
        margin-left: 160px;
    }
    .auto-style15 {
        height: 26px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
    <tr>
        <td class="auto-style15" colspan="2"></td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">Ad Soyad: </td>
        <td class="auto-style7">
            <asp:TextBox ID="TxtAdsoyad" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">Mail Adresiniz:</td>
        <td class="auto-style13">
            <asp:TextBox ID="TxtMail" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">Konu: </td>
        <td class="auto-style13">
            <asp:TextBox ID="TxtBaslik" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">Mesaj</td>
        <td class="auto-style13">
            <asp:TextBox ID="TxtMesaj" runat="server" Height="100px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style13">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Gönder" />
        </td>
    </tr>
</table>
</asp:Content>
