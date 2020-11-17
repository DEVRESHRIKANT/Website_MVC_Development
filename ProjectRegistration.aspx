<%@ Page Title="Project Registration" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="/ProjectRegistration.aspx.cs" Inherits="DEVRE.ProjectRegistration" %>

<%@ Register TagPrefix="ShreeMain" TagName="ShreeTop" Src="/TopBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeStatus" Src="~/StatusBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeMenu" Src="~/wfuc_MenuBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBanner" Src="/BannerBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeLeft" Src="~/LeftBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeRight" Src="~/RightBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBottom" Src="/BottomBar.ascx"%>

<asp:Content ID="menuContent" ContentPlaceHolderID="cpl_MenuBar" runat="server">
    <ShreeMain:ShreeMenu runat="server" ID="ShreeMenu" />           
</asp:Content>
<asp:Content ID="headerContent" ContentPlaceHolderID="TopBar" runat="server">
    <ShreeMain:ShreeTop runat="server" ID="ShreeTop" />              
</asp:Content>
<asp:Content ID="Breadcrumb" ContentPlaceHolderID="BannerBar" runat="server">   
    <ShreeMain:ShreeBanner runat="server" ID="ShreeBanner" />
    
</asp:Content>
<asp:Content ID="Status" ContentPlaceHolderID="StatusBar" runat="server">   
    <ShreeMain:ShreeStatus runat="server" ID="ShreeStatus" />
    
</asp:Content>

<asp:Content ID="LeftBar" ContentPlaceHolderID="LeftBar_Shree_Web"  runat="server">
    <ShreeMain:ShreeLeft runat="server" ID="ShreeLeft" />              
</asp:Content>

<asp:Content ID="pageContent" ContentPlaceHolderID="cpl_MainContentPlaceHolder" runat="server">
<asp:Panel runat="server" ID="pnlUsername" GroupingText="Project Registration">
    <table border="1" style="width:100%">	    
        <tr>
          <td style="text-align:right">Project Name:</td>
          <td style="text-align:left"><asp:textbox id="txtProjectName" CssClass="fencyTextbox" Width="250px" Runat="server"></asp:textbox>
          <asp:RequiredFieldValidator id="rfvProjectName" Runat="server" ErrorMessage="Project name is required." ControlToValidate="txtProjectName" Display="Dynamic"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <%--<tr>								
            <td style="text-align:right">User Name:</td>
            <td style="text-align:left"><asp:DropDownList id="ddlUserRole" CssClass="fencyTextbox" Runat="server"></asp:DropDownList>              
            <asp:RequiredFieldValidator id="rfvUserRole" Runat="server" ErrorMessage="User Role Selection is required." ControlToValidate="ddlUserRole" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>--%>        
        <tr>
          <td style="text-align:right">Duration:</td>
          <td style="text-align:left"><asp:textbox id="txtDuration" CssClass="fencyTextbox" Width="250px" Runat="server"></asp:textbox>
          
        </td>
        </tr>        
        <tr>        
            <td style="text-align:right">Domain:</td>
            <td style="text-align:left"><asp:TextBox  Runat="server" ID="txtDomain"></asp:TextBox></td>    
        </tr>          
          <tr>
            <td style="text-align:right">Technology:</td>
            <td style="text-align:left"><asp:textbox id="txtTechnology" CssClass="fencyTextbox" Width="250px" Runat="server"></asp:textbox>
                
            </td>
          </tr>
          <tr>
            <td style="text-align:right">Details:</td>
            <td style="text-align:left"><asp:textbox id="txtDetails" CssClass="fencyTextbox" Width="300px" Runat="server"></asp:textbox></td>
          </tr>
          
          
          <tr>
            <td style="text-align:right">Start Date:</td>
            <td ><asp:textbox id="txtStartDate" CssClass="fencyTextbox" Width="100px" Runat="server"></asp:textbox></td>
           </tr>                                                        
    
          <tr>
                <td style="text-align:right">End Date:</td>
              
                <td style="text-align:left"><asp:textbox id="txtEndDate" CssClass="fencyTextbox" Width="350px" Runat="server"></asp:textbox></td>
                
          </tr>
        <tr>
            <td>
                <asp:Label ID="lblOutput" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblDocOut" runat="server"></asp:Label>
            </td>
        </tr>   
          
          <tr>
                <td colspan="2">                    
                    <asp:button id="btnUserSave" Runat="server" Text="Save" onclick="btnUserSave_Click"></asp:button>&nbsp
                    <asp:button id="btnCancel" runat="server" Text="Cancel" onclick="btnCancel_Click"></asp:button>
                 <%--    <asp:button id="btnDisplayData" runat="server" Text="Display Data" onclick="Display_Click"></asp:button>--%>
                </td>
          </tr> 
        <tr>
            <td colspan="2">
                <asp:Repeater ID="rptUserRole" runat="server" DataSourceID="SqlDataSourceProjectRegistration">
            <HeaderTemplate>
            <table style="height:200px; width:100%">
              <tr>
                 <th>Project ID</th>
                 <th>Project Name</th>
                  <%--<th>User ID</th>                  --%>
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
              <%--<td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="lblClientID" 
                    text='<%# Eval("UserID") %>' />
              </td>--%>
              
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
              <%--<td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="lblClientID" 
                    text='<%# Eval("UserID") %>' />
              </td>--%>
              
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
      <asp:SqlDataSource ConnectionString="Data Source=SHRIKANT;Database=Shree_Database; Integrated Security=True;"
                        ID="SqlDataSourceProjectRegistration" runat="server"
                        SelectCommand="SELECT [ProjectID],[ProjectName],[Domain], [Technology], [Details], [Project_Start_Dt], [Project_End_Dt] FROM [tbl_Projects]" ProviderName="System.Data.SqlClient">
      </asp:SqlDataSource>

<%--      <asp:SqlDataSource ConnectionString="Data Source=184.168.47.13;Initial Catalog=motelma;Integrated Security=False; User ID=khushi;Password=kHUSHI2002;"
                        ID="SqlDataSourceProjectRegistration" runat="server"
                        SelectCommand="SELECT [ProjectID],[ProjectName],[Domain], [Technology], [Details], [Project_Start_Dt], [Project_End_Dt] FROM [tbl_Projects]" ProviderName="System.Data.SqlClient">
      </asp:SqlDataSource>--%>
            </td>
        </tr>                                  
    </table>    
</asp:Panel>
</asp:Content>
<asp:Content ID="RightContent" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" id="RightBarBar"/>
</asp:Content>
<asp:Content ID="bottomContent" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" id="BottomBar"/>
</asp:Content>
