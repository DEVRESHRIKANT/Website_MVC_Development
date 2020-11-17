<%@ Page Title="" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="RiskMgmt.aspx.cs" Inherits="DEVRE.RiskMgmt" %>

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
<p>    Risk Management Strategy</p>
1.	Risk Identification:
<br />	Risk Assessment Questionnaire
<br />	Project Planning Risk Assessment checklist
<br />	Augmented to include other specific risk

<p>2.	Risk Categorization:</p>

<p>3.	Risk Impact Assessment:</p>
Risk Probability / Occurrence
<br />	Its effect on Project objectives
<br />	Risk Severity = Impact Score

<p>4.	Risk Prioritization:</p>

<p>.	Risk Response Planning:</p>
<br />	Determine the options & actions to reduce
<br />	Cost Vs. Expected Effectiveness (Determine)
<br />	Describe Actions to be taken to mitigate Risk
<br />	Sign & Symptoms that may indicate Risk event occurrence.
<br />	Contingency Plan (Action, When Risk Occurs)
	<br />Assign Responsibilities for each agreed-upon response.
	<br />Assign “Due Date” where Risk Response is Time-Sensitive.

<p>6.	Risk Response Tracking:</p>
	Document for action taken to mitigate Risk, Date, when risk event occurred (contingency plan), any subsequent action taken

<p>7.	Risk Monitor:</p>
	Ensure all requirements of Risk Management Plan.
	<br />Assess current defined risks as defined in RRP
	<br />Evaluate effectiveness of action taken
	<br />Identify status of actions to be taken
	<br />Validate Previous Assumptions / State New A.
	<br />Identify new Risk & Track Risk – Response.
	<br />Establish Communications.

<p>8.	Risk Control:</p>
	<br />Assess impact on taken action (Cost, Time & Resources)
	<br />Ensure Change control associated with proposal change.
	<br />Validate mitigation strategies & Alternatives
	<br />Take Corrective action when actual event occur.
	<br />Revise Risk Assessment Queue, checklist, docs, communication, and response plan.
</div>
</asp:Content>
<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" ID="RightBar" />               
</asp:Content>

<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" ID="BottomBar" />           
</asp:Content>
