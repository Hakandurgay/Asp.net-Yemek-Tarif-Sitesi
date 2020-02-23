<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifSitesi.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2"><strong>Tarif Ad:</strong></td>
        <td>
            <asp:TextBox ID="TxtTarifAd" runat="server" Height="20px" Width="212px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2"><strong>Tarif Malzeme:</strong></td>
        <td>
            <asp:TextBox ID="TxtTarifMalzeme" runat="server" Height="80px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2"><strong>Tarif Yapılış:</strong></td>
        <td>
            <asp:TextBox ID="TxtYapilis" runat="server" Height="100px" TextMode="MultiLine" Width="212px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2"><strong>Tarif Resim: </strong></td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="220px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2"><strong>Tarif Sahip:</strong></td>
        <td>
            <asp:TextBox ID="TxtSahip" runat="server" Height="20px" Width="206px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2"><strong>Tarif Sahip Mail:</strong></td>
        <td>
            <asp:TextBox ID="TxtSahipMail" runat="server" Height="20px" Width="209px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="BtnTarifOner" runat="server" Height="43px" Text="Tarif Öner" Width="163px" OnClick="BtnTarifOner_Click" />
        </td>
    </tr>
</table>
</asp:Content>
