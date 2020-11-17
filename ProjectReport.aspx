<%@ Page Title="" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="ProjectReport.aspx.cs" Inherits="DEVRE.ProjectRport" %>

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
    <asp:Panel runat="server" ID="pnlUsername" GroupingText="Project Listing">
        <table border="1" style="width:100%">
            <tr>
            <td colspan="2">
                <asp:Repeater ID="rptProjectReport" runat="server" DataSourceID="SqlDataSourceProjectReport">
            <HeaderTemplate>
            <table style="height:200px; width:100%">
              <tr>
                 <th>Project ID</th>
                 <th>Project Name</th>
                  <th>User ID</th>                  
                 <th>Domain</th>
                 <th>Technology</th>
                  <th>Start Date</th>
                  <th>End Date</th>
                  <th>Details</th>                                   
              </tr>
          </HeaderTemplate>
          <ItemTemplate>
          <tr>
              <td style="background-color:#CCFFCC">
                  <asp:Label runat="server" ID="lblProjectId" 
                      text='<%# Eval("ProjectId") %>' />
              </td>
              <td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="lblProjectName" 
                    text='<%# Eval("ProjectName") %>' />
              </td>
              <td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="lblClientID" 
                    text='<%# Eval("UserID") %>' />
              </td>
              
              <td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="lblDomain" 
                    text='<%# Eval("Domain") %>' />
              </td>
              <td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="lblTechnology" 
                    text='<%# Eval("Technology") %>' />
              </td>
              <td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="lblStart_Dt" 
                    text='<%# Eval("Project_Start_Dt") %>' />
              </td>
              <td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="lblEnd_Dt" 
                    text='<%# Eval("Project_End_Dt") %>' />
              </td>                            
              <td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="lblDetails" 
                    text='<%# Eval("Details") %>' />
              </td>                                                        
          </tr>
          </ItemTemplate>
          <AlternatingItemTemplate>
          <tr>
              <td style="background-color:#CCFFCC">
                  <asp:Label runat="server" ID="lblProjectId" 
                      text='<%# Eval("ProjectId") %>' />
              </td>
              <td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="lblProjectName" 
                    text='<%# Eval("ProjectName") %>' />
              </td>
              <td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="lblClientID" 
                    text='<%# Eval("UserID") %>' />
              </td>
              
              <td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="lblDomain" 
                    text='<%# Eval("Domain") %>' />
              </td>
              <td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="lblTechnology" 
                    text='<%# Eval("Technology") %>' />
              </td>
              <td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="lblStart_Dt" 
                    text='<%# Eval("Project_Start_Dt") %>' />
              </td>
              <td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="lblEnd_Dt" 
                    text='<%# Eval("Project_End_Dt") %>' />
              </td>                            
              <td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="lblDetails" 
                    text='<%# Eval("Details") %>' />
              </td>                                                        
          </tr>
          </AlternatingItemTemplate>
          <FooterTemplate>
              </table>
          </FooterTemplate>
      </asp:Repeater>
      <asp:SqlDataSource ConnectionString="Data Source=184.168.47.13;Initial Catalog=motelma;Integrated Security=False; User ID=khushi;Password=kHUSHI2002;"
          ID="SqlDataSourceProjectReport" runat="server" 
          SelectCommand="SELECT [ProjectID],[UserID], [ProjectName],[Domain], [Technology], [Details], [Project_Start_Dt], [Project_End_Dt] FROM [tbl_Projects]" ProviderName="System.Data.SqlClient">
      </asp:SqlDataSource>
      <%--<asp:SqlDataSource 
          ConnectionString=
              "Data Source=Data Source=DEVRE\SQLSERVER14;Initial Catalog=Shree_Database;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework"
          ID="SqlDataSource1" runat="server" 
          SelectCommand="SELECT [ProjectID],[UserID], [ProjectName],[Domain], [Technology], [Details], [Project_Start_Dt], [Project_End_Dt] FROM [tbl_Projects]" ProviderName="System.Data.SqlClient">
      </asp:SqlDataSource>--%>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnInsert" ForeColor="Blue" Font-Bold="true" Font-Names="Arial" Font-Size="Large" runat="server" Text="Print" OnClick="btnPrint_Click" />&nbsp
                <asp:Button ID="Button1" ForeColor="Blue" Font-Bold="true" Font-Names="Arial" Font-Size="Large" runat="server" Text="Email" OnClick="btnEmail_Click" />&nbsp
                <asp:Button ID="Button2" ForeColor="Blue" Font-Bold="true" Font-Names="Arial" Font-Size="Large" runat="server" Text="Download" OnClick="btnDownload_Click" />&nbsp
                <asp:Button ID="Button3" ForeColor="Blue" Font-Bold="true" Font-Names="Arial" Font-Size="Large" runat="server" Text="View" OnClick="btnView_Click" />&nbsp
            </td>
        </tr>
        </table>
    </asp:Panel>
</asp:Content>


<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" ID="RightBar" />               
</asp:Content>

<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" ID="BottomBar" />           
</asp:Content>
