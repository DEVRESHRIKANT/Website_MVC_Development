<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="~/LeftBar_Shree_Web.ascx.cs" Inherits="DEVRE.LeftBar_Shree_Web" %>
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
            <ul style="text-align:center; font-size:medium">
                <li style="text-align:left; width:auto;  font-size:medium;  background-color:aqua; border:none">
                    <a href="#" style="font-family:Arial; font-size:larger; background-color:coral; color:firebrick">PortFolios</a>
                    <a href="https://www.linkedin.com/in/devreshrikant/")" target="_blank">LinkedIn</a>
                    <a href="https://motelma.com/home/SHRIKANTDEVRE")" target="_blank">Personal Website</a>
                    <a href="https://github.com/DEVRESHRIKANT/Shree_Web_Automation.git")" target="_blank">GitHub Source Code</a>
                    <a href="https://dev.azure.com/devreshrikant/Shree/_git/Shree")" target="_blank">Cloud Azure Development</a>
                    <a href="#" style="font-family:Arial; font-size:larger; background-color:coral; color:firebrick">Canada Experience</a>
                    <a href="Documents/Canada_Experience_Trader_YellowPages2.pdf")" target="_blank">Trader Corporation</a>
                    <a href="#" style="font-family:Arial; font-size:larger; background-color:coral; color:firebrick">USA Experience</a>
                    <a href="Documents/USA_Experience_ATS.pdf")" target="_blank">Atlanta Tech & Sys</a>
                    <a href="Documents/USA_Experience_PSINet.pdf")" target="_blank">MACWIS</a>
                    <a href="Documents/USA_Experience_UltimateResouce.pdf")" target="_blank">Ultimate Resource</a>
                    <a href="#" style="font-family:Arial; font-size:larger; background-color:coral; color:firebrick">Certification</a>
                    <a href="Documents/Microsoft_MCSD2.pdf")" target="_blank">Microsoft Professional(MCAD)</a>
                    <a href="#" style="font-family:Arial; font-size:larger; background-color:coral; color:firebrick">Assignments</a>
                    <a href="Documents/USA_Experience_K-Force_CSharp_Assesment.pdf")" target="_blank">CSharp Tech Test</a>
                    <a href="Documents/Server_Configuration.pdf")" target="_blank">Server Configuration</a>
                    <a href="Documents/Canada_PMP_Course_Certificate.PDF")" target="_blank">PMP Course Certificate</a>
                    <a href="Documents/Shree_Software_Dev_Plan.mpp")" target="_blank">Project Plan</a>
                    <a href="Documents/Project_Plan_Test.xlsx")" target="_blank">Test Plan</a>
                    <a href="#" style="font-family:Arial; font-size:larger; background-color:coral; color:firebrick">Education</a>
                    <a href="Documents/Bachelor_Degree.pdf")" target="_blank">Bachelor Degree</a>
                    <a href="Documents/BhavansDegree.pdf")" target="_blank">Computer Management</a>
                    <a href="Documents/MBA_Marksheet.pdf")" target="_blank">Project Management</a>
                </li>
            </ul>    
        </div>
    </body>
</html>