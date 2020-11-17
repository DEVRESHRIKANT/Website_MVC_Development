<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ShoppingCartViewerWebUserControl.ascx.cs" Inherits="DEVRE.ShoppingCartViewerWebUserControl" %>
<div>
<asp:Repeater ID="ShoppingCartRepeater" runat="server">
    <HeaderTemplate>
        <table border="0">
        <tr>
            <td>Name</td>
            <td>Price</td>
            <td>Qty</td>
            <td>Subtotal</td>
        </tr>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td><%# Eval("ProductName") %></td>
            <td><%# Eval("Price", "{0:c}") %></td>
            <td><%# Eval("Quantity") %></td>
            <td style="text-align:right"><%# Eval("Subtotal", "{0:c}")%></td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
        <tr>
            <td colspan="4" style="text-align:right">Total: &nbsp;<%# cartTotal.ToString("c") %></td>
        </tr>
        </table>
    </FooterTemplate>
    </asp:Repeater>
</div>