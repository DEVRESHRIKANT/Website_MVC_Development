<%@ Page Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeFile="Referrals.aspx.cs" Inherits="DEVRE.Referrals" Title="Untitled Page" %>

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
    <div id="divResult" runat="server"></div>
	<div id="divError" runat="server"></div>
</asp:Content>

<%--Middle Section Column --%>
    <asp:Content ID="MiddleBar" ContentPlaceHolderID="cpl_MainContentPlaceHolder"  runat="server">

<table style="padding:0";  border="1">
	    <tr>
	        <td colspan="2"><div style="font:14; text-align:center; color:Green" id="Refferal">Refferal's Information</div></td>
	    </tr>
	    <tr>
          <td style="align-items:center; vertical-align:top">First Name:</td>
          <td style="align-items:flex-start"><asp:textbox id="txtFirstName" CssClass="fencyTextbox" Width="250px" Runat="server"></asp:textbox>
          <asp:requiredfieldvalidator id="rfvUserName" Runat="server" ErrorMessage="First name is required." ControlToValidate="txtFirstName" Display="Dynamic"></asp:requiredfieldvalidator></td>
        </tr>
        <tr>
          <td style="align-items:center; vertical-align:top">Last Name:</td>
          <td style="align-items:flex-start"><asp:textbox id="txtLastName" CssClass="fencyTextbox" Width="250px" Runat="server"></asp:textbox>
          <asp:requiredfieldvalidator id="Requiredfieldvalidator1" Runat="server" ErrorMessage="Last name is required." ControlToValidate="txtLastName" Display="Dynamic"></asp:requiredfieldvalidator></td>
        </tr>
        
        <tr>
            <td style="align-items:center; vertical-align:top">Address-1:</td>
            <td style="align-items:flex-start"><asp:textbox id="txtClientAddress1" CssClass="fencyTextbox" Width="300px" Runat="server"></asp:textbox>
                <asp:requiredfieldvalidator id="rfvClientAddress1" Runat="server" ErrorMessage="User address-1 is required." ControlToValidate="txtClientAddress1" Display="Dynamic"></asp:requiredfieldvalidator></td>
        </tr>
         <tr>
            <td style="align-items:center; vertical-align:top">Address-2:</td>
            <td style="align-items:flex-start"><asp:textbox id="txtClientAddress2" CssClass="fencyTextbox" Width="300px" Runat="server"></asp:textbox></td>
          </tr>
          <tr>
            <td style="align-items:center; vertical-align:top">City:</td>
            <td style="align-items:flex-start"><asp:textbox id="txtCity" CssClass="fencyTextbox" Width="250px" Runat="server"></asp:textbox>
                <asp:requiredfieldvalidator id="rfvCity" Runat="server" ErrorMessage="User city is required." ControlToValidate="txtCity" Display="Dynamic"></asp:requiredfieldvalidator>
            </td>
          </tr>
          <tr>
            <td style="align-items:center; vertical-align:top">Sub-Location:</td>
            <td style="align-items:flex-start"><asp:textbox id="txtSubLocation" CssClass="fencyTextbox" Width="250px" Runat="server"></asp:textbox>
                <asp:requiredfieldvalidator id="rfvSubLocation" Runat="server" ErrorMessage="Sub Location or suburb is required." ControlToValidate="txtSubLocation" Display="Dynamic"></asp:requiredfieldvalidator>
            </td>
          </tr>
          <tr>
            <td style="align-items:center; vertical-align:top">Phone Info:</td>
            <td style="align-items:center">
                <table style="padding:0"; border="0">
                    <tr>
                        <td class="MyLabels" style="align-items:center; vertical-align:top">Country &amp;</td>
                        <td class="MyLabels" style="align-items:center; vertical-align:top">City code</td>
                        <td class="MyLabels" style="align-items:center; vertical-align:top">Phone #</td></tr>
                    <tr>
                        <td style="align-items:flex-start"><asp:textbox id="txtClientCountryPhone" CssClass="fencyTextbox" Width="50px" Runat="server"></asp:textbox></td>
                        <td style="align-items:flex-start"><asp:textbox id="txtClientCityPhone" CssClass="fencyTextbox" Width="50px" Runat="server"></asp:textbox></td>
                        <td style="align-items:flex-start"><asp:textbox id="txtClientPhone" CssClass="fencyTextbox" Width="100px" Runat="server"></asp:textbox></td>
                    </tr>                                                        
                </table>                    
            </td>
          </tr>
          <tr>
            <td style="align-items:center; vertical-align:top">Fax Info:</td>
            <td>
                <table style="padding:0"; border="0">
                    <tr>
                        <td class="MyLabels" style="align-items:center; vertical-align:top">Country &amp;</td>
                        <td class="MyLabels" style="align-items:center; vertical-align:top">City code</td>
                        <td class="MyLabels" style="align-items:center; vertical-align:top">Fax #</td></tr>
                    <tr>
                        <td style="align-items:flex-start"><asp:textbox id="txtClientCountryFax" CssClass="fencyTextbox" Width="50px" Runat="server"></asp:textbox></td>
                        <td style="align-items:flex-start"><asp:textbox id="txtClientCityFax" CssClass="fencyTextbox" Width="50px" Runat="server"></asp:textbox></td>
                        <td style="align-items:flex-start"><asp:textbox id="txtClientFax" CssClass="fencyTextbox" Width="100px" Runat="server"></asp:textbox></td>
                    </tr>                                                        
                </table>                    
            </td>
          </tr>
          <tr>
                <td style="align-items:center; vertical-align:top">Email:</td>
                <td style="align-items:flex-start"><asp:textbox id="txtClientEmail" CssClass="fencyTextbox" Width="350px" Runat="server"></asp:textbox></td>
          </tr>
          <tr>
                <td style="align-items:center; vertical-align:top">WebsiteURL:</td>
                <td style="align-items:flex-start"><asp:textbox id="txtClientURL" CssClass="fencyTextbox" Width="350px" Runat="server"></asp:textbox></td>
          </tr>
          <tr><td colspan="2"></td></tr>
          <tr>
	        <td colspan="2"><div style="font:14; text-align:center; color:Green" id="Div1">Reffered's Information</div></td>
	      </tr>
	      <tr>
            <td style="align-items:center; vertical-align:top">First Name:</td>
            <td style="align-items:flex-start"><asp:textbox id="txtRef_FirstName" CssClass="fencyTextbox" Width="250px" Runat="server"></asp:textbox>
            <asp:requiredfieldvalidator id="Requiredfieldvalidator2" Runat="server" ErrorMessage="First name is required." ControlToValidate="txtRef_FirstName" Display="Dynamic"></asp:requiredfieldvalidator></td>
          </tr>
        <tr>
          <td style="align-items:center; vertical-align:top">Last Name:</td>
          <td style="align-items:flex-start"><asp:textbox id="txtRef_LastName" CssClass="fencyTextbox" Width="250px" Runat="server"></asp:textbox>
          <asp:requiredfieldvalidator id="Requiredfieldvalidator3" Runat="server" ErrorMessage="Last name is required." ControlToValidate="txtRef_LastName" Display="Dynamic"></asp:requiredfieldvalidator></td>
        </tr>
        
        <tr>
            <td style="align-items:center; vertical-align:top">Address-1:</td>
            <td style="align-items:flex-start"><asp:textbox id="txtRefAddress1" CssClass="fencyTextbox" Width="300px" Runat="server"></asp:textbox>
                <asp:requiredfieldvalidator id="Requiredfieldvalidator4" Runat="server" ErrorMessage="User address-1 is required." ControlToValidate="txtRefAddress1" Display="Dynamic"></asp:requiredfieldvalidator></td>
         </tr>
         <tr>
            <td style="align-items:center; vertical-align:top">Address-2:</td>
            <td style="align-items:flex-start"><asp:textbox id="Textbox4" CssClass="fencyTextbox" Width="300px" Runat="server"></asp:textbox></td>
          </tr>
          <tr>
            <td style="align-items:center; vertical-align:top">City:</td>
            <td style="align-items:flex-start"><asp:textbox id="Textbox5" CssClass="fencyTextbox" Width="250px" Runat="server"></asp:textbox>
                <asp:requiredfieldvalidator id="Requiredfieldvalidator5" Runat="server" ErrorMessage="User city is required." ControlToValidate="txtCity" Display="Dynamic"></asp:requiredfieldvalidator>
            </td>
          </tr>
          <tr>
            <td style="align-items:center; vertical-align:top">Sub-Location:</td>
            <td style="align-items:flex-start"><asp:textbox id="Textbox6" CssClass="fencyTextbox" Width="250px" Runat="server"></asp:textbox>
                <asp:requiredfieldvalidator id="Requiredfieldvalidator6" Runat="server" ErrorMessage="Sub Location or suburb is required." ControlToValidate="txtSubLocation" Display="Dynamic"></asp:requiredfieldvalidator>
            </td>
          </tr>
          <tr>
            <td style="align-items:center; vertical-align:top">Phone Info:</td>
            <td>
                <table style="padding:0"; border="0">
                    <tr>
                        <td class="MyLabels" style="align-items:center; vertical-align:top">Country &amp;</td>
                        <td class="MyLabels" style="align-items:center; vertical-align:top">City code</td>
                        <td class="MyLabels" style="align-items:center; vertical-align:top">Phone #</td></tr>
                    <tr>
                        <td style="align-items:flex-start"><asp:textbox id="Textbox7" CssClass="fencyTextbox" Width="50px" Runat="server"></asp:textbox></td>
                        <td style="align-items:flex-start"><asp:textbox id="Textbox8" CssClass="fencyTextbox" Width="50px" Runat="server"></asp:textbox></td>
                        <td style="align-items:flex-start"><asp:textbox id="Textbox9" CssClass="fencyTextbox" Width="100px" Runat="server"></asp:textbox></td>
                    </tr>                                                        
                </table>                    
            </td>
          </tr>
          <tr>
            <td style="align-items:center; vertical-align:top">Fax Info:</td>
            <td style="align-items:center; vertical-align:baseline">
                <table style="padding:0"; border="0">
                    <tr>
                        <td class="MyLabels" style="align-items:center; vertical-align:top">Country &amp;</td>
                        <td class="MyLabels" style="align-items:center; vertical-align:top">City code</td>
                        <td class="MyLabels" style="align-items:center; vertical-align:top">Fax #</td></tr>
                    <tr>
                        <td style="align-items:flex-start"><asp:textbox id="Textbox10" CssClass="fencyTextbox" Width="50px" Runat="server"></asp:textbox></td>
                        <td style="align-items:flex-start"><asp:textbox id="Textbox11" CssClass="fencyTextbox" Width="50px" Runat="server"></asp:textbox></td>
                        <td style="align-items:flex-start"><asp:textbox id="Textbox12" CssClass="fencyTextbox" Width="100px" Runat="server"></asp:textbox></td>
                    </tr>                                                        
                </table>                    
            </td>
          </tr>
          <tr>
                <td style="align-items:center; vertical-align:top">Email:</td>
                <td style="align-items:flex-start"><asp:textbox id="Textbox13" CssClass="fencyTextbox" Width="350px" Runat="server"></asp:textbox></td>
          </tr>
          <tr>
                <td style="align-items:center; vertical-align:top">WebsiteURL:</td>
                <td style="align-items:flex-start"><asp:textbox id="Textbox14" CssClass="fencyTextbox" Width="350px" Runat="server"></asp:textbox></td>
          </tr>      
          
          <tr>
                <td colspan="2">
                    <asp:button id="btnReferralSave" Runat="server" Text="Save" onclick="btnReferralSave_Click"></asp:button>&nbsp
                    <asp:button id="btnCancel" runat="server" Text="Cancel" onclick="btnCancel_Click"></asp:button>
                </td>
          </tr>                           
    </table>
</asp:Content>

<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" ID="RightBar" />               
</asp:Content>

<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" ID="BottomBar" />           
</asp:Content>
