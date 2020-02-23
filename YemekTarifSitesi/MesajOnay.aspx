<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajOnay.aspx.cs" Inherits="YemekTarifSitesi.MesajOnay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        height: 34px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8">
        <table class="auto-style6">
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Text="+" />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style11" Text="-" />
                    </strong></td>
                <td>Onaylanan Mesajlar</td>
            </tr>
        </table>
    </asp:Panel>
      <asp:Panel ID="Panel2" runat="server">
         <asp:Panel ID="Panel5" runat="server">
             <asp:DataList ID="DataList1" runat="server" Height="209px" Width="443px">
                 <ItemTemplate>
                     <table class="auto-style6">
                         <tr>
                             <td class="auto-style8">
                                 <asp:Label ID="Label2" runat="server" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                             </td>
                             <td class="auto-style8">
                                 <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" Width="30px" />
                             </td>
                             <td class="auto-style8">
                           <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid")  %>">      <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/Resimler/refresh.png" Width="30px" /></a>
                             </td>
                         </tr>
                     </table>
                 </ItemTemplate>
             </asp:DataList>
         </asp:Panel>
</asp:Panel>
      </asp:Content>
