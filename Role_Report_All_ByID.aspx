<%@ Page Title="" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="Role_Report_All_ByID.aspx.cs" Inherits="DEVRE.Role_Report_All_ByID" %>

<%@ Register TagPrefix="ShreeMain" TagName="ShreeMenu" Src="~/wfuc_MenuBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeTop" Src="~/TopBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBanner" Src="~/BannerBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeStatus" Src="~/StatusBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeLeft" Src="~/LeftBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeRight" Src="~/RightBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBottom" Src="~/BottomBar.ascx"%>

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
</asp:Content>

<asp:Content ID="Head_Content" ContentPlaceHolderID="cpl_HeadBar" runat="server">
</asp:Content>
<asp:Content ID="Menu_Content" ContentPlaceHolderID="cpl_MenuBar" runat="server">
    <ShreeMain:ShreeMenu runat="server" ID="ShreeMenu" />
</asp:Content>

<asp:Content ID="Content8" ContentPlaceHolderID="cpl_MainContentPlaceHolder" runat="server">
    <asp:GridView ID="grdRole" runat="server">
        </asp:GridView>
        <asp:Button ID="btnAllRoles" runat="server" OnClick="btnAllRoles_Click" Text="List All Roles" />
        <asp:Button ID="btnRoleById" runat="server" OnClick="btnRoleById_Click" Text="Role By Id" />
        <asp:Button ID="btnRoleByName" runat="server" OnClick="btnRoleByName_Click" Text="Role By Name" />
        <asp:TextBox ID="txtRoleID" runat="server"></asp:TextBox>
    </asp:Content>


<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" ID="RightBar" />               
</asp:Content>

<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" ID="BottomBar" />           
</asp:Content>

