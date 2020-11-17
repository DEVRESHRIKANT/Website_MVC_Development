<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BottomBar.ascx.cs" Inherits="DEVRE.BottomBar" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<html>
<head>  
    <title></title>  
    <script src="/js/foundation.min.js" type="text/javascript"></script>  
    <link href="/css/foundation.min.css" rel="stylesheet" type="text/css" />  
</head>
<body>
    <div class="container" style=width:auto; id="BottomBar"></div>
    <table style="width:100%">
        <tr>
            <td style="width:12.5%">
               <asp:HyperLink id="PhoneIcon" ImageUrl="~/Images/facebook.jpg" ImageWidth="150px"  ImageHeight="50px" Width="100px" Target="_blank" runat="server" NavigateUrl="https://facebook.com/greenvalleymotelma"></asp:HyperLink>           
            </td>
            <td style="width:12.5%">
                <asp:HyperLink id="HyperLink1" ImageUrl="~/Images/Twitter1.jpg" ImageWidth="150px" ImageHeight="50px" Target="_blank" runat="server" NavigateUrl="http://twitter.com"></asp:HyperLink>          
            </td>
            <td style="width:12.5%">
                <asp:HyperLink id="HyperLink2" ImageUrl="~/Images/Instagram.jpg" ImageWidth="150px" ImageHeight="50px" Target="_blank" runat="server" NavigateUrl="http://instagram.com"></asp:HyperLink>           
            </td>
            <td style="width:12.5%">
                <asp:HyperLink id="HyperLink3" ImageUrl="~/Images/Youtube.jpg" ImageWidth="150px" ImageHeight="50px" Target="_blank" runat="server" NavigateUrl="http://youtube.com"></asp:HyperLink>
            </td>
            <td style="width:12.5%">
                <asp:HyperLink id="HyperLink4" ImageUrl="~/Images/linkedin.jpg" ImageWidth="150px" ImageHeight="50px" Target="_blank" runat="server" NavigateUrl="http://linkedin.com"></asp:HyperLink>
            </td>
            <td style="width:12.5%">
                <asp:HyperLink id="HyperLink5" ImageUrl="~/Images/pinterest.jpg" ImageWidth="150px" ImageHeight="50px" Target="_blank" runat="server" NavigateUrl="http://pinterest.com"></asp:HyperLink>
            </td>
            <td style="width:12.5%">
                <asp:HyperLink id="HyperLink6" ImageUrl="~/Images/googleplus1.jpg" ImageWidth="150px" ImageHeight="50px" Target="_blank" runat="server" NavigateUrl="http://plus.google.com"></asp:HyperLink>           
            </td>
        </tr>
                        
</table>
<%--    <div runat="server" style="text-align:center">Shree Hospitality LLC. All rights Reserved</div>--%>
</body>
</html>