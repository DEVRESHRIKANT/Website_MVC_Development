<%@ Page Title="" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="MVC.aspx.cs" Inherits="DEVRE.MVC" %>
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
<p>MVC:</p>

<p>	3 Things needs to specify route</p>
<br/>1.	URL Pattern: can include placeholder in URL pattern so that variable data can be passed to request handler without requiring query string
<br/>2.	Handler: can be physical file (.aspx) or controller class
<br/>3.	Name for Route: Name is optional.

<p>	Levels at which filters can applied</p>
<br/>1.	Action Method
<br/>2.	Controller
<br/>3.	Application
<p>	Start of code Block in Razor view: @</p>
<p>	Start of code Block in ASPX view: <%  %>;</p>
<p>	Extensions of Razor view:</p>
<p>.cshtml – for C#</p>
<p>.vbhtml – for VB</p>

<p>	Comments using Razor syntax:</p>
<p> * This is a Comment * @</p>

<p>	NHibernate can:</p>
<br/>-	Send multiple updates / inserts / delete at once
<br/>-	Load multiple proxies of a type at once
<br/>-	Load multiple collections of a type at once
<br/>-	Execute object oriented DML statements
<br/>-	Manually group queries in a single round trip
<br/>-	Entity Framework does nothing from above.

<p>	Explain MVC:</p>
<br/>M (Model) – part of code that known things
<br/>V (View) – part of code that shows things the model knows
<br/>C (Controller) – part of code that gets commands from User and tells the view what to show and he Model what to know.
<br/>e.g. TV – Channal Cable provider (Model)
<br/>- Screen Display (View)
<br/>- Remote Buttons (Controller)

<p>	Reduce Load time of Web Application Tips:</p>
<br/>1.	Use “css- based image sprites”, instead of multiple images to reduce HTTP request
<br/>2.	Rely on Robust CSS
<br/>3.	Minimize all javascript files (using tool jscompress.com) to reduce the amount of data transferred.
<br/>4.	Combine external javascript files to reduce HTTP requests.
<br/>5.	Watch application load using tool “YSlow” or Webskit’s resources inspector to identify and bottleneck.
<br/>6.	Analyse database queries and javascript functions.
<p>	Types of Filters in MVC:</p>
<br/>1.	Authrization – i.e. Require HTTP Attribute, Authorize attribute, sequence to follow
<br/>2.	Action – 
<br/>3.	Result – i.e. Output Cache Attribute
<br/>4.	Exception

<p>	Role of controller in MVC Application:</p>
<br/>-	Controller responds to user interactions, with the application, by selecting action method to execute and also selecting the view to render.

<p>	Return Types of Controller action method</p>
<br/>1.	View Result
<br/>2.	JavaScript Result
<br/>3.	Redirect Result
<br/>4.	Content Result
<br/>5.	Json Result

<p>	3 Segments of default Route, in MVC Application</p>
<br/>1.	1st Segment – Controller Name. i.e. Customer
<br/>2.	2nd Segment – Action Method Name. i.e. Details
<br/>3.	3rd Segment – Parameter that is passed to Action method. I.e. 5
<br/>i.e. http://Shree.com/customer/details/5
<p>	Settings for routing work, where?</p>
<br/>1.	Web.config – ASP.Net routing has to be enable here
<br/>2.	Global.asax – Route table is created in application, start event handler, of global.asax file.
<p>	MVC Framework folder structure</p>
<br/>1.	App_Data: contains database files
<br/>2.	Content: contains static content for web application.
<br/>i.e. css, images, et.
<br/>3.	Controller: contains controller classes that use Architecture.
<br/>4.	Models: consist of the model classes that are used to interact with content and go in sync with MVC Architecture of ASP.Net
<br/>5.	Scripts: JavaScript files that include AJAX library and JQuery script files.
<br/>6.	Views: contains frontend view that will be seen after model is rendered.

<p>	Page Lifecycle of MVC</p>
<br/>1.	Application Initialization
<br/>2.	Routing
<br/>3.	Instantiate and Execute Controller
<br/>4.	Locate and Invoke controller action
<br/>5.	Instantiate and Render view

<p>	Create Dynamic Property with ViewBag</p>
<p>List (string)countries = new List (string)();</p>
<br/>Contries.Add (“India”);
<br/>Contries.Add(“USA”);

<p>ViewBag.Countries = countries;</p>
<p>•	A country is dynamic property.</p>

    </div>
</asp:Content>


<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" ID="RightBar" />               
</asp:Content>

<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" ID="BottomBar" />           
</asp:Content>
