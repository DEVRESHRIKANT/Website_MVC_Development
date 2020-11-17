<%@ Page Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="DEVRE.ShoppingCart" Title="Shopping Cart" %>

<%@ Register TagPrefix="ShreeMain" TagName="ShreeMenu" Src="~/wfuc_MenuBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeTop" Src="/TopBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBanner" Src="/BannerBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeStatus" Src="/StatusBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeLeft" Src="~/LeftBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeRight" Src="~/RightBar_Shree_Web.ascx"%>
<%--<%@ Register TagPrefix="ShreeMain" TagName="ShreeBottom" Src="/BottomBar.ascx"%>--%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeCart" Src="~/ShoppingCartViewerWebUserControl.ascx"%>

<asp:Content ID="MenuBar" ContentPlaceHolderID="cpl_MenuBar" runat="server">
    <ShreeMain:ShreeMenu runat="server" ID="ShreeMenu" />      
</asp:Content>
<asp:Content ID="TopBar" ContentPlaceHolderID="TopBar" runat="server">   
    <ShreeMain:ShreeTop runat="server" ID="ShreeTop" />              
</asp:Content>
<asp:Content ID="BannerBar" ContentPlaceHolderID="BannerBar" runat="server">  
    <ShreeMain:ShreeBanner runat="server" ID="ShreeBanner" />
</asp:Content>
<asp:Content ID="StatusBar" ContentPlaceHolderID="StatusBar" runat="server">   
    <ShreeMain:ShreeStatus runat="server" ID="ShreeStatus" />
</asp:Content>
<asp:Content ID="LeftBar" ContentPlaceHolderID="LeftBar_Shree_Web"  runat="server">
    <ShreeMain:ShreeLeft runat="server" ID="ShreeLeft" />              
    <div id="divResult" runat="server"></div>
	<div id="divError" runat="server"></div>
</asp:Content>

<%--Middle Section Column --%>
    <asp:Content ID="MiddleBar" ContentPlaceHolderID="cpl_MainContentPlaceHolder"  runat="server">
    <!--- Middle Section Start Here -->
<div>    
    <asp:Label ID="messageLabel" runat="server"></asp:Label>
</div>
<div>
    <asp:Repeater ID="ShoppingCartRepeater"  runat="server" OnItemCommand="ShoppingCartRepeater_ItemCommand">
    <HeaderTemplate>
        <table border="0">
        <tr>
            <td>Remove</td>
            <td>Name</td>
            <td>Category</td>
            <td>Price</td>
            <td>Qty</td>
            <td>Subtotal</td>
        </tr>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td><asp:CheckBox ID="removeCheckBox" runat="server" /></td>
            <td><%# Eval("ProductName") %></td>
            <td><%# Eval("CategoryName") %></td>
            <td><%# Eval("Price", "{0:c}") %></td>
            <td><asp:TextBox ID='qtyTextBox' Text='<%# Eval("Quantity") %>' Columns="3" runat="server"></asp:TextBox></td>
            <td><%# Eval("Subtotal", "{0:c}")%></td>
        </tr>
        <asp:HiddenField ID='ProductIDHiddenField' Value='<%# Eval("ProductID") %>' runat='server' />
    </ItemTemplate>
    <FooterTemplate>
        <tr>
            <td colspan="6" style="align-content:center">Total: &nbsp;<%# cartTotal.ToString("c")%></td>
        </tr>
        <tr>
            <td colspan="6" style="align-content:center">
                <asp:Button ID="removeAllButton" CommandName="RemoveAll" Text="RemoveAll" runat="server" />&nbsp;
                <asp:Button ID="qtyButton" CommandName="ChangeQty" Text="Cahange Qty / Remove" runat="server" />&nbsp;
                <asp:Button ID="storeButton" CommandName="Store" Text="Back To Store" runat="server" />&nbsp;
                <asp:Button ID="checkoutButton" CommandName="Checkout" Text="Checkout" runat="server" />
            </td>
        </tr>
        </table>
    </FooterTemplate>
    </asp:Repeater>
</div>
</asp:Content>

<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" ID="RightBar" />               
</asp:Content>

<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" ID="SHOPPINGBOTTOM" />           
</asp:Content>

