<%@ Page Title="SharePoint" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="SharePoint.aspx.cs" Inherits="DEVRE.SharePoint" %>

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
<br/>        Basic Intro SharePoint Architecture Questions
<p>I.	SharePoint Server Users:</p>
<br/>i.	SpSQL – Database Server Service A/C
<br/>ii.	SpAdministrator – Installation / Admin A/c
<br/>iii.	SpSsp – Search Service Provider
<br/>iv.	SpContent – Content Access
<br/>v.	SpApplication – Application Access
<br/>vi.	SpSearch – Search Service

<p>J.	SharePoint Members</p>
<br/>i.	Schema Admins
<br/>ii.	Enterprise Admins
<br/>iii.	Domain Admins
<br/>iv.	Exchange Organization Administrators
<br/>v.	Enterprise Administrators



<p>1) What are Web Applications in SharePoint?</p>
<br/>An IIS Web site created and used by SharePoint 2010. Saying an IIS virtual server is also an acceptable answer.
<p>2) What is an application pool?</p>
<br/>A group of one or more URLs that are served by a particular worker process or set of worker processes.
<p>3) Why are application pools important?</p>
<br/>They provide a way for multiple sites to run on the same server but still have their own worker processes and identity.
<p>4) What are zones?</p>
<br/>Different logical paths (URLs meaning) of gaining access to the same SharePoint Web application.
<p>5) What are Web Application Policies?</p>
<br/>Enables security policy for users at the Web application level, rather than at the site collection or site level. Importantly, they override all other security settings.
<p>6) What is a site collection?</p>
<br/>A site collection contains a top-level website and can contain one or more sub-sites web sites that have the same owner and share administration settings.
<p>7) What are content databases?</p>
<br/>A content database can hold all the content for one or more site collections.
<p>8) What is a site?</p>
<br/>A site in SharePoint contains Web pages and related assets such as lists, all hosted within a site collection.
<p>9) What are My Sites?</p>
<br/>Specialized SharePoint sites personalized and targeted for each user.
<p>10) What is the difference between Classic mode authentication and Claims-based authentication?</p>
<br/>As the name implies, classic authentication supports NT authentication types like Kerberos, NTLM, Basic, Digest, and anonymous. Claims based authentication uses claims identities against a against a trusted identity provider.
<p>11) When would you use claims, and when would you use classic? </p>
<br/>Classic is more commonly seen in upgraded 2007 environments whereas claims are the recommended path for new deployments.
<p>12) Describe the potential components for both a single server, and multiple servers, potentially several tiered farms:</p>
<br/>A single-server SharePoint Server 2010 environment leverages a built-in SQL Server 2008 Express database. The problems with this environment is scalability, not being able to install the with built-in database on a domain controller, the database cannot be larger than 4 GB, and you cannot use User Profile Synchronization in a single server with built-in database installation.
<br/>An example of a multiple tier farm would be a three-tier topology, considered one of the more efficient physical and logical layouts to supports scaling out or scaling up and provides better distribution of services across the member servers of the farm. This is considered a good architecture since one can add Web servers to the Web tier, add app servers to the application tier, and add database servers to the database tier.

<p>SharePoint Backup and Restore Questions</p>
<p>13) What are some of the tools that can be used when backing up a SharePoint 2010 environment?</p>
<br/>•	SharePoint farm backup and recovery
<br/>•	SQL Server
<br/>•	System Center Data Protection Manager
<p>14) What Microsoft tool can be used for incremental backups?</p>
<br/>System Center Data Protection Manager

<p>Managed Metadata Questions</p>
<p>15) What is Managed Metadata?</p>
<br/>Managed metadata is a hierarchical collection of centrally managed terms that you can define, and then use as attributes for items.
<p>16) What are Terms and Term Sets?</p>
<br/>A term is a word or a phrase that can be associated with an item. A term set is a collection of related terms.
<p>17) How do Terms And Term Sets relate to Managed Metadata?</p>
<br/>Managed metadata is a way of referring to the fact that terms and term sets can be created and managed independently from the columns themselves.
<p>18) Are there different types of Term Sets?</p>
<br/>There are Local Term Sets and Global Term Sets, one created within the context of a site collection and the other created outside the context of a site collection, respectively.
<p>19) How are terms created and used?</p>
<br/>There are several ways; however the most common is to use the Term Store Management Tool.
<p>20) How is Managed Metadata, and the related Term technology used?</p>
<br/>Through the UI, the most common use is through the managed metadata list column which allows you to specify the term set to use. It also related to searching and enhancing the user search experience.

<p>Sandbox Solutions Questions</p>
<p>21) What is a sandboxed solution?</p>
<br/>Components that are deployed to run within the sandboxed process rather than running in the production Internet Information Services (IIS) worker process.
<p>22) What are some examples of things that might run within the SharePoint sandbox?</p>
<br/>Any of the following are acceptable answers:


<p>Web Parts</p>
<br/>Event receivers
<br/>Feature receivers
<br/>Custom Microsoft SharePoint Designer workflow activities
<br/>Microsoft InfoPath business logic
<br/>others….
<p>23) Why are sandboxed solutions used?</p>
<br/>Primarily because they promote high layers of isolation. By default they run within a rights-restricted, isolated process based around Code Access Security (CAS). Isolation is possible to increase with activities like running the sandboxing service on only specific SharePoint 2010 servers.

<p>SharePoint Search Questions</p>
<p>24) What is a content source in relation to SharePoint search? What’s the minimum amount of content sources?</p>
<br/>A content source is a set of options that you can use to specify what type of content is crawled, what URLs to crawl, and how deep and when to crawl. You must create at least one content source before a crawl can occur.
<p>25) What is a search scope?</p>
<br/>A search scope defines a subset of information in the search index. Users can select a search scope when performing a search.
<p>26) What is a federated location with SharePoint search?</p>
<br/>Federated locations provide information that exists outside of your internal network to your end-users.
<p>27) How does managed metadata affect search?</p>
<br/>Enhances the end-user search experience by mapping crawled properties to managed properties. Managed properties show up in search results and help users perform more successful queries.
<p>28) What is query logging in SharePoint 2010?</p>
<br/>Collects information about user search queries and search results that users select on their computers to improve the relevancy of search results and to improve query suggestions.
<p>29) What authentication type does the SharePoint crawler use?</p>
<br/>The crawl component requires access to content using NTLM authentication.


<p>Services Architecture Questions</p>
<p>30) Please describe what a Service Application is in SharePoint 2010.</p>
<br/>Service applications in SharePoint 2010 are a set of services that can possibly be shared across Web applications. Some of these services may or may not be shared across the SharePoint 2010 farm. The reason these applications are shared is the overall reduction of resources required to supply the functionality these services cultivate.
<p>31) Please provide an example of one of these service applications.</p>
<br/>Any of the below are acceptable answers:
<p>Access Services</p>
<br/>Business Data Connectivity service
<br/>Excel Services Application
<br/>Managed Metadata service
<br/>PerformancePoint Service Application
<br/>Search service
<br/>Secure Store Service
<br/>State service
<br/>Usage and Health Data Collection service
<br/>User Profile service
<br/>Visio Graphics Service
<br/>Web Analytics service
<br/>Word Automation Services
<br/>Microsoft SharePoint Foundation Subscription Settings Service
<p>32) What are Service Application Groups used for?</p>
<br/>Just provides a logical grouping of services that are scoped to a particular Web Application.
<p>33) How are Service Applications deployed in terms of IIS (Internet Information Services)?</p>
<br/>They are provisioned as a single Internet Information Services (IIS) Web site.
<p>34) Explain how connections are managed with Service Applications.</p>
<br/>A virtual entity is used that is referred to as a proxy, due to label in PowerShell.
<p>35) What are some common examples of SharePoint 2010 services architectures, and what are the advantages of each design?</p>
<br/>The three most popular designs are single farms with either a single service application group or multiple service application groups, or Enterprise services farms.
<br/>Single farms with a single service application group are generally the most common, and have the advantages of easy deployment, simple service application allocation, effective resource utilization and cohesive management.
<p>Single farms with multiple service application groups is less common, and have the advantage of potential individual management of service applications as well as allowing data isolation, and while being more complex to deploy and maintain allows targeting of sites to particular service applications.</p>
<br/>Enterprise Service Farms is pretty uncommon as it is a complete farm dedicated to Service Applications but promotes autonomous management and high levels of data isolation.
<p>36) Are there any other type of relevant service architectures?</p>
<br/>Depending on the environment requirements, a specialized farm can also be used in order to deploy specific services tailored to the organizational requirements which can aid in scaling out and conservation of resources.
<p>37) What is the User Profile service?</p>
<br/>Allows configuring and managing User profile properties, Audiences, Profile synchronization settings, organization browsing and management settings, and My Site settings.
<p>38) What are User Profiles?</p>
<br/>Aggregates properties from diverse identity content sources together to create unified and consistent profiles across an organization, used throughout the SharePoint environment.
<p>39) What is Excel Services?</p>
<br/>Allows sharing, securing, managing, and using Excel 2010 workbooks in a SharePoint Server Web site or document library. Excel Services consists of the Excel Calculation Services (ECS), Microsoft Excel Web Access (EWA), and Excel Web Services (EWS) components.
<p>40) What is PerformancePoint Services?</p>
<br/>Allows users to monitor and analyze a business by building dashboards, scorecards, and key performance indicators (KPIs).
<p>41) What is Visio Services?</p>
<br/>Allows users to share and view Microsoft Visio Web drawings. The service also enables data-connected Microsoft Visio 2010 Web drawings to be refreshed and updated from various data sources.
<p>42) What is Access Services?</p>
<br/>Allows users to edit, update, and create linked Microsoft Access 2010 databases that can be viewed and manipulated by using an internet browser, the Access client, or a linked HTML page.
<p>43) What is the Secure Store Service (SSS)?</p>
<br/>A secure database for storing credentials that are associated with application IDs
<p>44) What is Content Deployment?</p>
<br/>Content deployment enables you to copy content from a source site collection to a destination site collection.


<p>Backup / DR Questions</p>
<p>45) Describe how redundancy can be built into a SharePoint environment. Please be specific in regards to any auxiliary components.</p>
<br/>Multiple front-end web servers (WFE’s) can be deployed and correlated through Windows NLB or anything approach. Application servers can be deployed into the farm for a variety of purposes, depending on organizational requirements. Databases can be clustered or mirrored, again depending on requirements and environment.
<p>46) From a basic standpoint, what is the difference between SQL clustering and mirroring?</p>
<br/>Clustering provides a failover scenario whereby one or more nodes can be swapped as active depending on whether a node goes down. In mirroring, transactions are sent directly from a principal database and server to a mirror database to establish essentially a replica of the database.


<p>Governance Questions</p>
<p>47) What Is Governance in terms of SharePoint 2010?</p>
<br/>Governance is the set of policies, roles, responsibilities, and processes that guide, direct, and control how an organization’s business divisions and IT teams cooperate to achieve business goals.
<p>48) What are some useful, OOB features of SharePoint that aid with governance of an environment?</p>
<br/>Any of the below are acceptable answers. There are some others but these are the major ones that I generally look for from a candidate:
<br/>Site templates – consistent branding, site structure, and layout can be enforce a set of customizations that are applied to a site definition.
<br/>Quotas – limits to the amount of storage a site collection can use.
<br/>Locks - prevent users from either adding content to a site collection or using the site collection.
<br/>Web application permissions and policies – comprehensive security settings that apply to all users and groups for all site collections within a Web application.
<br/>Self-service site creation - enables users to create their own site collections, thus must be incorporated into a governance scheme.


<p>Monitoring Questions</p>
<p>49) Describe the monitoring features that are baked into SharePoint 2010.</p>
<br/>Diagnostic logging captures data about the state of the system, whereas health and usage data collection uses specific timer jobs to perform monitoring tasks, collecting information about:
<br/>•	Performance Counter Fata
<br/>•	Event Log Data
<br/>•	Timer Service Data
<br/>•	Metrics For Site Collections and Sites
<br/>•	Search Usage Data


<p>General Workflow Questions</p>
<p>50) What is a declarative workflow? Can non-authenticated users participate in workflows?</p>
<br/>Workflows created by using Microsoft SharePoint Designer 2010, the default setting enables deployment of declarative workflows. Yes, however you do not give non-authorized users access to the site. The e-mail message and attachments sent from notifications might contain sensitive information

<p>SharePoint (http://msdn.microsoft.com/en-us/rampup/dd221355.aspx) </p>

<p>Introduction to Web Parts</p>
Did you know that in SharePoint you can build pages as easy as in ASP.NET – and allow end users to create dashboards? Web parts allow for creating components of Web user interface that can be reused on multiple Web pages. These are introduced in ASP.NET and built on in SharePoint where they can be added to pages by end users and managed by IT Professionals. In this topic you will learn about building simple Web parts for SharePoint and how to connect them back to SharePoint site data.

<p>Data Lists for Developers</p>
Did you know that SharePoint developers can work with data from lists that users get access to too? Data lists provide data storage for end users in SharePoint. End users can create lists with schema all through the SharePoint user interface and they can create, edit, and view the data. All of this data can be programmatically accessed by developers and this topic is all about that.

<p>Programming Event Handlers</p>
Did you know that SharePoint developers can automatically process data that your users upload via a spreadsheet? Event handlers (or event receivers) are custom code that runs on the SharePoint server in response to something that happens on the server. Event handlers can be useful for running business logic in response to data being added to the site. This topic shows how to create simple event handlers and investigates ways that event handlers can be used in SharePoint.

<p>Workflow in SharePoint</p>
Did you know that you can write WF workflows in SharePoint without having to worry about storage, persistence, or how to interact with the user? Workflow in SharePoint allows for implementation of processes that require interaction such as email approvals or form completion by people in your organization. This topic shows you how to create simple workflows in SharePoint using Visual Studio that involve approvals from people by email and for meeting room resource bookings with an administrator.

<p>Silverlight and SharePoint</p>
Did you know that you can build rich Internet applications with SharePoint? Silverlight is a new Web user interface technology from Microsoft that allows for easy implementation of animations and videos. This topic shows how a SharePoint user interface can be enhanced by using Silverlight in Web parts as part of a SharePoint site.



<p>Sharepoint Questions and Answers</p>
What is Microsoft Windows SharePoint Services? How is it related to Microsoft Office SharePoint Server 2007?

<br/>Windows SharePoint Services is the solution that enables you to create Web sites for information sharing and document collaboration. Windows SharePoint Services " a key piece of the information worker infrastructure delivered in Microsoft Windows Server 2003 " provides additional functionality to the Microsoft Office system and other desktop applications, and it serves as a platform for application development. 

<br/>Office SharePoint Server 2007 builds on top of Windows SharePoint Services 3.0 to provide additional capabilities including collaboration, portal, search, enterprise content management, business process and forms, and business intelligence. 

<p>What is Microsoft SharePoint Portal Server? </p>

SharePoint Portal Server is a portal server that connects people, teams, and knowledge across business processes. SharePoint Portal Server integrates information from various systems into one secure solution through single sign-on and enterprise application integration capabilities. It provides flexible deployment and management tools, and facilitates end-to-end collaboration through data aggregation, organization, and searching. SharePoint Portal Server also enables users to quickly find relevant information through customization and personalization of portal content and layout as well as through audience targeting. 

<p>What is Microsoft Windows Services? </p>

Microsoft Windows Services is the engine that allows administrators to create Web sites for information sharing and document collaboration. Windows SharePoint Services provides additional functionality to the Microsoft Office System and other desktop applications, as well as serving as a plat form for application development. SharePoint sites provide communities for team collaboration, enabling users to work together on documents, tasks, and projects. The environment for easy and flexible deployment, administration, and application development. 

<p>What is the relationship between Microsoft SharePoint Portal Server and Microsoft Windows Services? </p>

Microsoft SharePoint Products and Technologies (including SharePoint Portal Server and Windows SharePoint Services) deliver highly scalable collaboration solutions with flexible deployment and management tools. Windows SharePoint Services provides sites for team collaboration, while Share Point Portal Server connects these sites, people, and business processes"facilitating knowledge sharing and smart organizations. SharePoint Portal Server also extends the capabilities of Windows SharePoint Services by providing organizational and management tools for SharePoint sites, and by enabling teams to publish information to the entire organization. 

<p>Who is Office SharePoint Server 2007 designed for? </p>

Office SharePoint Server 2007 can be used by information workers, IT administrators, and application developers. is designed 

<p>What are the main benefits of Office SharePoint Server 2007? </p>

<br/>Office SharePoint Server 2007 provides a single integrated platform to manage intranet, extranet, and Internet applications across the enterprise. 

<br/>* Business users gain greater control over the storage, security, distribution, and management of their electronic content, with tools that are easy to use and tightly integrated into familiar, everyday applications.
<br/>* Organizations can accelerate shared business processes with customers and partners across organizational boundaries using InfoPath Forms Services driven solutions.
<br/>* Information workers can find information and people efficiently and easily through the facilitated information-sharing functionality and simplified content publishing. In addition, access to back-end data is achieved easily through a browser, and views into this data can be personalized.
<br/>* Administrators have powerful tools at their fingertips that ease deployment, management, and system administration, so they can spend more time on strategic tasks.
<br/>* Developers have a rich platform to build a new class of applications, called Office Business Applications, that combine powerful developer functionality with the flexibility and ease of deployment of Office SharePoint Server 2007. Through the use of out-of-the-box application services, developers can build richer applications with less code. 

<p>What is the difference between Microsoft Office SharePoint Server 2007 for Internet sites and Microsoft Office SharePoint Server 2007? </p>

<br/>Microsoft Office SharePoint Server 2007 for Internet sites and Microsoft Office SharePoint Server 2007 have identical feature functionality. While the feature functionality is similar, the usage rights are different. 

<br/>If you are creating an Internet, or Extranet, facing website, it is recommended that you use Microsoft Office SharePoint Server 2007 for Internet sites which does not require the purchase client access licenses. Websites hosted using an "Internet sites" edition can only be used for Internet facing websites and all content, information, and applications must be accessible to non-employees. Websites hosted using an "Internet sites" edition cannot be accessed by employees creating, sharing, or collaborating on content which is solely for internal use only, such as an Intranet Portal scenario. See the previous section on licensing for more information on the usage scenarios. 

<p>What suites of the 2007 Microsoft Office system work with Office SharePoint Server 2007? </p>

<br/>Office Outlook 2007 provides bidirectional offline synchronization with SharePoint document libraries, discussion groups, contacts, calendars, and tasks. 
<br/>Microsoft Office Groove 2007, included as part of Microsoft Office Enterprise 2007, will enable bidirectional offline synchronization with SharePoint document libraries. 
<br/>Features such as the document panel and the ability to publish to Excel Services will only be enabled when using Microsoft Office Professional Plus 2007or Office Enterprise 2007. 
<br/>Excel Services will only work with documents saved in the new Office Excel 2007 file format (XLSX). 

<p>How do I invite users to join a Windows SharePoint Services Site? Is the site secure? </p>

SharePoint-based Web sites can be password-protected to restrict access to registered users, who are invited to join via e-mail. In addition, the site administrator can restrict certain members' roles by assigning different permission levels to view post and edit. 

<p>Can I post any kind of document? </p>

You can post documents in many formats, including .pdf, .htm and .doc. In addition, if you are using Microsoft Office XP, you can save documents directly to your Windows SharePoint Services site. 

<p>Can I download information directly from a SharePoint site to a personal digital assistant (PDA)? </p>

No you cannot. However, you can exchange contact information lists with Microsoft Outlook. 

<p>How long does it take to set up the initial team Web site? </p>

It only takes a few minutes to create a complete Web site. Preformatted forms let you and your team members contribute to the site by filling out lists. Standard forms include announcements, events, contacts, tasks, surveys, discussions and links. 

<p>Can I create custom templates? </p>

Yes you can. You can have templates for business plans, doctor's office, lawyer's office etc. 

<p>How can I make my site public? By default, all sites are created private. </p>

<br/>If you want your site to be a public Web site, enable anonymous access for the entire site. Then you can give out your URL to anybody in your business card, e-mail or any other marketing material. The URL for your Web site will be: http:// yoursitename.wss.bcentral.com 

<br/>Hence, please take special care to name your site. These Web sites are ideal for information and knowledge intensive sites and/or sites where you need to have shared Web workspace. Remember: Under each parent Web site, you can create up to 10 sub-sites each with unique permissions, settings and security rights. 

<p>How do the sub sites work? </p>

<br/>You can create a sub site for various categories. For example: 

<br/>* Departments - finance, marketing, IT
<br/>* Products - electrical, mechanical, hydraulics
<br/>* Projects - Trey Research, Department of Transportation, FDA
<br/>* Team - Retention team, BPR team
<br/>* Clients - new clients, old clients
<br/>* Suppliers - Supplier 1, Supplier 2, Supplier 3
<br/>* Customers - Customer A, Customer B, Customer C
<br/>* Real estate - property A, property B 
<br/>The URLs for each will be, for example: 
<br/>* http://yoursitename.wss.bcentral.com/finance
<br/>* http://yoursitename.wss.bcentral.com/marketing

<br/>You can keep track of permissions for each team separately so that access is restricted while maintaining global access to the parent site. 

<p>How do I make my site non-restricted? </p>

If you want your site to have anonymous access enabled (i.e., you want to treat it like any site on the Internet that does not ask you to provide a user name and password to see the content of the site), follow these simple steps: 
<br/>1.	Login as an administrator
<br/>2.	Click on site settings
<br/>3.	Click on Go to Site Administration
<br/>4.	Click on Manage anonymous access
<br/>5.	Choose one of the three conditions on what Anonymous users can access:
<br/>•	Entire Web site
<br/>•	Lists and libraries
<br/>•	Nothing 
<br/>Default condition is nothing; your site has restricted access. The default conditions allow you to create a secure site for your Web site. 

<p>Can I get domain name for my Web site? </p>

Unfortunately, No. At this point, we don't offer domain names for SharePoint sites. But very soon we will be making this available for all our SharePoint site customers. Please keep checking this page for further update on this. Meanwhile, we suggest you go ahead and set up your site and create content for it. 

<p>What are picture libraries? </p>

Picture libraries allow you to access a photo album and view it as a slide show or thumbnails or a film strip. You can have separate folder for each event, category, etc 

<p>What are the advantages of a hosted SharePoint vs. one that is on an in-house server? </p>

<br/>* No hardware investment, i.e. lower costs
<br/>* No software to download - ready to start from the word go
<br/>* No IT resources - Anyone who has used a Web program like Hotmail can use it
<br/>* Faster deployment 

<p>Can I ask users outside of my organization to participate in my Windows SharePoint Services site? </p>

Yes. You can manage this process using the Administration Site Settings. Simply add users via their e-mail alias and assign permissions such as Reader or Contributor. 

<p>Are there any IT requirements or downloads required to set up my SharePoint site? </p>

No. You do not need to download any code or plan for any IT support. Simply complete the on-line signup process and provide us your current and correct email address. Once you have successfully signed up and your site has been provisioned, we will send a confirmation to the email address you provided. 

<p>I am located outside of the United States. Are there any restrictions or requirements for accessing the Windows SharePoint Services? </p>

No. There are no system or bandwidth limitations for international trial users. Additionally language packs have been installed which allow users to set up sub-webs in languages other than English. These include: Arabic, Danish, Dutch, Finnish, French, German, Hebrew, Italian, Japanese, Polish, Portuguese (Brazilian), Spanish and Swedish. 

<p>Are there any browser recommendations? </p>

Yes. Microsoft recommends using the following browsers for viewing and editing Windows SharePoint Services sites: Microsoft Internet Explorer 5.01 with Service Pack 2, Microsoft Internet Explorer 5.5 with Service Pack 2, Internet Explorer 6, Netscape Navigator 6.2 or later. 

<p>What security levels are assigned to users?</p> 

Security levels are assigned by the administrator who is adding the user. There are four levels by default and additional levels can be composed as necessary. 

<br/>* Reader - Has read-only access to the Web site.
<br/>* Contributor - Can add content to existing document libraries and lists.
<br/>* Web Designer - Can create lists and document libraries and customize pages in the Web site.
<br/>* Administrator - Has full control of the Web site. 

<p>How secure are Windows SharePoint Services sites hosted by Microsoft? </p>

Microsoft Windows SharePoint Services Technical security measures provide firewall protection, intrusion detection, and web-publishing rules. The Microsoft operation center team tests and deploys software updates in order to maintain the highest level of security and software reliability. Software hot-fixes and service packs are tested and deployed based on their priority and level of risk. Security related hot-fixes are rapidly deployed into the environment to address current threats. A comprehensive software validation activity ensures software stability through regression testing prior to deployment. 

<p>What is the difference between an Internet and an intranet site? </p>

<br/>An internet site is a normal site that anyone on the internet can access (e.g., www.msn.com, www.microsoft.com, etc.). You can set up a site for your company that can be accessed by anyone without any user name and password. The internet is used for public presence and a primary marketing tool managed typically by web programmers and a system administrator. 

<br/>An intranet (or internal network), though hosted on a Web site, can only be accessed by people who are members of a specific network. They need to have a login and password that was assigned to them when they were added to the site by the site administrator. The intranet is commonly used as an internal tool for giving employees access to company information. Content is driven by business relevance, business rules and has increasingly become a common tool in larger organizations. An intranet is becoming more and more the preferred method for employees to interact with each other and the central departments in an organization, whether or not the organization has a Web presence. 

<p>What is a workspace? </p>

A site or workspace is when you want a new place for collaborating on Web pages, lists and document libraries. For example, you might create a site to manage a new team or project, collaborate on a document or prepare for a meeting. 

<p>What are the various kinds of roles the users can have? </p>

A user can be assigned one of the following roles 

<br/>* Reader - Has read-only access to the Web site.
<br/>* Contributor - Can add content to existing document libraries and lists.
<br/>* Web Designer - Can create lists and document libraries and customize pages in the Web site.
<br/>* Administrator - Has full control of the Web site. 

<p>Can more than one person use the same login? </p>

If the users sharing that login will have the same permissions and there is no fear of them sharing a password, then yes. Otherwise, this is discouraged. 

<p>How customizable is the user-to-user access? </p>

User permissions apply to an entire Web, not to documents themselves. However, you can have additional sub webs that can optionally have their own permissions. Each user can be given any of four default roles. Additional roles can be defined by the administrator. 

<p>Can each user have access to their own calendar? </p>

<br/>Yes there are two ways to do this, 
<br/>* by creating a calendar for each user, or
<br/>* by creating a calendar with a view for each user 

<p>How many files can I upload? </p>

There is no restriction in place except that any storage consumed beyond that provided by the base offering may have an additional monthly charge associated with them. 

<p>What types of files can I upload / post to the site? </p>

The only files restricted are those ending with the following extensions: .asa, .asp, .ida, .idc, .idq. Microsoft reserves the right to add additional file types to this listing at any time. Also, no content that violates the terms of service may be uploaded or posted to the site. 

<p>Can SharePoint be linked to an external data source? </p>

SharePoint data can be opened with Access and Excel as an external data source. Thus, SharePoint can be referenced as an external data source. SharePoint itself cannot reference an external data source. 

<p>Can SharePoint be linked to a SQL database? </p>

SharePoint 2007 Portal Server (MOSS2K7) allows connections to SQL based datasources via the Business Data Catalog (BDC). The BDC also allows connecting to data via Web Services. 

<p>Can I customize my Windows SharePoint Services site? </p>

YES! Windows SharePoint Services makes updating sites and their content from the browser easier then ever. 

<br/>SharePoint includes tools that let you create custom lists, calendars, page views, etc. You can apply a theme; add List, Survey and Document Library Web Parts to a page; create personal views; change logos; connect Web Parts and more. 

<br/>To fully customize your site, you can use Microsoft FrontPage 2003. Specifically, you can use FrontPage themes and shared borders, and also use FrontPage to create photo galleries and top ten lists, utilize standard usage reports, and integrate automatic Web content. 

<p>Will Microsoft Office SharePoint Server 2007 run on a 64-bit version of Microsoft Windows? </p>

Windows SharePoint Services 3.0, Office SharePoint Server 2007, Office Forms Server 2007, and Office SharePoint Server 2007 for Search will support 64-bit versions of Windows Server 2003. 

<p>How Office SharePoint Server 2007 can help you? </p>

<br/>Office SharePoint Server 2007 can help us: 

<br/>Manage content and streamline processes. Comprehensively manage and control unstructured content like Microsoft Office documents, Web pages, Portable Document Format file (PDF) files, and e-mail messages. Streamline business processes that are a drain on organizational productivity. 

<br/>Improve business insight. Monitor your business, enable better-informed decisions, and respond proactively to business events. 

<br/>Find and share information more simply. Find information and expertise wherever they are located. Share knowledge and simplify working with others within and across organizational boundaries. 

<br/>Empower IT to make a strategic impact. Increase responsiveness of IT to business needs and reduce the number of platforms that have to be maintained by supporting all the intranet, extranet, and Web applications across the enterprise with one integrated platform. 

<br/>Office SharePoint Server 2007 capabilities can help improve organizational effectiveness by connecting people, processes, and information. 
<br/>Office SharePoint Server 2007 provides these capabilities in an integrated server offering, so your organization doesn't have to integrate fragmented technology solutions itself. 

<p>What are the features that the portal components of Office SharePoint Server 2007 include? </p>

The portal components of Office SharePoint Server 2007 include features that are especially useful for designing, deploying, and managing enterprise intranet portals, corporate Internet Web sites, and divisional portal sites. The portal components make it easier to connect to people within the organization who have the right skills, knowledge, and project experience. 

<p>What are the advanced features of MOSS 2007? </p>

<br/>* User Interface (UI) and navigation enhancements
<br/>* Document management enhancements
<br/>* The new Workflow engine
<br/>* Office 2007 Integration
<br/>* New Web Parts
<br/>* New Site-type templates
<br/>* Enhancements to List technology
<br/>* Web Content Management
<br/>* Business Data Catalog
<br/>* Search enhancements
<br/>* Report Center
<br/>* Records Management
<br/>* Business Intelligence and Excel Server
<br/>* Forms Server and InfoPath
<br/>* The "Features" feature
<br/>* Alternate authentication providers and Forms-based authentication 

<p>What are the features of the new Content management in Office SharePoint 2007? </p>

<br/>The new and enhanced content management features in Office SharePoint Server 2007 fall within three areas: 
<br/>* Document management
<br/>* Records management
<br/>* Web content management 

<br/>Office SharePoint Server 2007 builds on the core document management functionality provided by Windows SharePoint Services 3.0, including check in and check out, versioning, metadata, and role-based granular access controls. Organizations can use this functionality to deliver enhanced authoring, business document processing, Web content management and publishing, records management, policy management, and support for multilingual publishing. 

<p>Does a SharePoint Web site include search functionality? </p>

Yes. SharePoint Team Services provides a powerful text-based search feature that helps you find documents and information fast. 

<p>Write the features of the search component of Office SharePoint Server 2007? </p>

The search component of Office SharePoint Server 2007 has been significantly enhanced by this release of SharePoint Products and Technologies. New features provide: 

<br/>* A consistent and familiar search experience.
<br/>* Increased relevance of search results.
<br/>* New functions to search for people and expertise.
<br/>* Ability to index and search data in line-of-business applications and
<br/>* Improved manageability and extensibility. 

<p>What are the benefits of Microsoft Office SharePoint Server 2007? </p>

<br/>* Provide a simple, familiar, and consistent user experience.
<br/>* Boost employee productivity by simplifying everyday business activities.
<br/>* Help meet regulatory requirements through comprehensive control over content.
<br/>* Effectively manage and repurpose content to gain increased business value.
<br/>* Simplify organization-wide access to both structured and unstructured information across disparate systems.
<br/>* Connect people with information and expertise.
<br/>* Accelerate shared business processes across organizational boundaries.
<br/>* Share business data without divulging sensitive information.
<br/>* Enable people to make better-informed decisions by presenting business-critical information in one central location.
<br/>* Provide a single, integrated platform to manage intranet, extranet, and Internet applications across the enterprise. 

<p>Will SharePoint Portal Server and Team Services ever merge? </p>

The products will come together because they are both developed by the Office team. 

<p>What does partial trust mean the Web Part developer? </p>

If an assembly is installed into the BIN directory, the code must be ensured that provides error handling in the event that required permissions are not available. Otherwise, unhandled security exceptions may cause the Web Part to fail and may affect page rendering on the page where the Web Part appears. 

<p>How can I raise the trust level for assemblies installed in the BIN directory? </p>

<br/>Windows SharePoint Services can use any of the following three options from ASP.NET and the CLR to provide assemblies installed in the BIN directory with sufficient permissions. The following table outlines the implications and requirements for each option. 
<br/>Option Pros Cons 

<br/>Increase the trust level for the entire virtual server. For more information, see "Setting the trust level for a virtual server" Easy to implement. 
<br/>In a development environment, increasing the trust level allows you to test an assembly with increased permissions while allowing you to recompile assemblies directly into the BIN directory without resetting IIS. This option is least secure. 

<br/>This option affects all assemblies used by the virtual server. There is no guarantee the destination server has the required trust level. Therefore, Web Parts may not work once installed on the destination server. 

<br/>Create a custom policy file for your assemblies. For more information, see "How do I create a custom policy file?" Recommended approach. 
<br/>This option is most secure. 

<br/>An assembly can operate with a unique policy that meets the minimum permission requirements for the assembly. 
<br/>By creating a custom security policy, you can ensure the destination server can run your Web Parts. 
<br/>Requires the most configuration of all three options. Install your assemblies in the GAC 
<br/>Easy to implement. This grants Full trust to your assembly without affecting the trust level of assemblies installed in the BIN directory. 
<br/>This option is less secure. 

<p>Assemblies installed in the GAC are available to all virtual servers and applications on a server running Windows SharePoint Services. This could represent a potential security risk as it potentially grants a higher level of permission to your assembly across a larger scope than necessary </p>
<br/>In a development environment, you must reset IIS every time you recompile assemblies. 
<br/>Licensing issues may arise due to the global availability of your assembly. 

<p>Does SharePoint work with NFS? </p>

<br/>Yes and no. It can crawl documents on an NFS volume, but the sharepoint database or logs cannot be stored there. 

<p>How is SharePoint Portal Server different from the Site Server? </p>

<br/>Site Server has search capabilities but these are more advanced using SharePoint. SPS uses digital dashboard technology which provides a nice interface for creating web parts and showing them on dashboards (pages). SS doesn't have anything as advanced as that. The biggest difference would be SPS document management features which also integrate with web folders and MS Office. 

<p>What would you like to see in the next version of SharePoint? </p>

<br/>A few suggestions: 
<br/>1.	SPS and STS on same machine
<br/>2.	Tree view of Categories and Folders
<br/>3.	General Discussion Web Part
<br/>4.	Personalization of Dashboards
<br/>5.	Role Customization
<br/>6.	Email to say WHY a document has been rejected for Approval
<br/>7.	More ways to customize the interface
<br/>8.	Backup and restore an individual Workspaces
<br/>9.	Filter for Visio
<br/>10.	Better way to track activity on SPS
<br/>11.	Ability to Save as from Adobe to space on My Network Places 

<p>Why Sharepoint is not a viable solution for enterprise wide deployments? </p>

<br/>Planning an enterprise deployment using SharePoint features is a very difficult task unless you can establish a Service Oriented Architecture, using AD for managing security with well defined roles based information access(EISA). Sounds reasonable, although it seems difficult to deploy with the tools limitations in document storage. 

<br/>Document management does not scale beyond a single server, but scales great within a single server. For example, a quad Xeon machine with 4GB of RAM works great for a document management server that has about 900,000 - 1,000,000 document, but if you need to store 50,000,000 document and want to have them all in one single workspace then it does not scale at all. If you need a scenario like this, you need to plan your deployment right and it should scale for you, it just does not right out of the box. If you are using your server as a portal and search server most for the most part it scales great. You can have many different servers crawl content sources and have separate servers searching and serving the content. 

<br/>If you have < 750,000 documents per server and fewer than 4 content sources and fewer than 50,000 users, SPS should scale just fine for your needs with the proper planning. 

<p>What are the actual advantages of SharePoint Portal Services (SPS) over SharePoint Team Services (STS)? </p>

<br/>SharePoint Portal Services (SPS) has MUCH better document management. It has check-in, check-out, versioning, approval, publishing, subscriptions, categories, etc. STS does not have these features, or they are very scaled back. SharePoint team Services (SPS) has a better search engine, and can crawl multiple content sources. STS cannot. STS is easier to manage and much better for a team environment where there is not much Document Management going on. SPS is better for an organization, or where Document Management is crucial. 

<p>How Does SharePoint work? </p>

<br/>The browser sends a DAV packet to IIS asking to perform a document check in. PKMDASL.DLL, an ISAPI DLL, parses the packet and sees that it has the proprietary INVOKE command. Because of the existence of this command, the packet is passed off to msdmserv.exe, who in turn processes the packet and uses EXOLEDB to access the WSS, perform the operation and send the results back to the user in the form of XML. 

<p>How do I open an older version of a document? </p>

<br/>Normally, all previous versions are located in the shadow, so if you right click a published document from within the web folders, go to properties and then the third tab, versions you can view older versions. 

<br/>If you want to do this in code: 

<br/>strURL = "url of the last published version"
<br/>Set oVersion = New PKMCDO.KnowledgeVersion
<br/>Set prmRs = oVersion.VersionHistory(strURL)
<br/>Set oVersion = Nothing 

<br/>prmRS will contain a recordset, which contains the url to the old versions in the shadow. 

<p>Why do the workspace virtual directories show the error "stop sign" symbol in the IIS snap-in? </p>

<br/>If World Wide Web Publishing Service (W3SVC) starts before Microsoft Exchange Information Store (MSExchangeIS), "stop sign" symbols appear under the Default Web Site folder of the Internet Information Services console in Microsoft Management Console (MMC). 

<br/>There is a dependency between the local paths of the SharePoint Portal Server virtual directories and the MSExchangeIS. You must start MSExchangeIS first, followed by W3SVC. 
<br/>Complete the following steps to prevent the stop signs from appearing each time you restart: 
<br/>1.	Change the Startup type for W3SVC to Manual.
<br/>2.	Restart the server. The MSExchangeIS service starts automatically.
<br/>3.	Start W3SVC. 

<p>What newsgroups are available? </p>

There are two, 

<br/>* microsoft.public.sharepoint.portalserver and
<br/>* microsoft.public.sharepoint.portalserver.development. 

<p>What is SharePoint from a Technical Perspective? </p>

<br/>Technically SharePoint illustrates neatly what Microsoft's .net strategy is all about: integrating Windows with the Web. Microsoft has previously made accessing stuff on a PC easier, (Windows) then on a network (NT) and now on the web (.NET). SharePoint is an application written to let a user access a web accessible directory tree called the Web Storage System. 
<br/>SharePoint was written with a set of technologies that allow the programmer to pass data, functions, parameters over HTTP, the web's medium. These are XML, XSL and SOAP, to name a few I understand the basics of! 

<br/>To the user it looks easy, like Hotmail, but every time they click a button or a link, a lot has to happen behind the scenes to do what they want to do quickly and powerfully. Not as easy as you might think, but SharePoint does it for you. Accessing this Web storage system and the server itself is also done using technologies like ADO, CDO, PKMCDO, LDAP, DDSC, ADSC. More on these later. SharePoint is a great example of how the Internet Platform can be extended and integrated into an existing well adopted technology, Windows. 

<p>What is SharePoint from an Administration Perspective? </p>

<br/>Administering SharePoint mainly consists of setting it up, which is much easier than you expect, adding the content, which can be just dragging and dropping in whole directory structures and files, and then organizing the files better by giving them categories or other metadata. This is done either through the Web interface or through the SharePoint Client: a program what means you can access SharePoint as a Web folder and then right-click files to select options like "edit profile". Or add files by dragging them in individually or in bulk. 
<br/>Setting the security is also important, using NT accounts, either NT4 or Active Directory (or both in mixed mode) you can give users access to files/folders the same way as you do in standard Windows. Users can be grouped and the groups given access privileges to help manage this better. Also SharePoint has 3 Roles that a User or Group can be given on a particular item. Readers can see the item (i.e. document/file or folder) but not change it, Authors can see and edit items and coordinators can set security privileges for the part of the system they have control over. Thus, you could set 12 different coordinators for 12 different folder trees, and they could manage who can do what within that area only. 

<p>What is SharePoint from a Users Perspective? </p>

From a Users perspective SharePoint is a way of making documents and folders on the Windows platform accessible over the web. The user visits the SharePoint Portal web page, and from there they can add documents, change documents & delete documents. Through this Portal, these documents are now available for discussion, collaboration, versioning and being managed through a workflow. Hence the name "Share-Point". Details about the document can be saved too, such as: who wrote it, when, for whom, its size, and version, category or target audience. These can then be used to find the document through SharePoint's Search facility. Even documents not "in" SharePoint can be included in the search engine's index so they become part of the portal. All in all, it's a great way to get stuff up on the web for users with average technical skills, and for administrators to manage the content. 

<p>What are the various Sharepoint 2003 and Exchange integration points? </p>

<br/>Link to Outlook 

<br/>This is a button on contacts or events lists that lets Outlook 2003 add a pst file named Sharepoint Folders and it links to the data on the site. It's read-only, but you could make the home page for that PST be the Sharepoint site for easier viewing. The link to outlook feature seems more to be where some can public a calendar, but not want too much collaboration. For example, a holiday schedule, company meeting schedule, etc, can be made available for people to be able to view from Outlook without having to go to a web browser. Another nice thing about OL2K3 is that you can compare these calendars with others side by side. 
<br/>Searching Public Folders 

<br/>With SPS you can index Exchange's public folders with the search engine so that all that precious public folder content is searchable. You'll want to look at content sources and indexing in Sharepoint administration. 

<br/>Displaying Public Folders in a web part 

<br/>Since exchange web-enables public folders, you can create a web part that displays that content. IE, http://exchangeserver/Public/IT/Helpdesk will display the IT/Helpdesk public folder via OWA. So you add the Page Viewer web part to a page and point it at that URL. The key here is to add ?cmd=contents to the end of the url if you don't want the navigator pane on the left. 

<br/>Smart web parts 

<br/>Some of the web parts that come with SPS allow you to add a web part to a page that actually takes the users outlook info (calendar, inbox, contacts, tasks) and put them into the page. 

<br/>The SmartPart Web Part project template for Visual Studio allows developers to create quickly a project which contains the base infrastructure to: 

<br/>* write a web user control (ASCX)
<br/>* wrap the user control in a SmartPart instance
<br/>* generate a SharePoint Solution file (WSP) for easy deployment
<br/>* generate a setup package for a wizard driven installation 

<p>Can SharePoint compare two document versions? </p>

"In Word 2003, you can compare documents side by side. Open two documents. Then, from the Window menu of one of them, select the Compare Side By Side command. If you have only two documents open, the command will automatically choose to compare them. If you have three or more documents open, you'll have to select which document to compare with the current file. 

A floating toolbar with two buttons will open. If the button on the left is selected, Word will scroll both documents at the same time. Press the button on the right side of the toolbar to return to where the cursor was located when you started comparing." 
<p>Q. How does Windows SharePoint Services help render the Webapplictaion in ShrePoint?</p>

Ans. When a new web applictaion is created via Central Admin, Windows SharePoint Services creates a new Web application in IIS. Then the WSS, loads the custom HTTP application and replaces all installed HTTP handlers and modules with Windows SharePoint Services–specific ones. These handlers and modules essentially tell IIS to route all file requests through the ASP.NET 2.0 pipeline. This is because most files in a SharePoint site are stored in a Microsoft SQL Server database.


<p>Q. What files gets created on a file system, when a Site collection is created ?</p>

Ans. Windows SharePoint Services does not create any files or folders on the file system when the site collection or sites are created; everything is created in the content database. The Pages for the site collection are created as instances in the content database. These instances refer to the actual file on the file system.


<p>Q.How Does SharePoint work?</p>

Ans. The browser sends a DAV packet to IIS asking to perform a document check in. PKMDASL.DLL, an ISAPI DLL, parses the packet and sees that it has the proprietary INVOKE command. Because of the existence of this command, the packet is passed off to msdmserv.exe, who in turn processes the packet and uses EXOLEDB to access the WSS, perform the operation and send the results back to the user in the form of XML.


<p>Q. What are Customized and Uncustomized Files in SharePoint ?</p>

Ans. There are two types of Pages in SharePoint; site pages (also known as content pages) and application pages.

<br/>Uncustomized :

<p>When you create a new SharePoint site in a site collection, Windows SharePoint Services provisions instances of files into the content database that resides on the file system. That means if you create a new Site "xyz" of type Team Site(or Team sIte Definition), an instance of the Team Site Definition( Which resides on the File System), i.e. "xyz" gets created in the Content database. So, When ASP.NET receives a request for the file, it first finds the file in the content database. This entry in the content database tells ASP.NET that the file is actually based on a file on the file system and therefore, ASP.NET retrieves the source of the file on the file system when it constructs the page.</p>

<br/>Customized :

<br/>A customized file is one in which the source of the file lives exclusively in the site collection's content database. This happens When you modify the file in any way through the SharePoint API, or by SharePoint Designer 2007,which uses the SharePoint API via RPC and Web service calls to change files in sites. So, When the file is requested, ASP.NET first finds the file in the content database. The entry in the database tells ASP.NET whether the file is customized or uncustomized. If it is customized, it contains the source of the file, which is used by ASP.NET in the page contraction phase.


<p>Q. What is the difference between a site and a web?</p>

Ans: A site in sharePoint is a site collection. It is an object of SPsite class in sharepoint. While a Web is simply a blank site within that site collection. Web is a Part of SPweb class, thus represents a site within a site collection.


<p>Q. What is CAML?</p>

Ans. CAML stands for Collaborative Application Markup Language and is an XML-based language that is used in Microsoft Windows SharePoint Services to define sites and lists, including, for Eg, fields, views, or forms, but CAML is also used to define tables in the Windows SharePoint Servies database during site provisioning. Developers mostly use CAML Queries to retrieve data from Lists\libraries.


<p>Q. What is Business Data Catalog or BDC ?</p>

Ans. It is a shared service that enables Office SharePoint Server 2007 to surface business data from back-end server applications. Business Data Catalog or BDC provides built-in support for displaying data from databases and Web services. That is, you can use Business Data Catalog to display data from your SAP, Siebel, or other line-of-business (LOB) application via Web services or databases.


<p>Q. Can you write back data to the BDC Source(External database).</p>

Ans. Even though the BDC made it relatively easy to create read-only solutions that display data in the Business Data List Web Part, it was not so simple to create a solution that enabled users to make changes and write that data back to the external store.

<p>Q. What is stsadm?</p>

Ans. It is a Command-line tool used for administration of Office SharePoint 2007 (or MOSS 2007) servers and sites.


<p>Q. Where is it located?</p>

Ans. You will normally, find it under C:\Program Files\Common Files\ shared\web server extensions\12\bin.


<p>Q. What permissions are required to perform stsadm operations?</p>

Ans. You need to be a member of WSS_ADMIN_WPG group to perform deployments for sharepoint server. Also, you need to be added into administrators group on a computer on which SharePoint Server or WSS 3.0 is installed. In addition to this you definitely need access to the required sharepoint databases so that you should not get errors while deploying sharepoint solutions.
        
<br/>Old ones (02/21/2008)

<p>Q What is the difference between a document library and a form library?</p>
Ans:Document libraries consist of your core documents. An example would be a word document,excel, Powerpoint, visio, pdf, etc… Form libraries consist of XML forms.

<p>Q What is a web part zone?</p>
Ans: Web part zones are what your web parts reside in and help categorize your web parts when designing a page.

<p>Q How is security managed in SharePoint?</p>
Ans: Security can be handled at the machine,domain, or sharepoint level.


<p>Q. What are Security methods(Authentication methods) available in sharepoint 2007.</p>
Ans: Out of the box", SharePoint 2007 supports nine authentication methods. NTLM (short for NT Lan Manager, which is simply the Windows authentication that everyone is familiar with) and Kerberos (also a Windows "standard" authentication) are offered during installation.

<p>Q How are web parts developed?</p>
Ans: Web parts are developed in Visual Studio .Net. VS.Net offers many web part and page templates and can also be downloaded from the Microsoft Site.

<p>Q What is a site definition?</p>
Ans: It’s a methods for providing prepackaged site and list content.

<p>Q What is a template?</p>
A template is a pre-defined set of functions or settings that can be used over time. There are manytemplates within SharePoint,Site Templates, Document Templates, Document Library and ListTemplates.

<p>Q How do you install web parts?</p>
Ans: Web Parts should be distributed as a .CAB (cabinet) file using the MSI Installer.

<p>Q What is a DWP?</p>
Ans: The file extension of a web part.

<p>Q What is the GAC?</p>
Ans: Global Assembly Cache folder on the server hosting SharePoint. You place your assemblies there for web parts and services to share them.


<p>Q. Who is Office SharePoint server 2007 designed for?</p>
Ans: Office SharePoint Server 2007 can be used by information workers, IT administrators, and application developers.

<p>Q. What are the main benefits of Office SharePoint Server 2007?</p>
Ans: Office SharePoint Server 2007 provides a single integrated platform to manage intranet, extranet,and Internet applications across the enterprise.

<br/>* Business users gain greater control over the storage, security, distribution, and management oftheir electronic content, with tools that are easy to use and tightly integrated into familiar,everyday applications.

<br/>* Organizations can accelerate shared business processes with customers and partners acrossorganizational boundaries using InfoPath Forms Services–driven solutions.

<br/>* Information workers can find information and people efficiently and easily through thefacilitated information-sharing functionality and simplified content publishing. In addition, accessto back-end data is achieved easily through a browser, and views into this data can bepersonalized.

<br/>* Administrators have powerful tools at their fingertips that ease deployment, management, and system administration, so they can spend more time on strategic tasks.

<br/>* Developers have a rich platform to build a new class of applications, called Office BusinessApplications, that combine powerful developer functionality with the flexibility and ease ofdeployment of Office SharePoint Server 2007. Through the use of out-of-the-box applicationservices, developers can build richer applications with less code.


<p>Q. What is the difference between Microsoft Office SharePoint Server 2007 for Internet sites and Microsoft Office SharePoint Server 2007?</p>
Ans: Microsoft Office SharePoint Server 2007 for Internet sites and Microsoft Office SharePoint Server2007 have identical feature functionality. While the feature functionality is similar, the usagerights are different.If you are creating an Internet, or Extranet, facing website, it is recommended that you useMicrosoft Office SharePoint Server 2007 for Internet sites which does not require the purchase client access licenses. Websites hosted using an “Internet sites” edition can only be used forInternet facing websites and all content, information, and applications must be accessible to nonemployees.Websites hosted using an “Internet sites” edition cannot be accessed by employees creating, sharing, or collaborating on content which is solely for internal use only, such as an Intranet Portal scenario.


<p>Q. How do I invite users to join a Windows SharePoint Services Site? Is the site secure?</p>
Ans: SharePoint-based Web sites can be password-protected to restrict access to registered users, whoare invited to join via e-mail. In addition, the site administrator can restrict certain members' rolesby assigning different permission levels to view post and edit.

<p>Q Can I post any kind of document? Can i restrict some document types</p>
Ans: You can post documents in many formats, including .pdf, .htm and .doc. In addition, if you areusing Microsoft Office XP, you can save documents directly to your Windows SharePointServices site. Yes, you can restrict document types by either adding them to cetral admin or by using a custom event receiver.

<p>Q Can I create custom templates?</p>
Ans: Yes you can. You can create site or list templates which are nothing but a set of files, pages and data so that they can be re-used for business process. For e.g. creating a issue tracking list template will be used to various other teams.

<p>Q. How can I make My site public?</p>
Ans: By default, all sites are created private.If you want your site to be a public Web site, enable anonymous access for the entire site. Then you can give out your URL to anybody in yourbusiness card, e-mail or any other marketing material. The URL for your Web site will be:http:// yoursitename.wss.bcentral.comHence, please take special care to name your site.These Web sites are ideal for information and knowledge intensive sites and/or sites where youneed to have shared Web workspace.Remember: Under each parent Web site, you can create up to 10 sub-sites each with uniquepermissions, settings and security rights.


<p>Q.How do I make my site non-restricted?</p>
Ans: If you want your site to have anonymous access enabled (i.e., you want to treat it like any site onthe Internet that does not ask you to provide a user name and password to see the content of thesite), follow these simple steps:

<br/># Login as an administrator
<br/># Click on site settings
<br/># Click on Go to Site Administration
<br/># Click on Manage anonymous access
<br/># Choose one of the three conditions on what Anonymous users can access:** Entire Web site** Lists and libraries** NothingDefault condition is nothing; your site has restricted access.
<br/>The default conditions allow you to create a secure site for your Web site.

<p>Q. Can I ask users outside of my organization to participate in my Windows SharePointServices site?</p>

Ans: Yes. You can manage this process using the Administration Site Settings. Simply add users via their e-mail alias and assign permissions such as Reader or Contributor.

<p>Q. Are there any restrictions or requirements for accessing the Windows SharePoint Services?</p>

Ans:No. There are no system or bandwidth limitations for international trial users. Additionallylanguage packs have been installed which allow users to set up sub-webs in languages other thanEnglish. These include: Arabic, Danish, Dutch, Finnish, French, German, Hebrew, Italian,Japanese, Polish, Portuguese (Brazilian), Spanish and Swedish.

<p>Q.What security levels are assigned to users?</p>

Ans: Security levels are assigned by the administrator who is adding the user. There are four levels bydefault and additional levels can be composed as necessary.
<br/>* Reader - Has read-only access to the Web site.
<br/>* Contributor - Can add content to existing document libraries and lists.
<br/>* Web Designer - Can create lists and document libraries and customize pages in the Web site.
<br/>* Administrator - Has full control of the Web site.

<p>Q. What is a workspace?</p>
Ans: A site or workspace is when you want a new place for collaborating on Web pages, lists anddocument libraries. For example, you might create a site to manage a new team or project,collaborate on a document or prepare for a meeting.

<p>Q.How customizable is the user-to-user access?</p>
Ans: User permissions apply to an entire Web, not to documents themselves. However, you can haveadditional sub webs that can optionally have their own permissions. Each user can be given any offour default roles. Additional roles can be defined by the administrator.

<p>Q.Can each user have access to their own calendar?</p>
Ans: Yes there are two ways to do this,
<br/>* by creating a calendar for each user, or
<br/>* by creating a calendar with a view for each user.

<p>Q. What types of files can I upload / post to the site?</p>
Ans: The only files restricted are those ending with the following extensions: .asa, .asp, .ida, .idc, .idq.Microsoft reserves the right to add additional file types to this listing at any time. Also, no content that violates the terms of service may be uploaded or posted to the site.

<p>Q.Can SharePoint be linked to an external data source?</p>
Ans: SharePoint data can be opened with Access and Excel as an external data source. Thus, SharePoint can be referenced as an external data source. SharePoint itself cannot reference an external datasource.

<p>Q. Can SharePoint be linked to a SQL database?</p>
Ans: This is possible via a custom application, but it not natively supported by SharePoint or SQLServer.

<p>Q.Can I customize my Windows SharePoint Services site?</p>
Ans: YES! Windows SharePoint Services makes updating sites and their content from the browser easier then ever.SharePoint includes tools that let you create custom lists, calendars, page views, etc. You can apply a theme; add List, Survey and Document Library Web Parts to a page; create personalviews; change logos; connect Web Parts and more.To fully customize your site, you can use Microsoft FrontPage 2003. Specifically, you can useFrontPage themes and shared borders, and also use FrontPage to create photo galleries and top tenlists, utilize standard usage reports, and integrate automatic Web content.

<p>Q. Will Microsoft Office SharePoint Server 2007 run on a 64-bit version of MicrosoftWindows?</p>
Ans: Windows SharePoint Services 3.0, Office SharePoint Server 2007, Office Forms Server 2007, andOffice SharePoint Server 2007 for Search will support 64-bit versions of Windows Server 2003.

<p>Q. What are the features that the portal components of Office SharePoint Server 2007 include?</p>
Ans: The portal components of Office SharePoint Server 2007 include features that are especially useful for designing, deploying, and managing enterprise intranet portals, corporate Internet Websites, and divisional portal sites. The portal components make it easier to connect to people withinthe organization who have the right skills, knowledge, and project experience.

<p>Q.What are the advanced features of MOSS 2007?</p>
Ans: * User Interface (UI) and navigation enhancements
<br/>* Document management enhancements
<br/>* The new Workflow engine
<br/>* Office 2007 Integration
<br/>* New Web Parts
<br/>* New Site-type templates
<br/>* Enhancements to List technology
<br/>* Web Content Management
<br/>* Business Data Catalog
<br/>* Search enhancements
<br/>* Report Center
<br/>* Records Management
<br/>* Business Intelligence and Excel Server
<br/>* Forms Server and InfoPath
<br/>* The “Features” feature
<br/>* Alternate authentication providers and Forms-based authentication

<p>Q.What are the features of the new Content management in Office SharePoint 2007?</p>
Ans: The new and enhanced content management features in Office SharePoint Server 2007 fall within three areas:

<br/>* Document management
<br/>* Records management.
<br/>* Web content managementOffice SharePoint Server 2007 builds on the core document management functionality providedby Windows SharePoint Services 3.0, including check in and check out, versioning, metadata, and role-based granular access controls. Organizations can use this functionality to deliver enhancedauthoring, business document processing, Web content management and publishing, recordsmanagement, policy management, and support for multilingual publishing.

<p>Q.Does a SharePoint Web site include search functionality?</p>
Ans: Yes. SharePoint Team Services provides a powerful text-based search feature that helps you finddocuments and information fast.

<p>Q.Will SharePoint Portal Server and Team Services ever merge?</p>
Ans: The products will come together because they are both developed by the Office team.

<p>Q.What does partial trust mean the Web Part developer?</p>
Ans: If an assembly is installed into the BIN directory, the code must be ensured that provides errorhandling in the event that required permissions are not available. Otherwise, unhandled securityexceptions may cause the Web Part to fail and may affect page rendering on the page where theWeb Part appears.

<p>Q. Does SharePoint work with NFS?Yes and no.</p>
Ans: It can crawl documents on an NFS volume, but the sharepoint database or logs cannotbe stored there.

<p>Q.How is SharePoint Portal Server different from the Site Server?</p>
Ans: Site Server has search capabilities but these are more advanced using SharePoint. SPS uses digital dashboard technology which provides a nice interface for creating web parts and showing them ondashboards (pages). SS doesn't have anything as advanced as that. The biggest difference wouldbe SPS document management features which also integrate with web folders and MS Office.

    </div>
</asp:Content>


<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" ID="RightBar" />               
</asp:Content>

<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" ID="BottomBar" />           
</asp:Content>
