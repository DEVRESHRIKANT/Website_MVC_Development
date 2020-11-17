<%@ Page Title="" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="UserReport.aspx.cs" Inherits="DEVRE.UserReport" %>

<%@ Register TagPrefix="ShreeMain" TagName="ShreeMenu" Src="~/wfuc_MenuBar.ascx" %>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeTop" Src="/TopBar.ascx" %>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBanner" Src="/BannerBar.ascx" %>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeStatus" Src="/StatusBar.ascx" %>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeLeft" Src="~/LeftBar_Shree_Web.ascx" %>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeRight" Src="~/RightBar_Shree_Web.ascx" %>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBottom" Src="/BottomBar.ascx" %>

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
<asp:Content ID="LeftBar" ContentPlaceHolderID="LeftBar_Shree_Web" runat="server">
    <ShreeMain:ShreeLeft runat="server" ID="ShreeLeft" />
</asp:Content>

<%--Middle Section Column --%>
<asp:Content ID="MiddleBar" ContentPlaceHolderID="cpl_MainContentPlaceHolder" runat="server">
    <asp:Panel runat="server" ID="pnlUsername" GroupingText="Users Listing">
        <table border="1" style="width: 100%">
            <tr>
                <td colspan="2">
                    <asp:Repeater ID="rptUserReport" runat="server" DataSourceID="SqlDataSourceUserReport">
                        <HeaderTemplate>
                            <table style="height: 200px; width: 100%; border: thin">
                                <tr style="background-color: burlywood; font-family: Arial; font-size: Larger; color: blue">
                                    <th>ID /Last Name</th>
                                    <th>Email Address</th>
                                    <th>Role Name</th>
                                    <th>Project Name</th>
                                    <th>Phone Number</th>
                                    <th>Domain</th>
                                    <th>Technology</th>
                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td style="background-color: #CCFFCC">
                                    <asp:Label runat="server" ID="lblRoleId"
                                        Text='<%# Eval("UserId") %>' />
                                </td>
                                <td style="background-color: #CCFFCC">
                                    <asp:Label runat="server" ID="lblRoleName"
                                        Text='<%# Eval("EmailAddress") %>' />
                                </td>
                                <td style="background-color: #CCFFCC">
                                    <asp:Label runat="server" ID="Label1"
                                        Text='<%# Eval("RoleId") %>' />
                                </td>
                                <td style="background-color: #CCFFCC">
                                    <asp:Label runat="server" ID="Label2"
                                        Text='<%# Eval("ProjectId") %>' />
                                </td>
                                <td style="background-color: #CCFFCC">
                                    <asp:Label runat="server" ID="Label3"
                                        Text='<%# Eval("PhoneNumber") %>' />
                                </td>
                                <td style="background-color: #CCFFCC">
                                    <asp:Label runat="server" ID="Label4"
                                        Text='<%# Eval("Domain") %>' />
                                </td>
                                <td style="background-color: #CCFFCC">
                                    <asp:Label runat="server" ID="Label5"
                                        Text='<%# Eval("Technology") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                            <tr>
                                <td style="background-color: cornsilk">
                                    <asp:Label runat="server" ID="lblRoleId"
                                        Text='<%# Eval("UserId") %>' />
                                </td>
                                <td style="background-color: cornsilk">
                                    <asp:Label runat="server" ID="lblRoleName"
                                        Text='<%# Eval("EmailAddress") %>' />
                                </td>
                                <td style="background-color: cornsilk">
                                    <asp:Label runat="server" ID="Label1"
                                        Text='<%# Eval("RoleId") %>' />
                                </td>
                                <td style="background-color: cornsilk">
                                    <asp:Label runat="server" ID="Label2"
                                        Text='<%# Eval("ProjectId") %>' />
                                </td>
                                <td style="background-color: cornsilk">
                                    <asp:Label runat="server" ID="Label3"
                                        Text='<%# Eval("PhoneNumber") %>' />
                                </td>
                                <td style="background-color: cornsilk">
                                    <asp:Label runat="server" ID="Label4"
                                        Text='<%# Eval("Domain") %>' />
                                </td>
                                <td style="background-color: cornsilk">
                                    <asp:Label runat="server" ID="Label5"
                                        Text='<%# Eval("Technology") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource ConnectionString="Data Source=184.168.47.13;Initial Catalog=motelma;Integrated Security=False; User ID=khushi;Password=kHUSHI2002;"
                    ID="SqlDataSourceUserReport" runat="server"
                    SelectCommand="SELECT [UserID], [EmailAddress],[RoleId],[ProjectId],[PhoneNumber],[Domain],[Technology] FROM [tbl_Users]"></asp:SqlDataSource>
      <%--<asp:SqlDataSource ConnectionString="Data Source=Source=DEVRE\SQLSERVER14;Initial Catalog=Shree_Database;Integrated Security=True;MultipleActiveResultSets=True;"
          ID="SqlDataSourceUserReport" runat="server"
          SelectCommand="SELECT [UserID], [EmailAddress],[RoleId],[ProjectId],[PhoneNumber],[Domain],[Technology] FROM [tbl_Users]"></asp:SqlDataSource>--%>
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
