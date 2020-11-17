<%@ Page Title="" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="QA_Templates.aspx.cs" Inherits="DEVRE.QA_Templates" %>

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

    <table>
        <tr style="border:inset">
            <td style="border:inset; width:auto">
                <div>
                    <%--<asp:HyperLink ID="ActionLog" Enabled="true" OnLoad="Button1_Click" Target="_parent" NavigateUrl="~/test1.doc" Text="Action Item Log" runat="server"></asp:HyperLink>--%>
                    <%--<object style="width:auto; height:auto" id = "excel"  data="test1.xls" class="clsid:0002E55a-0000-0000-C000-000000000046"></object>--%>
                    <a href="TEST11.html" target="_blank">Action Item Log</a>
                    <asp:TextBox ID="txtTest1" runat="server"></asp:TextBox>
                    <%--<iframe  src="~/Docs/QA/test1.doc" style="width:100%; height:500px"></iframe>--%>
                    Response.contenttype = "application/vnd.ms-excel"
                    Response.AddHeader "Content-Disposition", "filename=" &  Request.Form("FileName") & ".xls" 
                </div>
            </td>
            <td style="border:inset">
                <div>
                    Allocate an action item number, description, status (Low/Medium/High), date reported, resource it was assigned to, its due date, and other additional comments
                </div>
            </td>
        </tr>
       <tr style="border:inset">
            <td style="border:inset; width:auto">
                <div>
                   Change Control Log 
                </div>
            </td>
           <td style="border:inset">
                <div>
                    Identify the basis for the change; confirm whether it is disapproved or approved. Include the Software Change Request Number (SCR) #, Requirements (Rqmnt) #,  date submitted, and whether it is approved/not approved, on hold, in progress, or cancelled.
                </div>
            </td>
        </tr>
        
       <tr style="border:inset">
            <td style="border:inset; width:auto">
                <div>
                    Change History Log
                </div>
            </td>
           <td style="border:inset; width:auto">
                <div>
                    Describe the date, author and history.
                </div>
            </td>
        </tr>
       <tr style="border:inset">
            <td style="border:inset; width:auto">
                <div>
                  Data Access Control  
                </div>
            </td>
            <td style="border:inset">
                <div>
                  For each Person or Group, identify the individuals who have access to the test cases and their status, e.g. all DEV has access to the Test Cases for Web Project 22B.  
                </div>
            </td>
        </tr>
        <tr style="border:inset">
            <td style="border:inset; width:auto">
                <div>
                  Log Status  
                </div>
            </td>
           <td style="border:inset">
                <div>
                    For each log, identify its Log ID, the nature of the risk/issue, and whether it is Open or Closed.
                </div>
            </td>
        </tr>
      <tr style="border:inset">
           <td style="border:inset; width:auto">
                <div>
                   Failed Scripts 
                </div>
            </td>
            <td style="border:inset">
                <div>
                    Identify the Area where the script failed, and provide details on the Set, Date, with a description of the error and its Severity, e.g. minor error, major error etc.
                </div>
            </td>
        </tr>
       <tr style="border:inset">
            <td style="border:inset; width:auto">
                <div>
                   Open Issues 
                </div>
            </td>
           <td style="border:inset">
                <div>
                   Identify all the open issues by number (#); list when they were created; who raised them, provide a brief description with details of its Assigned/Target Date/Category, Status (e.g. Open of Closed), Resolution and its Resolution Date. 
                </div>
            </td>
        </tr>
      <tr style="border:inset">
           <td style="border:inset; width:auto">
                <div>
                   Quality Log 
                </div>
            </td>
            <td style="border:inset">
                <div>
                   When performing the checks, identify the Ref #, its Module, the Method of Checking, name of the Tester, its Planned Date, Date Completed, details of the Result, the Action Items (i.e. tasks) and the Sign-off Date. 
                </div>
            </td>
        </tr>
       <tr style="border:inset">
            <td style="border:inset; width:auto">
                <div>
                  Risk Log  
                </div>
            </td>
           <td style="border:inset">
                <div>
                    Identify the Risk Number, its Date, Type (e.g Business/Project/Stage) a brief description, Likelihood %, Severity (e.g. Low or Medium) Impact, Action Required, who is was Assigned To and its Status.
                </div>
            </td>
        </tr>
      <tr style="border:inset">
           <td style="border:inset; width:auto">
                <div>
                  Roles and Responsibilities  
                </div>
            </td>
            <td style="border:inset">
                <div>
                   Identify all the roles on the project, with details of their responsibilities. Include contact names and email addresses.  
                </div>
            </td>
        </tr>
      <tr style="border:inset">
            <td style="border:inset; width:auto">
                <div>
                 Status Report   
                </div>
            </td>
            <td style="border:inset">
                <div>
                  Identify the function that is under test, enter its Business value on a scale of 1-5 with 1 the lowest value and 5 the highest (or whichever numbering system you wish to use); details of the problem severity broken out by a factor of 1 to 5. The total number of issues (a.k.a anomalies) is calculated in the final column.  
                </div>
            </td>
        </tr>
       <tr style="border:inset">
            <td style="border:inset; width:auto">
                <div>
                  Test Script  
                </div>
            </td>
           <td style="border:inset">
                <div>
                   Enter the Area under test, its Set, whether it has Passed or Failed, with a Description of the Error and its Severity, e.g. L/M/H 
                </div>
            </td>
        </tr>
       <tr style="border:inset">
            <td style="border:inset; width:auto">
                <div>
                  Test Script List  
                </div>
            </td>
            <td style="border:inset">
                <div>
                    Enter the Area under test, its Test Case ID, Bug ID, Bug Fixed Date, Bug Fixed By and Fix verified By details.
                </div>
            </td>
        </tr>
       <tr style="border:inset">
            <td style="border:inset; width:auto">
                <div>
                  Task Preparation  
                </div>
            </td>
            <td style="border:inset">
                <div>
                    Use this checklist to prepare for the Test Plan: Review Software Requirements Specifications, Identify functions/modules for testing, Perform Risk Analysis. The second checklist is for the Test Plan Population and helps to: Identify/Prioritize features to be tested, Define Test Strategy; Identify Test Tools; Identify Resource Requirements etc.
                </div>
            </td>
        </tr>
      <tr style="border:inset">
           <td style="border:inset; width:auto">
                <div>
                  Test Case  
                </div>
            </td>
            <td style="border:inset">
                <div>
                  This Test Case template is used to capture the name of the Test Case; its Description; Start Conditions; Pass Criteria; Tester Name; Build Number; identify the Test Data Used; Steps, Action and  Expected Result.  
                </div>
            </td>
        </tr>
     <tr style="border:inset">
            <td style="border:inset; width:auto">
                <div>
                 Test Tracking Report   
                </div>
            </td>
            <td style="border:inset">
                <div>
                Use this to track the progress of the software tests each Week, capture which are Planned, were Attempted and numbers that are Successful.    
                </div>
            </td>
        </tr>
      <tr style="border:inset">
            <td style="border:inset; width:auto">
                <div>
                Validation Log    
                </div>
            </td>
            <td style="border:inset">
                <div>
                   Use this to capture the Project’s Completion Date; Test Event; Test Case ID; Test Date; Tester; Test Results and Status 
                </div>
            </td>
        </tr>
      <tr style="border:inset">
            <td style="border:inset; width:auto">
                <div>
                 Version Control Log   
                </div>
            </td>
           <td style="border:inset">
                <div>
                   Use this to track the Product’s Version No., its Date, and Approvals.  
                </div>
            </td>
        </tr>
       <tr style="border:inset">
            <td style="border:inset; width:auto">
                <div>
                  Web Usability Report  
                </div>
            </td>
            <td style="border:inset">
                <div>
                   Use this to analysis the usability of a web project, such as the performance of its Navigation, Graphics, Error Messages, and the quality of its Microcontent 
                </div>
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
