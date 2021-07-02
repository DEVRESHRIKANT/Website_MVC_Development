<%@ Page Title="Registration" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="UserRoleRegistration.aspx.cs" Inherits="DEVRE.UserRoleRegistration" %>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeMenu" Src="~/wfuc_MenuBar.ascx"%>

<asp:Content ID="menuContent" ContentPlaceHolderID="cpl_MenuBar" runat="server">
    <ShreeMain:ShreeMenu runat="server" ID="ShreeMenu" />           
</asp:Content>

<asp:Content ID="pageContent" ContentPlaceHolderID="cpl_MainContentPlaceHolder" runat="server">
    <asp:Panel runat="server" ID="pnlUsername" GroupingText="User Role Maintenance">
    <table border="1" style="width:100%">
	   
        <tr>
          <td style="text-align:right">Role Name:</td>
          <td style="text-align:left"><asp:textbox id="txtRoleName" CssClass="fencyTextbox" Width="250px" Runat="server"></asp:textbox>
          <asp:RequiredFieldValidator id="rfvRoleName" Runat="server" ErrorMessage="Role name is required." ControlToValidate="txtRoleName" Display="Dynamic"></asp:RequiredFieldValidator>
        </td>
        </tr>     
        <tr>
            <td>
                <asp:Label ID="lblOutput" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblDocOut" runat="server"></asp:Label>
            </td>
        </tr>   
          
         
        <tr style="font-family:Arial; font-size:larger; color:blue">
        <td colspan="2"> 
            <asp:Button ID="btnRoleSave" ForeColor="Blue" Font-Bold="true" Font-Names="Arial" Font-Size="Large" runat="server" Text="Save" OnClick="btnRoleSave_Click" />&nbsp            
            <asp:Button ID="btnUpdate" ForeColor="Blue" Font-Bold="true" Font-Names="Arial" Font-Size="Large" runat="server" Text="Update" OnClick="btnUpdate_Click" />&nbsp
            <asp:Button ID="btnDelete" ForeColor="Blue" Font-Bold="true" Font-Names="Arial" Font-Size="Large"  runat="server" Text="Delete" OnClick="btnDelete_Click" />&nbsp
            <asp:Button ID="btnCancel" ForeColor="Blue" Font-Bold="true" Font-Names="Arial" Font-Size="Large"  runat="server" Text="Cancel" OnClick="btnCancel_Click" />            
            <asp:Button ID="btnTest" ForeColor="Blue" Font-Bold="true" Font-Names="Arial" Font-Size="Large" runat="server" Text="Display doc" OnClick="btnTest_Click" />
        </td>
    </tr> 
        <tr>
         <td colspan="2">
         <asp:Repeater ID="rptUserRole" runat="server" DataSourceID="SqlDataSourceUserRole">
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
    <!--Local Database - HP Connection-->
    <%--<asp:SqlDataSource ConnectionString = "Data Source=KHUSHU; Database=Shree_Database; Integrated Security=True;"  
            id="SqlDataSourceUserRole" runat="server"                 
            SelectCommand="SELECT [RoleID], [RoleName] FROM [tbl_UserRole] WHERE STATUS='1'">
      </asp:SqlDataSource>--%>
    
    <!--Local Database - Surface Connection-->
    <%--<asp:SqlDataSource ConnectionString = "Data Source=SHRIKANT; Database=Shree_Database; Integrated Security=True;"  
            id="SqlDataSourceUserRole" runat="server"                 
            SelectCommand="SELECT [RoleID], [RoleName] FROM [tbl_UserRole] WHERE STATUS='1'">
      </asp:SqlDataSource>--%>
    <!--Production Database - MotelMa Connection-->
    <asp:SqlDataSource ConnectionString="Data Source=184.168.47.13;Initial Catalog=motelma;Integrated Security=False; User ID=khushi;Password=kHUSHI2002"
          ID="SqlDataSourceUserRole" runat="server" 
          SelectCommand="SELECT [RoleID], [RoleName] FROM [tbl_UserRole] WHERE STATUS='1'" ProviderName="System.Data.SqlClient">
    </asp:SqlDataSource>
                         
        </td>
        </tr>                                  
    </table>    
</asp:Panel>
</asp:Content>
