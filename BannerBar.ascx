<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="~/BannerBar.ascx.cs" Inherits="DEVRE.BannerBar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>   
    <title></title>
<script type="text/javascript" src="Scripts/jquery-1.7.1.min.js"></script>
    <script src="/js/foundation.min.js" type="text/javascript"></script>  
    <link href="/css/foundation.min.css" rel="stylesheet" type="text/css" /> 
<script type="text/javascript">
    $(document).ready(function ()
    {
        setInterval(function()
        {
            $("#AdRotator1").load(location.href + "#AdRotator1", "" + Math.random() + "");
        }, 1000);
    });
</script>
</head>
<body>
  <div id="rotator" style="padding:0">  
    <%--<asp:PlaceHolder ID="PlaceHolder1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />  
        <asp:Timer ID="Timer1" Interval="2000" runat="server" />  
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">  
            <Triggers>  
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />  
            </Triggers>  
            <ContentTemplate>  
                <asp:AdRotator Height="400px" Width="100%" ID="AdRotator2" AdvertisementFile="/MotelImages.xml"  
                    runat="server" />  
            </ContentTemplate>  
        </asp:UpdatePanel>
    </asp:PlaceHolder>--%>  

<table style="width:100%; border:none; background-color:aqua" cellpadding="0" cellspacing="0">
        <tr style="height:200px; width:100%">
            <td style="width:25%">
                <img src="/Images/Motel_Room1.jpg" style="height:200px; width:100%" />
            </td>
            <td style="width:25%">
                <img src="Images/Motel_Bathroom1.jpg" style="height:200px; width:100%" />
            </td>
            <td style="width:25%">
                <img src="Images/Motel_Amenities.jpg" style="height:200px; width:100%" />
            </td>
            <td style="width:25%">
                 <img src="/Images/Motel_Breakfast4.jpg" style="height:200px; width:100%" />
            </td>
        </tr>
    </table>

</div>  
</body>
</html>
