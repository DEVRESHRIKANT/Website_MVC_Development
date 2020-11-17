<%@ Page Title="Login" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="Login_Shree.aspx.cs" Inherits="DEVRE.Login_Shree" %>

<%@ Register TagPrefix="ShreeMain" TagName="ShreeTop" Src="~/TopBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeStatus" Src="~/StatusBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeMenu" Src="~/wfuc_MenuBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBanner" Src="~/BannerBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeLeft" Src="~/LeftBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeRight" Src="~/RightBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBottom" Src="~/BottomBar.ascx"%>

<asp:Content ID="menuContent" ContentPlaceHolderID="cpl_MenuBar" runat="server">
    <ShreeMain:ShreeMenu runat="server" ID="ShreeMenu" />           
</asp:Content>
<asp:Content ID="headerContent" ContentPlaceHolderID="TopBar" runat="server">
    <ShreeMain:ShreeTop runat="server" ID="ShreeTop" />              
</asp:Content>
<asp:Content ID="Breadcrumb" ContentPlaceHolderID="BannerBar" runat="server">   
    <ShreeMain:ShreeBanner runat="server" ID="ShreeBanner" />
    
</asp:Content>
<asp:Content ID="Status" ContentPlaceHolderID="StatusBar" runat="server">   
    <ShreeMain:ShreeStatus runat="server" ID="ShreeStatus" />
    
</asp:Content>

<asp:Content ID="LeftBar" ContentPlaceHolderID="LeftBar_Shree_Web"  runat="server">
    <ShreeMain:ShreeLeft runat="server" ID="ShreeLeft" />
                    <div id="divResult" runat="server"></div>
	            <div id="divError" runat="server"></div>             
</asp:Content>

<asp:Content ID="pageContent" ContentPlaceHolderID="cpl_MainContentPlaceHolder" runat="server">
    <!--- Middle Section Start Here -->
			<table border="1" style="width:100%">
				<tr>
					<td>Login:</td>
					<td>   <asp:TextBox CssClass="fencyTextbox" ID="txtLogin" Runat="server"></asp:TextBox></td>
					<td>
						<asp:CheckBox ID="SaveLoginInfo" Text="Save my Login Information on this Computer" TextAlign="Right" Runat="server"></asp:CheckBox>
					</td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><asp:TextBox CssClass="fencyTextbox" TextMode="Password" Runat="server" ID="txtPassword"></asp:TextBox></td>
					<td>
						<asp:LinkButton ID="lbForgotPassword" Runat="server">Forgot your password?</asp:LinkButton>
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<asp:Button ID="btnCheckLogin"  Runat="server" Text="Login" onclick="btnCheckLogin_Click"></asp:Button>
					</td>
					<td>Click here to
						<asp:LinkButton ID="lbCreateNewAccount" CssClass="a:link" Runat="server" onclick="lbCreateNewAccount_Click">Create A New Account</asp:LinkButton>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<div runat="server" id="divErrorMsg" class="RedMessageSmall"></div>
					</td>
				</tr>					
			</table>
</asp:Content>
<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" id="RightBar"/>
</asp:Content>
<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" id="BottomBar"/>
</asp:Content>
