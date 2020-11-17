<%@ Page Title="" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="ProjectCharter.aspx.cs" Inherits="DEVRE.ProjectCharter" %>

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
    <div>
        <p>
        Project Charter Executive Summary:</p>
<br />-	Project Goal
<br />-	Objective
<br />-	Scope / Out of Scope / Constraints
<br />-	Assumption
<br />-	Risk
<br />-	Cost Estimate
<br />-	Timeline
<br />-	Approach (Structure)
<br />-	Organization
<br />-	Diagrams

<p>Deliverables:</p>
<br />-	 Project Schedule
<br />-	Logic Modeling
<br />-	Input & Output Screen Designs
<br />-	Implementation Plan
<br />-	Test Plan
<br />-	Training Plan

<p>Defining Data: </p>
<br />-	Consultant Available, How, Where, etc.
<br />-	Client Available, How, where, etc.

<p>Considerations:</p>
<br />-	Business Process, Area, Unit, Location, Data, Application change, Technology changes will affect / changed.

<p>Milestones: </p>
<br />-	Project Milestones
<br />-	Invoice date to client

<p>Work:</p>
<br />-	Disaster, Recovery Plan
<br />-	Support
<br />-	Hardware Installation, Upgrade, Purchase
<br />-	Data Integration
<br />-	System Documentation

<p>Appendices: </p>
<br />-	Project Submission
<br />-	Budget, Operational Budget
<br />-	Grant Agreement
<br />-	Action Plan
<br />-	Reports
<p>
<br />Project Overview, Purpose, Assumption, Constraints, Dependencies, Benefits /Success Criteria, Project Issues / Essential Conditions, Work Breakdown Structure (WBS).
    </p>
    </div>
</asp:Content>

<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" ID="RightBar" />               
</asp:Content>

<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" ID="BottomBar" />           
</asp:Content>
