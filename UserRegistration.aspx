<%@ Page Title="User Registration" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="~/UserRegistration.aspx.cs" Inherits="DEVRE.UserRegistration" %>

<%@ Register TagPrefix="ShreeMain" TagName="ShreeMenu" Src="~/wfuc_MenuBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeTop" Src="/TopBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBanner" Src="/BannerBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeStatus" Src="/StatusBar.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeLeft" Src="~/LeftBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeRight" Src="~/RightBar_Shree_Web.ascx"%>
<%@ Register TagPrefix="ShreeMain" TagName="ShreeBottom" Src="/BottomBar.ascx"%>

<asp:Content ID="ShreeHead" ContentPlaceHolderID="cpl_HeadBar" runat="server">
</asp:Content>
<asp:Content ID="ShreeMenu" ContentPlaceHolderID="cpl_MenuBar" runat="server">
    <ShreeMain:ShreeMenu runat="server" ID="MenuBar" />           
</asp:Content>
<asp:Content ID="ShreeTop" ContentPlaceHolderID="TopBar" runat="server">
    <ShreeMain:ShreeTop runat="server" id="TopBar"/>
</asp:Content>
<asp:Content ID="ShreeLeft" ContentPlaceHolderID="LeftBar_Shree_Web" runat="server">
    <ShreeMain:ShreeLeft runat="server" id="LeftBar"/>
</asp:Content>
<asp:Content ID="ShreeStatus" ContentPlaceHolderID="StatusBar" runat="server">
    <ShreeMain:ShreeStatus runat="server" id="StatusBar"/>
</asp:Content>

<asp:Content ID="ShreeMiddle" ContentPlaceHolderID="cpl_MainContentPlaceHolder" runat="server">
<asp:Panel runat="server" ID="pnlUsername" GroupingText="User Registration">
    <table border="1" style="width:100%">
	    <tr>								
            <td style="text-align:right; width:350px; font-family:Arial; font-size:larger; color:blue">Role:</td>
            <td style="text-align:left"><asp:DropDownList id="ddlRoles" CssClass="fencyTextbox" Runat="server"></asp:DropDownList>              
            <asp:RequiredFieldValidator id="rfvRoles" Runat="server" ErrorMessage="Role Selection is required." ControlToValidate="ddlRoles" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align:right; font-family:Arial; font-size:larger; color:blue">Email / ID:</td>
            <td style="text-align:left"><asp:textbox id="txtEmailAddress" CssClass="fencyTextbox" Width="350px" Runat="server"></asp:textbox></td>
            <asp:RequiredFieldValidator id="rfvEmail"  Runat="server" ErrorMessage="User EmailID / UserName is required." ControlToValidate="txtEmailAddress" Display="Dynamic">

            </asp:RequiredFieldValidator>
        </tr>
        <tr>        
            <td style="text-align:right; font-family:Arial; font-size:larger; color:blue">Password:</td>
            <td style="text-align:left"><asp:TextBox TextMode="Password" Width="350px" Runat="server" ID="txtPassword"></asp:TextBox></td>    
        </tr>
        <tr>								
            <td style="text-align:right; font-family:Arial; font-size:larger; color:blue">Project Name:</td>
            <td style="text-align:left"><asp:DropDownList id="ddlProjects" CssClass="fencyTextbox" Runat="server"></asp:DropDownList>              
            <%--<asp:RequiredFieldValidator id="rfvProjects" Runat="server" ErrorMessage="Project Selection is required." ControlToValidate="ddlProjects" Display="Dynamic"></asp:RequiredFieldValidator>--%>
            </td>
        </tr>
        <tr>
          <td style="text-align:right; font-family:Arial; font-size:larger; color:blue">First Name:</td>
          <td style="text-align:left"><asp:textbox id="txtFirstName" CssClass="fencyTextbox" Width="350px" Runat="server"></asp:textbox>          
        </td>
        </tr>
        <tr>
          <td style="text-align:right; font-family:Arial; font-size:larger; color:blue">Last Name:</td>
          <td style="text-align:left"><asp:textbox id="txtLastName" CssClass="fencyTextbox" Width="350px" Runat="server"></asp:textbox>
        </td>
        </tr>          
        <tr>
        <td style="text-align:right; font-family:Arial; font-size:larger; color:blue">Location:</td>
        <td style="text-align:left"><asp:textbox id="txtLocation" CssClass="fencyTextbox" Width="350px" Runat="server"></asp:textbox>
        </td>
        </tr>                   
        <tr>
        <td style="text-align:right; font-family:Arial; font-size:larger; color:blue">Phone Number:</td>
        <td ><asp:textbox id="txtUserPhone" CssClass="fencyTextbox" Width="350px" Runat="server"></asp:textbox></td>
        </tr>          
        <tr>
            <td style="text-align:right; font-family:Arial; font-size:larger; color:blue">WebsiteURL:</td>
            <td style="text-align:left"><asp:textbox id="txtWebsiteURL" CssClass="fencyTextbox" Width="350px" Runat="server"></asp:textbox></td>
        </tr>          
        <tr>
            <td style="text-align:right; font-family:Arial; font-size:larger; color:blue">Domain:</td>
            <td style="text-align:left"><asp:textbox id="txtDomain" CssClass="fencyTextbox" Width="350px" Runat="server"></asp:textbox></td>
        </tr>
        <tr>
            <td style="text-align:right; font-family:Arial; font-size:larger; color:blue">Technology:</td>
            <td style="text-align:left"><asp:textbox id="txtTechnology" CssClass="fencyTextbox" Width="350px" Runat="server"></asp:textbox></td>
        </tr>          
        <tr>
            <td style="text-align:right; font-family:Arial; font-size:larger; color:blue">Comments:</td>
            <td style="text-align:left"><asp:textbox id="txtComments" CssClass="fencyTextbox" Width="350px" Runat="server"></asp:textbox></td>
        </tr>
        </table>
        <table style="width:100%"> 
        
        <tr>
            <td style="height:600px; width:50%; border:solid">                
            <%--<asp:Image ID="imgPicture" runat="server" AlternateText="" ImageUrl='<%#"ImgHandler.ashx"%>'/>--%>
                <asp:Image ID="imgPicture" runat="server" AlternateText="" ImageUrl='<%#Eval(@"/ImageData/Shrikant_Image.jpeg")%>'/>                                                
            <asp:Label ID="lblMessage" runat="server" Text="" Font-Names = "Arial"></asp:Label>
            </td>
            <td style="height:600px; width:50%; border:solid">                
            <iframe id="imgDocument" style="height:100%; width:100%" src="/ConvertedLocation/CSharp_Assesment.pdf"  runat="server"></iframe>                
            </td>
        </tr>
        </table>
        <table style="width:100%"> 
        <tr style="font-family:Arial; font-size:large; color:blue">
            <td>
            <asp:Button ID="btnImageUpload" style="font-family:Arial; font-size:large; color:blue" Text="Display Image" runat="server" OnClick="btnImageUpload_Click" />
            <asp:FileUpload ID="ImageFileUpload" style="font-family:Arial; font-size:large; color:blue" runat="server" />                
            </td>
            <td>
            <asp:Button ID="btnDocumentUpload" style="font-family:Arial; font-size:large; color:blue" Text="Display Document"  runat="server" OnClick="btnDocumentUpload_Click" />
            <asp:FileUpload ID="DocumentFileUpload" style="font-family:Arial; font-size:large; color:blue" runat="server" />               
            </td>
        </tr>
       </table>
    <table style="width:100%">              
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
            <asp:Button ID="btnInsert" ForeColor="Blue" Font-Bold="true" Font-Names="Arial" Font-Size="Large" runat="server" Text="Insert" OnClick="btnSave_Click" />&nbsp            
            <asp:Button ID="btnUpdate" ForeColor="Blue" Font-Bold="true" Font-Names="Arial" Font-Size="Large" runat="server" Text="Update" OnClick="btnUpdate_Click" />&nbsp
            <asp:Button ID="btnDelete" ForeColor="Blue" Font-Bold="true" Font-Names="Arial" Font-Size="Large"  runat="server" Text="Delete" OnClick="btnDelete_Click" />&nbsp
            <asp:Button ID="btnCancel" ForeColor="Blue" Font-Bold="true" Font-Names="Arial" Font-Size="Large"  runat="server" Text="Cancel" OnClick="btnCancel_Click" />            
            <asp:Button ID="btnTest" ForeColor="Blue" Font-Bold="true" Font-Names="Arial" Font-Size="Large"  runat="server" Text="Display doc" OnClick="btnTest_Click" />
        </td>
    </tr>
        </table> 
    <table style="width:100%">
    <tr>        
         <td colspan="2">
            <asp:Repeater ID="rptUserRole" runat="server" DataSourceID="SqlDataSourceUserRegistration">
            <HeaderTemplate>
            <table style="height:200px; width:100%; border:thin">
              <tr style="background-color:burlywood; font-family:Arial; font-size:Larger; color:blue">
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
              <td style="background-color:#CCFFCC">
                  <asp:Label runat="server" ID="lblRoleId" 
                      text='<%# Eval("UserId") %>' />
              </td>
              <td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="lblRoleName" 
                    text='<%# Eval("EmailAddress") %>' />
              </td>
              <td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="Label1" 
                    text='<%# Eval("RoleId") %>' />
              </td>
              <td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="Label2" 
                    text='<%# Eval("ProjectId") %>' />
              </td>
              <td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="Label3" 
                    text='<%# Eval("PhoneNumber") %>' />
              </td>
              <td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="Label4" 
                    text='<%# Eval("Domain") %>' />
              </td>
              <td style="background-color:#CCFFCC">
                <asp:Label runat="server" ID="Label5" 
                    text='<%# Eval("Technology") %>' />
              </td>              
          </tr>
          </ItemTemplate>
          <AlternatingItemTemplate>
          <tr>
              <td style="background-color:cornsilk">
                  <asp:Label runat="server" ID="lblRoleId" 
                      text='<%# Eval("UserId") %>' />
              </td>
              <td style="background-color:cornsilk">
                <asp:Label runat="server" ID="lblRoleName" 
                    text='<%# Eval("EmailAddress") %>' />
              </td>
              <td style="background-color:cornsilk">
                <asp:Label runat="server" ID="Label1" 
                    text='<%# Eval("RoleId") %>' />
              </td>
              <td style="background-color:cornsilk">
                <asp:Label runat="server" ID="Label2" 
                    text='<%# Eval("ProjectId") %>' />
              </td>
              <td style="background-color:cornsilk">
                <asp:Label runat="server" ID="Label3" 
                    text='<%# Eval("PhoneNumber") %>' />
              </td>
              <td style="background-color:cornsilk">
                <asp:Label runat="server" ID="Label4" 
                    text='<%# Eval("Domain") %>' />
              </td>
              <td style="background-color:cornsilk">
                <asp:Label runat="server" ID="Label5" 
                    text='<%# Eval("Technology") %>' />
              </td>              
          </tr>
          </AlternatingItemTemplate>
          <FooterTemplate>
              </table>
          </FooterTemplate>
      </asp:Repeater>
    <%--<asp:SqlDataSource 
          ConnectionString="Data Source= KHUSHU; Database=Shree_Database; Integrated Security = True; MultipleActiveResultSets=True;"
          ID="SqlDataSourceUserRegistration" runat="server" 
          SelectCommand="SELECT [UserID], [EmailAddress],[RoleId],[ProjectId],[PhoneNumber],[Domain],[Technology] FROM [tbl_Users]" ProviderName="System.Data.SqlClient">
      </asp:SqlDataSource>--%>
      
      <%--<asp:SqlDataSource 
          ConnectionString="Data Source= SHRIKANT; Database=Shree_Database; Integrated Security = True; MultipleActiveResultSets=True;"
          ID="SqlDataSourceUserRegistration" runat="server" 
          SelectCommand="SELECT [UserID], [EmailAddress],[RoleId],[ProjectId],[PhoneNumber],[Domain],[Technology] FROM [tbl_Users]" ProviderName="System.Data.SqlClient">
      </asp:SqlDataSource>--%>

           <!--Production Database - MotelMa Connection-->                                
      <asp:SqlDataSource ConnectionString="Data Source=184.168.47.13;Initial Catalog=motelma;Integrated Security=False; User ID=khushi;Password=kHUSHI2002;"
          ID="SqlDataSourceUserRegistration" runat="server" 
          SelectCommand="SELECT [UserID], [EmailAddress],[RoleId],[ProjectId],[PhoneNumber],[Domain],[Technology] FROM [tbl_Users]" ProviderName="System.Data.SqlClient">
      </asp:SqlDataSource>
        </td>           
    </tr>                                  
    </table>    
</asp:Panel>
</asp:Content>

<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" id="RightBarBar"/>
</asp:Content>
<asp:Content ID="ShreeBbottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" id="BottomBar"/>
</asp:Content>
