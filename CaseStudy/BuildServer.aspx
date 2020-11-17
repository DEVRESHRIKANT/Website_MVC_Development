<%@ Page Title="" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="BuildServer.aspx.cs" Inherits="DEVRE.BuildServer" %>


<%@ Register TagPrefix="ShreeMain" TagName="ShreeMenu" Src="~/wfuc_MenuBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeTop" Src="/TopBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBanner" Src="/BannerBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeStatus" Src="/StatusBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeLeft" Src="~/LeftBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeRight" Src="~/RightBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBottom" Src="/BottomBar.ascx"%>

<asp:Content ID="ShreeHead" ContentPlaceHolderID="cpl_HeadBar" runat="server">
</asp:Content>
<asp:Content ID="MenuBar" ContentPlaceHolderID="cpl_MenuBar" runat="server">
    <ShreeMain:ShreeMenu runat="server" ID="ShreeMenu" />      
</asp:Content>

<asp:Content ID="ShreeTop" ContentPlaceHolderID="TopBar" runat="server">
    <ShreeMain:ShreeTop runat="server" id="TopBar"/>
</asp:Content>
<asp:Content ID="LeftBar" ContentPlaceHolderID="LeftBar_Shree_Web"  runat="server">
    <ShreeMain:ShreeLeft runat="server" ID="ShreeLeft" />              
</asp:Content>
<asp:Content ID="ShreeStatus" ContentPlaceHolderID="StatusBar" runat="server">
    <ShreeMain:ShreeStatus runat="server" id="StatusBar"/>
</asp:Content>

<asp:Content ID="ShreeMiddle" ContentPlaceHolderID="cpl_MainContentPlaceHolder" runat="server">
    <div>

<p>DotNet Framework Configuration Tool</p>
<br/>1.	Assembly linker
<br/>2.	CorFlag Conversion Tool
<br/>3.	Global Assembly Cache Tool
<br/>4.	MSIL Assembler(Microsoft Intermediate Language)
<br/>5.	MSIL Dis-Assembler
<br/>6.	Installer Tool
<br/>7.	License Compiler
<br/>8.	Manifest Generation & Editing Tool
<br/>9.	Manifest Generation Graphical Tool
<br/>10.Native Image Generator
<br/>11.Resource File Generator
<br/>12.Assembly Cache Viewer
<br/>13.Isolated Cache viewer
<br/>14.Windows Forms Resource Editor

<p>Deployment Activities: </p>
<br/>1.	Release (Assembly)
<br/>2.	Install & Activate (Stage & Production Environment)
<br/>3.	De-Activate(In-Frequently used or Obsolete)
<br/>4.	Adopt (Change Environment)
<br/>5.	Update (Previous  version to New Version)
<br/>6.	Built-In (Automation Update Process)
<br/>7.	Version Tracking (Software Version)
<br/>8.	Un-Install (System, Not Required)
<br/>9.	Refine (System Obsolete)
<br/>10.Test Environment
<br/>11.Deployment Environment
<br/>12.Disaster Recovery Environment
<br/>13.Production Environment

<p>Project Release Plan:</p>
<br/>1.	Backlog
<br/>2.	Iteration
<br/>3.	Team
<br/>4.	Work Breakdown
<br/>5.	Release Theme
<br/>6.	Release Requirements
<br/>7.	Release Criteria
<br/>8.	Release Goal
<br/>9.	Risk
<br/>10.Release Dashboard
<br/>11.Release Building
<br/>12.Release Planning
<br/>13.Release Preparation
<br/>14.Release Deployment
    </div>
</asp:Content>
<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" ID="RightBar" />               
</asp:Content>

<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" ID="BottomBar" />           
</asp:Content>
