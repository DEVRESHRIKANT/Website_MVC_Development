<%@ Page Title="Cloud Computing" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="CloudComputing.aspx.cs" Inherits="DEVRE.CloudComputing" %>


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
        <div style="font-size:xx-large; font-family:'Arial Rounded MT'; background-color:yellow; color:blueviolet">
            <p>
                Virtualization & Cloud Computing
            </p>
         </div>
        </div>
        <table style="width:100%">
            <tr>
                <td style="height:150px; width:25%">
                    <asp:Image ID="virtual_cloud_development" runat="server" ImageUrl="/Images/virtual_cloud.jpg" />
                </td>
                <td style="height:150px; width:75%">
                    <div>                        
                        <p>
                        IT infrastructures have become too complex and brittle. Today, 70% of IT investment is focused on maintenance, leaving little time to support strategic business projects. With users demanding faster response times and management demanding lower costs, IT needs a better strategy. Cloud computing is a new approach that reduces IT complexity by leveraging the efficient pooling of on-demand, self-managed virtual infrastructure, consumed as a service. Cloud computing is central to that better strategy.
                        </p>
                    </div>                    
                </td>
            </tr>
     </table> 
    <div>
<p></p>
Today’s IT organizations, faced with decreasing resources and increasing business needs, are looking to cloud computing to provide a more efficient, flexible and cost-effective model for delivering IT to business: IT as a Service.
While cloud computing provides the approach, Shree delivers a pragmatic path and customer-proven solutions that allow organizations to preserve existing technology investments, while achieving the goal of enabling IT as a Service.
<p></p>
<b>Benefits</></b>
The most effective transition to a cloud computing approach enables organizations to yield the following benefits:
<p></p>
<b>Reduce Costs</b>
        <p>Lower total cost of ownership</p>
        <p>Reduce IT hardware, software, and/or services costs</p>
        <p>Reduce data center facility costs</p>
<p></p>
<b>Improve Agility and Reliability</b>
        <p>Enable faster time to market</p>
        <p>Improve availability and scalability</p>
        <p>Improve disaster recovery and data backup</p>

<p></p>
Shree possesses expertise in various commercial cloud computing technologies and helps organizations build and maintain their cloud computing environments by providing its highly skilled team of professionals having extensive experience in the field of virtualization.
   </div> 
</asp:Content>

<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" ID="RightBar" />               
</asp:Content>

<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" ID="BottomBar" />           
</asp:Content>
