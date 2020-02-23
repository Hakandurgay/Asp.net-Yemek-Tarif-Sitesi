<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOneriDetay.aspx.cs" Inherits="YemekTarifSitesi.TarifOneriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

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
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style9">
            <tr>
                <td class="auto-style6">Tarif Ad:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TxtAdsoyad" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Tarif Malzemeler:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="Txtmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Yapılış</td>
                <td class="auto-style12">
                    <asp:TextBox ID="Txticerik" runat="server" Height="100px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Tarif Öneren:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TxtAdsoyad0" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Tarif Mail:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="Txtmail0" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server"  Text="Yorum Yap" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
