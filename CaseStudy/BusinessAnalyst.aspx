<%@ Page Title="" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="BusinessAnalyst.aspx.cs" Inherits="DEVRE.BusinessAnalyst" %>


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
<p><b>       Business Analyst:</b></p>
1.	Strategic Planning
<br />2.	Operating and Business Model Analysis
<br />3.	Process Definition & Design
<br />4.	Technical Business Analysis
<p></p>
Business Model:
<br />-	Business Model is framework for creating economic, social & other forms of value.
<br />-	Core aspect of Business, including purpose, strategies, infrastructure, operation process, etc.

<p></p>Business process:
<br />-	Business process is collection of related, structured activities or task that produce specific product.
<p></p>
Main Process:
<br />1.	Management Process
<br />2.	Operational Process
<br />3.	Supporting Process
<p></p>
Use Case Model:
<br />1.	Group Analysis
2.	JAD – Joint Application Development
<br /><p></p>
Identify Business Needs:
<br />1.	Business Definition
<br />2.	Understand Business Domain
<br />3.	Organization Goal
<br />4.	Competitive stance.
<p></p>
Business Analyst Responsibilities:
<br />1.	Scope of Business
<br />2.	Translate Business Needs
<br />3.	Model & Documents
<br />4.	Act as Communicator
<br />5.	Political Mentor
<br />6.	Test & Validation
<br />7.	Represent Stakeholders
<p></p>
UML Diagrams:
<br />STRUCTURAL DIAGRAMS (Static Diagram):
<br />1.	Class Diagram: Describe structure of system by showing system’s classes, attributes, & Relationships.
<br />2.	Component Diagram: How software system split up into components & show dependencies among.
<br />3.	Composite Structure Diagram: Internal structure of a class & the collaborations that this structure makes possible.
<br />4.	Deployment Diagram: Hardware used in system implementation & Execution environment & artifacts deployed on the hardware.
<br />5.	Object Diagram: Complete or partial view of structure of an example modeled system at a specific time.
<br />6.	Package Diagram: How system is split up into logical grouping by showing the dependencies among grouping.
<br />7.	Profile Diagram: Operates at Meta model level to show stereotypes as class with stereotype.
<p></p>
BEHAVIORAL DIAGRAMS (Dynamic Diagram):
<br />1.	Activity Diagram: Business & Operational step-by-step workflow of components in a system.
<br />2.	Use Case Diagram: Functionality provided by a system in terms of actors, their goals represented as use cases, and any dependencies among those use cases.
<p></p>
INTERACTION DIAGRAMS:
<br />1.	Communication Diagram
<br />2.	Interaction Overview Diagram
<br />3.	Sequence Diagram
<br />4.	Timing Diagram

    </div>
</asp:Content>

<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" ID="RightBar" />               
</asp:Content>

<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" ID="BottomBar" />           
</asp:Content>
