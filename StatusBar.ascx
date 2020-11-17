<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="~/StatusBar.ascx.cs" Inherits="DEVRE.StatusBar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  

<html xmlns="http://www.w3.org/1999/xhtml">  
<head>  
    <title></title>  
    <script src="/js/foundation.min.js" type="text/javascript"></script>  
    <link href="/css/foundation.min.css" rel="stylesheet" type="text/css" />  
</head>

    <script type="text/javascript" charset="utf-8">
	$(document).ready(function(){
		var vis = false;
		var lastUrl;
		$('#menu ul li a').click(function(){
			lastUrl = $('#content .ShreeStatus').attr('1');

			if(!vis)
                        {
                           $('#back').fadeIn(); 
                           vis = true; 
			}
			
		        $('#back').attr('href', lastUrl);
			
			$('#content').load('StatusBar.ascx #' + $(this).attr('href'));


			return false;
		});
		
		$('#back').click(function(){
		    lastUrl = $('#content .ShreeStatus').attr('2');
			
			$('#content').load('LeftSide_Development.ascx #' + $(this).attr('href'));


			$(this).attr('href', lastUrl);


			return false;
                });
		
	});
</script>


<body>
    <div style="padding:0px; padding-top:0px; padding-bottom:0px">
        <table style="background-color:aqua; padding-top:0; padding-bottom:0; width:100%"  cellpadding="0" cellspacing="0">
            <tr>                
                <td style="width:20%; text-align:left">
                    <div id="divCurrentPage" title="lblCurrentPage" style="border:medium">
                            Current Page
                    </div>
                    <%--<div class="ShreeStatus" id="1">
                        <asp:LinkButton  ID="ManagementLink" runat="server" Text="Management" Font-Size="Medium" Font-Names="Arial"  ForeColor="Green" OnClick="ManagementLink_Click"></asp:LinkButton>                    
                    </div>--%>
                </td>
                    
                <td>
                    <div id="divLastName" title="lblCurrentPage" style="border:medium">
                        User Name
                    </div>
    <%--                <div class="ShreeStatus" id="2">
                    <asp:LinkButton  ID="BusinessLink" runat="server" Text="Business Analysis" Font-Size="Medium" Font-Names="Arial"  ForeColor="Green" OnClick="BusinessLink_Click"></asp:LinkButton>
                </div>--%>
                        </td>      
                <td>
                    <div id="divEmailAddress" title="lblCurrentPage" style="border:medium">
                        Email Address
                    </div>
                    <%--<div class="ShreeStatus" id="3">
                    <asp:LinkButton  ID="DevelopmentLink" runat="server" Text="Development"  Font-Size="Medium" Font-Names="Arial" ForeColor="Green" OnClick="DevelopmentLink_Click"></asp:LinkButton>
                      </div>
                        --%>  
                </td>
                <td>
                    <div id="divUserRole" title="lblCurrentPage" style="border:medium">
                        User Role
                    </div>
                    <%--<div class="ShreeStatus" id="4">
                    <asp:LinkButton  ID="DatabaseLink" runat="server" Text="Database" Font-Size="Medium" Font-Names="Arial" ForeColor="Green" OnClick="DatabaseLink_Click"></asp:LinkButton>
                        </div>--%>
                </td>
                <td>
                    <div class="ShreeStatus" id="5">
<%--                    <asp:LinkButton  ID="QualityLink" runat="server" Text="Quality Assurance" Font-Size="Medium" Font-Names="Arial" ForeColor="Green" OnClick="QualityLink_Click"></asp:LinkButton>--%>
                        </div>
                </td>
                <td>
                    <div class="ShreeStatus" id="6">
<%--                    <asp:LinkButton  ID="OperationLink" runat="server" Text="Production" Font-Size="Medium" Font-Names="Arial" ForeColor="Green" OnClick="OperationLink_Click"></asp:LinkButton>--%>
                        </div>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>