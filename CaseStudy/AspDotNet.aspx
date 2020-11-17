<%@ Page Title="" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="AspDotNet.aspx.cs" Inherits="DEVRE.AspDotNet" %>

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
<asp:Content ID="Content1" ContentPlaceHolderID="cpl_HeadBar" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="TopBar" runat="server">
    <ShreeMain:ShreeTop runat="server" id="TopBarBar"/>
</asp:Content>
<asp:Content ID="LeftBar" ContentPlaceHolderID="LeftBar_Shree_Web"  runat="server">
    <ShreeMain:ShreeLeft runat="server" ID="ShreeLeft" />              
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cpl_MainContentPlaceHolder" runat="server">
    <div>
        <p>
        Development</p>
<p>Cross-Page Posting:</p>
<br/>-	By default ASP.NET submit form to same page. In cross-page posting, the form is submitted to a different page.
<br/>-	This is done by setting the “PostBackURL” property of the button (that causes postback) to the desired page.
<br/>-	In the code-behind of the page to which the form has been posted, use the “Find Control” method of the “Previous Page” property to reference the data of the control in the first page.
<p>Literals and their types:</p>
<br/>-	Integer - Int, uInt, long, ulong
<br/>-	Real -Float, double, decimal
<br/>-	Boolean  True & False
<br/>-	 Single Character - “H”
<br/>-	String  “Hello”
<br/>-	Backslash Charater 
<br/>-	Null

<p>Errors Type:</p>
<br/>1.	Syntax
<br/>2.	Logic
<br/>3.	Runtime

<p>Variables Type:</p>
<br/>1.	Static
<br/>2.	Instance
<br/>3.	Value Parameter
<br/>4.	Reference Parameter
<br/>5.	Array Element
<br/>6.	Output Parameter
<br/>7.	Local Variables

<p>Special Operators:</p>
<br/>1.	Is (relational)
<br/>2.	As (relational)
<br/>3.	Typeof(type)
<br/>4.	Sizeof (Size)
<br/>5.	New (Object Creator)
<br/>6.	.dot (member access)
<br/>7.	Checked (overflow checking)
<br/>8.	Unchecked (prevention of overflow checking)

<p>Access Modifier:</p>
<br/>-	Public, Static, Void
<br/>-	Public Public declared variables or methods are accessible anywhere in application
<br/>-	Static Declared variable or methods are globally accessible without creating an instance of the class.
<br/>-	Void is type modifier that state that method or variable does not return any value.

<p>DotNet Framework</p>
<br/>1.	Silverlight: A cross-browser, cross-platform implementation of .net framework for building media experience and rich interactive apps for web, desktop, phone.

<br/>2.	WCF Data Services: Technology enable to create services that use the open data protocol (OData), which exposes and consume data over the web r intranet by using semantic of representational State of Transfer (REST)

<br/>3.	Entity Framework: Technology that supports development of data-oriented software application

<br/>4.	Reactive Extensions: A library for composing asynchronous and event based programs for .NET framework, Silverlight and windows phone 7 by using observable sequence and LINQ- style Query operators.

<br/>5.	Microsoft Surface: Technology supports high-end graphics & multiuser interaction.

<br/>6.	Windows Identity Foundation (WIF): A set of .NET framework classes that help you build claims-aware, relying party applications and security token services.

<br/>7.	Windows Server AppFabric: A set of integrated technologies that make it easier to build, scale, and mange web and composite apps that runs on IIS.

<p>ASP.NET Security Controls:</p>
<br/>-	asp:Login>: Provide standardlogin capability that allows user to enter their credentials.
<br/>-	asp:LoginName>: Allows you to display the ame of the logged-in user.
<br/>-	asp:LoginStatus>:  Displays whether user is authenticated or not
<br/>-	asp:LoginView>: Provides various login views depending on selected tamplates.
<br/>-	asp:PasswordRecover>: email the users their lost password

<p>Repeater Control Template List</p>
<br/>-	Item Template
<br/>-	Alternating Item Template
<br/>-	Separator Template
<br/>-	Header Template
<br/>-	Footer Template

<p>Exceptions in .NET</p>
<br/>-	ArgumntException, ArgumentNullException, ArgumentOutofRangeException, ArithmeticException, DivideByZeroException, OverFlowException, IndexOutofRangeException, InvalidCastException, InvalidOperationException, IOEndofStreamException, NullReferenceException, OutofMemoryException, StackOverFlowException, etc.

<p>Built-In Objects in ASP.NET</p>
<br/>-	Application
<br/>-	Request
<br/>-	Response
<br/>-	Sever
<br/>-	Session
<br/>-	Context
<br/>-	Trace

<p>Cookies in ASP.NET</p>
<br/>-	Session Cookies: Resides on client machine for a single session, until user doesn’t log out.
<br/>-	Persistent Cookies: Resides on user’s machine for a period specified for its expiry. E.g. never, today.

<p>Namespace are necessary to create localized application.</p>
<br/>-	System.Globalization
<br/>-	System.Resources

<p>ADO.NET  Components</p>
<br/>-	DataSet
<br/>-	DataReader
<br/>-	DataAdaptor
<br/>-	Command
<br/>-	Connection

<p>Range Validator Controls Support DataTypes</p>
<br/>-	Integer
<br/>-	Double
<br/>-	String
<br/>-	Currency
<br/>-	Date

<p>Base Class: The class, whose members are inherited, is called base class.</p>

<p>Manifest: Resources, Types, References are described in block of data called manifest</p>

<p>MetaData: </p>
<br/>1.	Version Assembly
<br/>2.	Security Identity
<br/>3.	Scope of Assembly
<br/>4.	Resolve Reference to Resources & Class

<p>Assembly: Unit of EXE, DLL, HTML</p>

<p>Authentication: Identify User</p>

<p>Authorization: Access Rights</p>

<p>Modifiers: Abstract, Sealed, Virtual, Const, Event, Extern, Override, Readonly, Static, New</p>

<p>Types of Array:</p>
<br/>1.	Single Dimensional
<br/>2.	Multi-Dimensional
<br/>3.	Jagged Array

<p>Validators in ASP.Net:</p>
<br/>1.	Required Field
<br/>2.	Range
<br/>3.	Compare
<br/>4.	Custom
<br/>5.	Regular
<br/>6.	Summary

<p>Session State Management Options:</p>
<br/>1.	In-Process: Stores the session in memory on the web server
<br/>2.	Out-Of-Process: Store data in external server
<br/>-	External server may be either SQL Server or State Server
<br/>-	All Objects stored in session are required to be serializable for out-of-process state management

<p>Type of Cache:</p>
<br/>1.	Output Cache: stores & responses from ASP.Net page
<br/>2.	Fragment Caching: It caches the portion of the page generated by request.
<br/>3.	Data Caching: Programmatic way to cache objects for performance.

<p>Page-Life-Cycle; Event List:</p>
<br/>1.	Page_PreInit
<br/>2.	Page_init
<br/>3.	Page_InitComplete
<br/>4.	Page_PreLoad
<br/>5.	Page_Load
<br/>6.	Page_LoadComplete
<br/>7.	Page_PreRender
<br/>8.	Render

<p>Global.Asax, Event Handlers:</p>
<br/>1.	Application_Start
<br/>2.	Application_End
<br/>3.	Application_AcquireRequestState
<br/>4.	Application_AuthenticateRequest
<br/>5.	Application_AuthorizeRequest
<br/>6.	Application_BeginRequest
<br/>7.	Application_Dispose
<br/>8.	Application_EndRequest
<br/>9.	Application_Error
<br/>10.	Application_PostRequestHandlerExecute
<br/>11.	Application_PreRequestHandlerExecute
<br/>12.	Application_PreSendRequestContent
<br/>13.	Application_PreSenderRequestHeader
<br/>14.	Application_ReleaseRequestState
<br/>15.	Application_ResolveRequestCache
<br/>16.	Application_UpdateRequestCache
<br/>Session State Events: Session_Start, Session_End


<p>Undefined means variable has been declared has not yet been assigned a value.</p>

<br/>“==” checks only equality
<br/>“===” checkes for equality as well as the type
<br/>“var a = 2” Not globally assigned, specific to function
<br/>A = 2 Declare as global function

<p>How to create New Object in JavaScript?</p>
<br/>Var obj = new Object(); or var obj = {}

<p>How to assign object properties?</p>
<br/>Obj[“age”] = 17 or obj.age = 17

<p>JQuery: Simplifies HTML document traversing, animating, event handling, & AJAX interactions for the purpose of quick web development needs.</p>

<p>Event Bubbling: Describes the behavior of events in child and parent nodes in the document object Model (DOM)</p>

<p>Change Style / Class on any element?</p>
<br/>-	Document.getElementById(“myText”).style.fontsize = “20”;
<br/>-	Document.getElementById(“myText”).className =  “anyclass”;
<p>Project Plan Deliverables:</p>
<br/>1.	Feasibility Study Document
<br/>2.	Point of Contact
<br/>3.	Technology solution document
<br/>4.	Project charter
<br/>5.	Project Trade Off Matrix & status summary
<br/>6.	Project Organization
<br/>7.	Activity List
<br/>8.	Business Requirement Document
<br/>9.	Work Product Identification
<br/>10.	Change Control
<br/>11.	Project Schedule
<br/>12.	Financial & Budgetary control
<br/>13.	Estimate cost & completion
<br/>14.	Service Level Agreement (SLA)
<br/>15.	Resource Loading Profile
<br/>16.	Disaster Recovery plan
<br/>17.	Project Requirements
<br/>18.	Meeting Minutes
<br/>19.	Risk Identification
<br/>20.	Configuration Management Plan
<br/>21.	Quality Plan / Test Scenario & Test Plan
<br/>22.	Top 5 Issues
<br/>23.	Action Item status
<br/>24.	Security Management

<br/>Scrum: Agile Framework. Improve productivity in team, ability to prioritize work, use of backlog for completing items in a series of short iterations or sprints, daily measure, process and communication.
    </div>
</asp:Content>

<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" ID="RightBar" />               
</asp:Content>

<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" ID="BottomBar" />           
</asp:Content>
