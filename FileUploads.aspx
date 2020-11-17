<%@ Page Title="FileUpload" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="FileUploads.aspx.cs" Inherits="DEVRE.FileUploads" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="SHORTCUT ICON" href="Images/Ohm1.ico"/>
        <link href="Styles/StyleSheetInfo.css" rel="Stylesheet" type="text/css" />
</asp:Content>--%>


<%@ Register TagPrefix="ShreeMain" TagName="ShreeMenu" Src="~/wfuc_MenuBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeTop" Src="/TopBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBanner" Src="/BannerBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeStatus" Src="/StatusBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeLeft" Src="~/LeftBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeRight" Src="~/RightBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBottom" Src="/BottomBar.ascx"%>

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
</asp:Content>

<%--Middle Section Column --%>
    <asp:Content ID="MiddleBar" ContentPlaceHolderID="cpl_MainContentPlaceHolder"  runat="server">
    <table>
        <tr>
            <td>                
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="btnUpload_Click" />
                <br />
                 <%--<asp:Button ID="btnDownLoad" Text="Download" OnClick="btnDownload_Click" runat="server" />--%>
                <br />
                <asp:Button ID="btnDispay" Text="Display" OnClick="btnDisplay_Click" runat="server" />
                <asp:Label ID="lblMessage" runat="server" Text="" Font-Namesf = "Arial"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>                 
                 <asp:Image ID="Image1" Height="200" Width="200" runat="server" />
            </td>
        </tr>         
    </table>
</asp:Content>

<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" ID="RightBar" />               
</asp:Content>

<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" ID="BottomBar" />           
</asp:Content>
