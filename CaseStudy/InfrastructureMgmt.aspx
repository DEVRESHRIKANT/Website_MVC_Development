<%@ Title="Infrastructure Management" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="InfrastructureMgmt.aspx.cs" Inherits="DEVRE.InfrastructureMgmt" %>

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
        <div style="font-size:xx-large; font-family:'Arial Rounded MT'; background-color:yellow; color:blueviolet">
            <p>
                Infrastructure Management
            </p>
         </div>
        </div>
        <table style="width:100%">
            <tr>
                <td style="height:300px; width:25%">
                    <asp:Image ID="infrastructure_mgmt" Height="300px" runat="server" ImageUrl="/Images/infrastructure_mgmt.jpg" />
                </td>
                <td style="height:300px; width:75%">
                    <div>                        
                        <p>
                        A company’s competence, productivity and scalability rely heavily on its IT infrastructure. It is essential for companies of all sizes to have a strong IT infrastructure to make certain that their business is running at all times, a system that scales with company’s needs. Not only do you need guaranteed uptime but also a proper support system to backup your operations. Your IT infrastructure should be built to support your needs today and scale for your needs tomorrow, while cutting costs at all times.
                        </p>
                    </div>                    
                </td>
            </tr>
     </table> 
    <div>
<p></p>
We offer you services that allow you to get control of your IT systems. From conducting comprehensive requirement analysis to providing custom tailored solutions, we provide you with single point of contact for all your IT needs. Shree is equipped to provide you with all your IT needs including setting up networks, desktop management, setting up servers that support your Information systems, and much more. Our strategy revolves around setting up systems correctly, and proactively monitoring them so as to reduce downtime to a minimum.
<p></p><b>We promise of taking your company’s IT Infrastructure in right direction.</b>
<p><b><u>Plan & Design</u></b></p>
Your business completely depends on your IT Infrastructure. It is now time to align the IT Infrastructure to your business goals. Keeping a smoothly functioning IT setup is vital for the health of your business. We help you evolve a setup that gives your business a quantum leap through improved productivity levels, better quality products in short time frames, and increased customer satisfaction. We help you create a setup that is capable of handling change as businesses adapt to market environments by making your resources concurrent, by deploying a parallel Infrastructure.
<p><b><u>Build & Integrate</u></b></p>
<b>At Shree we help you build and integrate the following:</b>
Desktops and Laptops.

<p>Servers: Entry Level Intel based to multi processor UNIX based RISC Servers Workstations.</p>
        <p>Storage: NAS and SAN.</p>
        <p>Network and Security Elements i.e Routers, Switches, cabling Infrastructure, Anti-Virus, Firewalls, IDS and IPS, Spam filtering, Spy ware and Ad ware filtering Software licenses.</p>
        <p>Software licenses.</p>
        <p></p>
<b>We ensure</b>
        <p>Low total cost of ownership.</p>
        <p>Deliver excellent levels of service, flexibility and choice of options.</p>
        <p>Improve end-user productivity.</p>
        <p>Standardize technology platforms and processe</p>
        <p>Enhanced security.</p>
        <p>Function as a single source for provisioning and managing products from different vendors.</p>

<p><b><u>Deploy & Execute</u></b></p>
We have a wide choice in widespread collection of solutions for deploying servers, desktop, storage, networking, and software. With minimized downtime, Shree helps you achieve high performance in no time at all.
<p></p>
<b>The Shree Approach</b>
        <p>Quick, hassle-free deployment of the latest technologies.</p>
        <p>Reduced implementation times and costs.</p>
        <p>Minimized disruptions during installation and transition processes.</p>
<p><b><u>Operate & Manage</u></b></p>
As businesses retrain their focus on their core strengths, they feel the need and comfort to have their IT Infrastructure managed for them. What they require is a partner to build, operate and manage their IT Infrastructure while they handle their core business. The challenge for most companies is to identify a partner who can do this for them keeping the business objectives in view and by understanding how the company works.
<p></p>
Shree offers you a wide array of comprehensive services that address issues related to your IT Infrastructure management and performance.
<p><b><u>Our end-to-end Infrastructure Outsourcing service portfolio includes:</u></b></p>
<p></p>
        <p>Datacenter Optimization services – With enterprises seeking to derive maximum value from their datacenters, there is a considerable push towards taking advantage of new technologies and cost models. Shree Datacenter Optimization services are focused on optimizing the enterprise datacenter through consulting, planning, and implementation support.</p>
        <p>End-User Computing services – As enterprises seek to enable their Clients with the latest in technology, there is an inevitable rise in the complexity of the IT infrastructure deployed. Our End-User Computing services help enterprises manage this complexity through the application of new virtualization-related technologies.</p>
        <p>Infrastructure Operations Optimization services – A reliable IT infrastructure with high availability is critical for the successful delivery of services that support enterprise business processes. Shree Infrastructure Operations Optimization services ensure efficient, compliant, and agile infrastructure operations across the enterprise.</p>
        <p>Infrastructure Refresh services – Enterprises find that their existing IT infrastructure is for the most part, reactive and ill equipped to meet emerging business needs. At Shree, we provide direction to the organizational computing roadmap through broad infrastructure refresh services in specific technology areas, enabling our clients to stay ahead in the technology curve.</p>
        <p>Managed Infrastructure services – We offer end-to-end Managed Infrastructure services that help enterprises achieve technology-led business transformation, leveraging emerging technologies and cost models.</p>    
   </div> 
</asp:Content>

<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" ID="RightBar"/>               
</asp:Content>

<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" ID="BottomBar" />           
</asp:Content>
