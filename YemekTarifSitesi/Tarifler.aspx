<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifSitesi.Tarifler" %>
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
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Text="+"  />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style11" Text="-" />
                    </strong></td>
                <td>Onaysız Tarifler </td>
            </tr>
        </table>
    </asp:Panel>
      <asp:Panel ID="Panel5" runat="server">
             <asp:DataList ID="DataList1" runat="server" Height="209px" Width="443px">
                 <ItemTemplate>
                     <table class="auto-style6">
                         <tr>
                             <td class="auto-style8">
                                 <asp:Label ID="Label2" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                             </td>
                             <td class="auto-style8">
                                 &nbsp;</td>
                             <td class="auto-style8">
                
                             
                               
                               <a href="TarifOneriDetay.aspx?Tarifid=<%#Eval("Tarifid") %>">      <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/Resimler/refresh.png" Width="30px" /></a>
                                  </a>
                             </td>
                         </tr>
                     </table>
                 </ItemTemplate>
             </asp:DataList>
         </asp:Panel>
     <asp:Panel ID="Panel2" runat="server" CssClass="auto-style8">
        <table class="auto-style6">
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Text="+"  />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style11" Text="-" />
                    </strong></td>
                <td>Onaylı Tarifler </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:DataList ID="DataList2" runat="server" Height="209px" Width="443px">
                 <ItemTemplate>
                     <table class="auto-style6">
                         <tr>
                             <td class="auto-style8">
                                 <asp:Label ID="Label2" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                             </td>
                             <td class="auto-style8">
                                 &nbsp;</td>
                             <td class="auto-style8">
                
                             
                               
                               <a href="TarifOneriDetay.aspx?Tarifid=<%#Eval("Tarifid") %>">      <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/Resimler/refresh.png" Width="30px" /></a>
                                  </a>
                             </td>
                         </tr>
                     </table>
                 </ItemTemplate>
             </asp:DataList>
</asp:Content>
