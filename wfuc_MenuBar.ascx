<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wfuc_MenuBar.ascx.cs" Inherits="DEVRE.wfuc_MenuBar" %>
<%--<%@Scripts.Render("/Scripts/js") %>
<%@Styles.Render("~/Content/bootstrapcss") %>
<%@Styles.Render("/Content/css") %>--%>

<meta name="viewport" charset="utf-8" content="width=device-width" />
<script src="/js/foundation.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/jquery.js"></script>
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

<body>
<div id="horizontalmenu" style="width:auto">
    <asp:Menu ID="navMenu" Width="100%" runat="server" Orientation="Horizontal" DynamicMenuItemStyle-HorizontalPadding="5px" >     
        <DynamicHoverStyle ></DynamicHoverStyle>  
        <DynamicMenuItemStyle> </DynamicMenuItemStyle>
            <Items>
                <asp:MenuItem Text="Home"  NavigateUrl="#">                          
                    <asp:MenuItem Text="Web Shree" NavigateUrl="~/Devre_Home_Web.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="MVC Shree" NavigateUrl="~/Home/ShrikantDevre"></asp:MenuItem>
                    <asp:MenuItem Text="Home_Motel" NavigateUrl="~/Home"></asp:MenuItem>
<%--                    <asp:MenuItem Text="Web_Motel" NavigateUrl="~/Home"></asp:MenuItem>--%>

                </asp:MenuItem>
                <asp:MenuItem Text="Accounts"  NavigateUrl="#">
                    <asp:MenuItem Text="Login" NavigateUrl="~/Login_Shree.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Role Register" NavigateUrl="~/UserRoleRegistration.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="User Register" NavigateUrl="~/UserRegistration.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Project Register" NavigateUrl="~/ProjectRegistration.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="User/Project Assign" NavigateUrl="~/User_Project_Assignment.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Referrals" NavigateUrl="~/Referrals.aspx"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Reports"  NavigateUrl="#">                          
                    <asp:MenuItem Text="Role Report" NavigateUrl="~/RoleReport.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Role_All_ID" NavigateUrl="~/Role_Report_All_ByID.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="User Report" NavigateUrl="~/UserReport.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Project Report" NavigateUrl="~/ProjectReport.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Personal Video" NavigateUrl="~/PersonalVideos.aspx"></asp:MenuItem>
                </asp:MenuItem>

            </Items>
        <StaticMenuItemStyle HorizontalPadding="5px" ForeColor="blue"></StaticMenuItemStyle>
    </asp:Menu>
</div>
</body>
