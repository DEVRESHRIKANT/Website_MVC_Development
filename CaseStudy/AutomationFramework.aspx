<%@ Page Title="" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="AutomationFramework.aspx.cs" Inherits="DEVRE.AutomationFramework" %>


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
<p></p>
1.	How Many Types of Automation Frameworks are there? 
<br/>  a.	Data Driven Automation Framework
<br/>  b.	Keyword Driven Automation Framework 
<br/>  c.	Modular Automation Framework 
<br/>  d.	Hybrid Automation Framework 
<p></p>
2.	Data Driven Automation Framework 
<br/>a.	Repeated use of Test Scripts with Different Inputs and Response Data coming out of Predefined Dataset 
<br/>b.	Easy to implement in IBM - RFT with the help of Datapools 
<br/>c.	Helps in Reducing Coding for Large Test Cases 
<br/>d.	Ease of Testing of Time-Consuming & Complex Test Cases \
<p></p>
3.	Keyword Driven Automation Framework 
<br/>a.	As the Name suggests, it enables Keyword Driven Testing or Table Driven Testing 
<br/>b.	Data & Keyword Tables being Independent of the Automation Tool 
<br/>c.	Enables Documentation of the Functionality of the Application under Test (AUT) in A Tabular Format 
<p></p>
4.	Modular Automation Framework 
<br/>a.	Test Script Modularity Framework: Enables creation of Small, Independent Scripts representing Modules & Functions of the Application under Test (AUT) 
<br/>b.	Test Library Architecture Framework: Enables creation of Library Files representing Modules & Functions of the Application under Test (AUT)
<p></p>
5.	Hybrid Automation Framework 
<br/>a.	It is the Most Popularly Implemented Framework 
<br/>b.	It is a Combination of the Three Types of Frameworks described before 
<br/>c.	It has an Ability of Evolving Itself Over a Passage of Time and Over Many Projects 
<p></p>
6.	How to Implement Test Automation Framework Methodology 
<br/>a.	Identification of the Scope of Testing: Company Oriented, Product Oriented, Project Oriented 
<br/>b.	Identification of the Needs of Testing: Identify Types of testing e.g. FT, Web Services etc. and application / modules to be tested 
<p></p>
7.	Ten Steps to Implement Automation Framework Approach
<br/>a.	Identification of the Scope of Testing: Company Oriented, Product Oriented, Project Oriented 
<br/>b.	Identification of the Needs of Testing: Identify Types of testing e.g. FT, Web Services etc. and application / modules to be tested 
<br/>c.	Identification of the Requirements of Testing: Find out the Nature of Requirements, Identification of type of actions for each requirement & identification of High Priority Requirements 
<br/>d.	Evaluation of the Test Automation Tool: Preparation of Evaluation Checklist, Identification of the Candidate Tools Available, Sample Run, Rate & Select the Tool, Implementation & Training 
<br/>e.	Identification of the Actions to be automated: Actions, Validations & Requirements supported by the Tool 
<br/>f.	Design of the Test Automation Framework: Framework Guidelines, Validations, Actions Involved, Systems Involved, Tool Extensibility Support, Customs Messages & UML Documentation 
<br/>g.	Design of the Input Data Bank: Identification of Types of Input file, Categorization & Design of File Prototypes 
<br/>h.	Development of the Automation Framework: Development of Script based upon Framework Design, Driver Scripts, Worker Scripts, Record / Playback, Screen / Window / Transaction, Action / Keyword & Data Driven 
<br/>i.	Population of Input Data Bank: Different Types of Data Input, Population of Data from Different Data Sources, Manual Input of Data and Parent – Child Data Hierarchy 
<br/>j.	Configuration of the Schedulers: Identify Scheduler Requirements & Configure the Schedulers 
</div>
</asp:Content>

<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" ID="RightBar" />               
</asp:Content>

<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" ID="BottomBar" />           
</asp:Content>
