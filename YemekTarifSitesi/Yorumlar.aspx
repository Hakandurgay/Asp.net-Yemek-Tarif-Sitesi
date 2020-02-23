<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifSitesi.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style8 {
            background-color: #C0C0C0;
        }
        .auto-style12 {
            width: 41px;
        }
        .auto-style11 {
            font-size: large;
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
                <td>Onaylanan Yorumlar</td>
           
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server">
         <asp:Panel ID="Panel5" runat="server">
             <asp:DataList ID="DataList1" runat="server" Height="209px" Width="443px">
                 <ItemTemplate>
                     <table class="auto-style6">
                         <tr>
                             <td class="auto-style9">
                                 <asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                             </td>
                             <td class="auto-style10">
                                 <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" Width="30px" />
                             </td>
                             <td class="auto-style10">
                                 <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/Resimler/refresh.png" Width="30px" />
                             </td>
                         </tr>
                     </table>
                 </ItemTemplate>
             </asp:DataList>
         </asp:Panel>
</asp:Panel>
     <asp:Panel ID="Panel3" runat="server" CssClass="auto-style8">
        <table class="auto-style6">
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style11"  Text="+" OnClick="Button2_Click" />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style11"  Text="-" OnClick="Button4_Click" />
                    </strong></td>
                <td>Onaylanmayan Yorumlar</td>
           
            </tr>
        </table>
          
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server"> <asp:DataList ID="DataList2" runat="server" Height="209px" Width="443px">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style10">
                           <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style10">
                       <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid")%>">  <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/refresh.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList></asp:Panel>
</asp:Content>
