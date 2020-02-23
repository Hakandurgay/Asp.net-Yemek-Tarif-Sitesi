<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="YemekTarifSitesi.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8">
        <table class="auto-style6">
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11"  Text="+" />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style11"  Text="-" />
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
                            &nbsp;</td>
                        <td class="auto-style10">
                           <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/refresh.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
