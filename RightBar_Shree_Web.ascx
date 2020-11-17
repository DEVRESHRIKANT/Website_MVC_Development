<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="~/RightBar_Shree_Web.ascx.cs" Inherits="DEVRE.RightBar_Shree_Web" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<html xmlns="http://www.w3.org/1999/xhtml">  
    <head>  
        <title></title>  
        <script src="/js/foundation.min.js" type="text/javascript"></script>  
        <link href="~/Content" rel="stylesheet" media="screen" />
    <style type="text/css">
        ul {
            list-style: none;
            font-size: large;            
        }

        li
        {           
        }

        ul li {
                display: block;
                position: relative;
                float: left;                
                border: 1px solid #000;
            }

        li ul {
            display: none;
            padding-left:0px;
        }

        ul li a {
            display: block;          
            padding: 5px 10px 5px 10px;
            text-decoration: none;
            white-space: nowrap;            
            color: #ff6a00;
        }

        ul li a:hover {
                background: yellow;
                
            }

        li:hover ul {
            display: block;
            position: absolute;
            
        }

        li:hover li {
            float: none;
        }

        li:hover a {
            
        }

        li:hover li a:hover {
            background: yellow;
        }

        #drop-nav li ul li {
            border-top: 0px;
        }
    </style>

</head>
    <body>
        <div style="width:auto">
            <table>
                <tr>
                    <td>            
                        <ul style="text-align:center; background-color:aqua; font-size:medium">        
                            <li style="text-align:left; background-color:aqua; font-size:medium; border:none">
                                <a id="sss" style="font-family:Arial; vertical-align:central; font-size:larger; background-color:coral; color:firebrick">Knowledge</a> 
                                <a href="/CaseStudy/AutomationFramework.aspx">Framework</a><br />
                                <a href="/CaseStudy/BuildServer.aspx">Build Server</a><br />
                                <a href="/CaseStudy/BusinessAnalyst.aspx">Business Analyst</a><br />
                                <a href="/CaseStudy/ContinuousIntegration.aspx">Continu Integ.</a><br />
                                <a href="/CaseStudy/Definition_CSharp.aspx">CSharp Definition</a><br />
                                <a href="/CaseStudy/CloudComputing.aspx">Cloud Computing</a><br />
                                <a href="/CaseStudy/DataWarehouse.aspx">Data Warehouse</a><br />
                                <a href="/CaseStudy/ExchangeServer.aspx">Exchange Server</a><br />
                                <a href="/CaseStudy/QualityAssurance.aspx">Quality Assurance</a><br />
                                <a href="/CaseStudy/QA_Templates.aspx">QA Templates</a><br />            
                                <a href="/CaseStudy/ProjectCharter.aspx">Project Charter</a><br />
                                <a href="/CaseStudy/PM_Templates.aspx">PM Templates</a><br />
                                <a href="/CaseStudy/RiskMgmt.aspx">Risk Managment</a><br />          
                                <a href="/CaseStudy/SharePoint.aspx">Share Point</a><br />            
                                <a href="/CaseStudy/Linq.aspx">Linq</a><br />
                                <a href="/CaseStudy/MVC.aspx">MVC</a><br />
                                <a href="/CaseStudy/CSharp_Difference.aspx">CSharp Difference</a><br />
                                <a href="/CaseStudy/AspDotNet.aspx">ASP.Net Knonwledge</a><br />
                                <a href="/CaseStudy/InfrastructureMgmt.aspx">Infras. Mgmt</a>
                        </li>
                    </ul>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>