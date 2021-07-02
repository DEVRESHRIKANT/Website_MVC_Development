<%@ Page Title="" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="RoleReport.aspx.cs" Inherits="DEVRE.RoleReport" %>

<%@ Register TagPrefix="ShreeMain" TagName="ShreeMenu" Src="~/wfuc_MenuBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeTop" Src="~/TopBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBanner" Src="~/BannerBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeStatus" Src="~/StatusBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeLeft" Src="~/LeftBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeRight" Src="~/RightBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBottom" Src="~/BottomBar.ascx"%>

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

<asp:Content ID="Head_Content" ContentPlaceHolderID="cpl_HeadBar" runat="server">
</asp:Content>
<asp:Content ID="Menu_Content" ContentPlaceHolderID="cpl_MenuBar" runat="server">
    <ShreeMain:ShreeMenu runat="server" ID="ShreeMenu" />
</asp:Content>

<asp:Content ID="Content8" ContentPlaceHolderID="cpl_MainContentPlaceHolder" runat="server">
        <asp:Panel runat="server" ID="pnlUsername" GroupingText="UserRole Listing">
        <table border="1" style="width:100%">
            <tr>
         <td colspan="2">
         <asp:Repeater ID="rptUserRole" runat="server" 
          DataSourceID="SqlDataSourceRoleReport">
          <HeaderTemplate>
              <table style="height:200px; width:100%">
              <tr>
                 <th>Role ID</th>
                 <th>Role Name</th>                 
              </tr>
          </HeaderTemplate>

          <ItemTemplate>
          <tr>
              <td style="background-color:#CCFFCC">
                  <asp:Label runat="server" ID="lblRoleId" 
                      text='<%# Eval("RoleId") %>' />
              </td>
              <td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="lblRoleName" 
                    text='<%# Eval("RoleName") %>' />
              </td>              
          </tr>
          </ItemTemplate>

          <AlternatingItemTemplate>
          <tr>
              <td >
                <asp:Label runat="server" ID="lblRoleId" 
                    text='<%# Eval("RoleId") %>' />
              </td>
              <td >
                <asp:Label runat="server" ID="lblRoleName" 
                    text='<%# Eval("RoleName") %>' />
              </td>             
          </tr>
          </AlternatingItemTemplate>

          <FooterTemplate>
              </table>
          </FooterTemplate>
      </asp:Repeater>
     <%-- <asp:SqlDataSource ConnectionString="Data Source=KHUSHU;Initial Catalog=Shree_Database;Integrated Security=True; MultipleActiveResultSets=True;"
          ID="SqlDataSourceRoleReport" 
          runat="server" 
          SelectCommand="SELECT [RoleID], [RoleName] FROM [tbl_UserRole]" 
          ProviderName="System.Data.SqlClient">
      </asp:SqlDataSource>            --%>

      <asp:SqlDataSource ConnectionString="Data Source=184.168.47.13;Initial Catalog=motelma;Integrated Security=False; User ID=khushi;Password=kHUSHI2002;"
          ID="SqlDataSourceRoleReport" 
          runat="server" 
          SelectCommand="SELECT [RoleID], [RoleName] FROM [tbl_UserRole]" 
          ProviderName="System.Data.SqlClient">
      </asp:SqlDataSource> 

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

