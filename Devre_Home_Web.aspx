<%@ Page Title="" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="Devre_Home_Web.aspx.cs" Inherits="DEVRE.Devre_Home_Web" %>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeMenu" Src="~/wfuc_MenuBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeTop" Src="~/TopBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBanner" Src="~/BannerBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeStatus" Src="~/StatusBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeLeft" Src="~/LeftBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeRight" Src="~/RightBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBottom" Src="~/BottomBar.ascx"%>

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


<asp:Content ID="Head_Content" ContentPlaceHolderID="cpl_HeadBar" runat="server">
</asp:Content>
<asp:Content ID="Menu_Content" ContentPlaceHolderID="cpl_MenuBar" runat="server">
    <ShreeMain:ShreeMenu runat="server" ID="ShreeMenu" />
</asp:Content>
<asp:Content ID="Main_Content" ContentPlaceHolderID="cpl_MainContentPlaceholder" runat="server">    
    <div>        
        <table style="width:100%; padding:0px 0px 0px 0px">
                <tr>
                    <td style="height:50px; width:10%">
                            <asp:Image ID="corporate" BorderColor="YellowGreen" runat="server" ImageUrl="/Images/corporate.jpg" />
                    </td>
                    <td style="height:50px; width:40%">
                        <div style="font-family:Arial; text-align:center; color:brown; font-size:large">
                            <p><b>Corporate Overview</b></p>
                        </div>
                        <div style="font-family:Arial; font-size:medium">
                            Shree specializes in assembling and managing dedicated teams of highly skilled technical professionals to augment your in-house resources. With corporate headquarters and software development center in Vancouver, British Columbia, Canada.
                            <p></p>
                         
                        </div>                    
                    </td>
                    <td style="height:50px; width:10%">
                        <asp:Image ID="software_development" BorderColor="YellowGreen" runat="server" ImageUrl="/Images/software_development.jpg" />
                    </td>
                    <td style="height:50px; width:40%">
                                <div style="font-family:Arial; text-align:center; color:brown; font-size:large">
                                    <p><b>Application Management</b></p>
                                </div>
                                <div style="font-family:Arial; font-size:medium">
                                    Application Management outsourcing services from Shree have been designed to deliver the critical financial, productivity, quality and efficiency gains that businesses need to attain global competitiveness.
                                    <p></p>                        
                                </div>                    
                    </td>
            </tr>
        </table>
        <table style="width:100%">
            <tr>
                    <td style="height:50px; width:10%">
                        <asp:Image ID="mobile_development" BorderColor="YellowGreen" runat="server" ImageUrl="/Images/microsoft_development.jpg" />
                    </td>
                    <td style="height:50px; width:40%">
                        <div style="font-family:Arial; text-align:center; color:brown; font-size:large">
                            <b>Our services includes</b>
                        </div>
                        <div style="font-family:Arial; font-size:medium">                                    
                            <p>Custom .Net Application Development</p>
                            <p>SharePoint Development & Customization</p>
                            <p>Legacy System Migration</p>
                            <p>SQL Server Consulting</p>
                            <p>MS Dynamics CRM</p>                                    
                        </div>
                    </td>
        
                    <td style="height:30px; width:10%">
                        <asp:Image ID="Image2" BorderColor="YellowGreen" runat="server" ImageUrl="/Images/Shree_Logo1_thumb.jpg" />
                    </td>            
                    <td style="height:50px; width:40%">
                        <div id="Div2" style="font-family:Arial; text-align:center; color:brown; font-size:large">
                                <b>About Us</b>
                        </div>            
                        <div style="font-family:Arial; font-size:medium">
                            Shree, headquartered in British Columbia, Canada, is a recognized leader in placing top-notched Information Technology Professional Consultants.
                        </div>           
                        <p></p>
                        <div style="font-family:Arial; font-size:medium">
                            Talented professional consultant possess backgrounds and experience as diverse as some of the industries that we service.
                        </div>           
                        <div id="Finance" runat="server" style="text-align:center; font-family:Arial; font-size:medium; background-color:Red">
                            Finance
                        </div>
                        <div id="Health" runat="server" style="text-align:center;font-family:Arial; font-size:medium; background-color:Blue">
                            Health Care
                        </div>            
                        <div id="Government" runat="server" style="text-align:center; font-family:Arial; font-size:medium; background-color:Purple">
                            Government
                        </div>
                        <div id="Manufacture" runat="server" style="text-align:center; font-family:Arial; font-size:medium; background-color:Fuchsia">
                            Manufacturing
                        </div>                 
                    </td>
                </tr>
            </table>
        </div>      
    </asp:Content>

<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" ID="RightBar" />               
</asp:Content>

<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" ID="BottomBar" />           
</asp:Content>
