<%@ Page Title="" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="ContinuousIntegration.aspx.cs" Inherits="DEVRE.ContinuousIntegration" %>


<%@ Register TagPrefix="ShreeMain" TagName="ShreeMenu" Src="~/wfuc_MenuBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeTop" Src="/TopBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBanner" Src="/BannerBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeStatus" Src="/StatusBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeLeft" Src="~/LeftBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeRight" Src="~/RightBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBottom" Src="/BottomBar.ascx"%>

<asp:Content ID="Content1" ContentPlaceHolderID="cpl_MenuBar" runat="server">
    <ShreeMain:ShreeMenu runat="server" ID="ShreeMenu1" />      
</asp:Content>

<asp:Content ID="ShreeHead" ContentPlaceHolderID="cpl_HeadBar" runat="server">
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
<p>Continuous Integration</p>
<br/>How to Do it?
<br/>1.	Developers check out code into their private workspace
<br/>2.	When done, commit changes to the repository
<br/>3.	CI server monitors the repository & check out changes when they occur
<br/>4.	CI server builds the system & runs, unit & integration tests
<br/>5.	CI server releases deployable artefacts for testing
<br/>6.	CI server assigns a build label to the version of the code it just built.
<br/>7.	CI server informs the team of the successful build
<br/>8.	If the build or tests fails, CI server alert the team
<br/>9.	Team fix issue at their earliest opportunity.

<p>Team Responsibilities in CI?</p>
<br/>1.	Check-In frequently
<br/>2.	Don’t check-in broken code
<br/>3.	Don’t check-in un-tested code
<br/>4.	Don’t check-in, when build is broken
<br/>5.	Don’t go home after checking-in, until system builds

<p>Continuous Integration: </p>
<br/>-	Requires developers to integrate code into shared repository several times a day.
<br/>-	Each check-in is than verified by automated build

<p>CI Benefits:</p>
<br/>1.	Not long and tense integration
<br/>2.	Increase visibility which enable greater communication
<br/>3.	Catch issue fast and nip them in the bud.
<br/>4.	Spend less time debugging and more time addition new features
<br/>5.	Proceed in the confidence, you are building on solid foundation
<br/>6.	Stop waiting to find out, if your code is going to work
<br/>7.	Reduce Integration problems, allowing you to deliver software more rapidly.

<p>CI Practises:</p>
<br/>1.	Maintain a single source repository
<br/>2.	Automate the build
<br/>3.	Make sure build self-testing
<br/>4.	Every commit should built on an integration machine
<br/>5.	Keep the build fast
<br/>6.	Test in a clone of the production environment
<br/>7.	Make it easy for everyone to get the latest executable.
<br/>8.	Everyone can see what is happening
<br/>9.	Automate deployment

    </div>
</asp:Content>

<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" ID="RightBar" />               
</asp:Content>

<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" ID="BottomBar" />           
</asp:Content>
