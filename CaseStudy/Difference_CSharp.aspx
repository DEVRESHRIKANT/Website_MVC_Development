<%@ Page Title="" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="Difference_CSharp.aspx.cs" Inherits="DEVRE.Difference_CSharp" %>

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

<asp:Content ID="Content3" ContentPlaceHolderID="TopBar" runat="server">
    <ShreeMain:ShreeTop runat="server" id="TopBar"/>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="cpl_MainContentPlaceHolder" runat="server">
    <table style="border:thin">
        <tr style="border:outset">
            <td style="border:thin">
                <div>Stack</div>
            </td>
            <td style="border:thin">Heap</td>
        </tr>
        <tr>
            <td>
                <div>Interface</div>
            </td>
            <td>Inheritance</td>
        </tr>
        <tr>
            <td>
                <div>Interface</div>
            </td>
            <td>Abstract</td>
        </tr>
        <tr style="border:inset">
            <td style="border:thin">
                <div style="color:blue";font:400>Interface:
                    <b style="color:black" />Interface - describe the behavior
                    <b />Interfaces cannot be instantiated
                </div>
            </td>
            <td>Class
                <div style="color:blue";font:400>
                <b />Class - do the behavior
                <b />Classes can be instantiated
                    </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>Struct</div>
            </td>
            <td>Class</td>
        </tr>
        <tr>
            <td>
                <div>Boxing</div>
            </td>
            <td>Un-Boxing</td>
        </tr>
        <tr>
            <td>
                <div>Muteable</div>
            </td>
            <td>Un-Mutable</td>
        </tr>
        
        <tr>
            <td>
                <div>Constructor</div>
            </td>
            <td>Destructor</td>
        </tr>
        <tr>
            <td>
                <div>Event</div>
            </td>
            <td>Delegate</td>
        </tr>
        <tr>
            <td>
                <div>Reference</div>
            </td>
            <td>Value</td>
        </tr>
        <tr>
            <td>
                <div>Struct</div>
            </td>
            <td>Class</td>
        </tr>
        <tr>
            <td>
                <div>IS</div>
            </td>
            <td>AS</td>
        </tr>
        <tr>
            <td>
                <div>Direct Cast</div>
            </td>
            <td>CType</td>
        </tr>
        <tr>
            <td>
                <div>Throw</div>
            </td>
            <td>Throw Ex</td>
        </tr>
        <tr>
            <td>
                <div>Authorization</div>
            </td>
            <td>Authentication</td>
        </tr>
        <tr>
            <td>
                <div>Over LoadingCompile & Runtime Polymorphism)</div>
            </td>
            <td>Over Ridding</td>
        </tr>
        <tr>
            <td>
                <div>View Data</div>
            </td>
            <td>View Bag</td>
        </tr>
        <tr>
            <td>
                <div>Execute Scalar</div>
            </td>
            <td>Execute Non-Query</td>
        </tr>
        <tr>
            <td>
                <div>Finalize()</div>
            </td>
            <td>Dispose</td>
        </tr>
        <tr>
            <td>
                <div>Array</div>
            </td>
            <td>Array List</td>
        </tr>
        <tr>
            <td>
                <div>Custom Control</div>
            </td>
            <td>User Control</td>
        </tr>
        <tr>
            <td>
                <div>Constant</div>
            </td>
            <td>Read Only</td>
        </tr>
        <tr>
            <td>
                <div>Server.Transfer(): redirect the user to another page without performing a round trip to the client</div>
            </td>
            <td>Response.Direct()</td>
        </tr>
        <tr>
            <td>
                <div>Java</div>
            </td>
            <td>JavaScript</td>
        </tr>
        <tr>
            <td>
                <div>Response.Write()</div>
            </td>
            <td>Response.Output.Write() : allows you to write formatted output</td>
        </tr>
        <tr>
            <td>
                <div>Clone - Copies the structure of the DataSet, including all DataTable schemas, relations, and constraints.Does not copy any data </div>
            </td>
            <td>Copies both the structure and data for this DataSet</td>
        </tr>
        <tr>
            <td>
                <div>Web.Config: Setting Applies to Each Web Application</div>
            </td>
            <td>Machine.Config: Setting Applies to All AP.Net Application</td>
        </tr>
        <tr>
            <td>
                <div>Session Object: Store Information Between HTTP requests for perticular user</div>
            </td>
            <td>Application Object:Globl Across Users</td>
        </tr>
        <tr>
            <td>
                <div>
                    <b />Reference Parameter: Must be initialized before passing to method
                    <p>class RefExample</p>
                  <p>{</p>
                        <b />static void Method(ref int i)
                        <b />{
                            <b />// Rest the mouse pointer over i to verify that it is an int.
                            <b />// The following statement would cause a compiler error if i
                            <b />// were boxed as an object.
                            <b />i = i + 44;
                        <b />}
                        <b />static void Main()
                        <b />{
                        <b />    int val = 1;
                            <b />Method(ref val);
                            <b />Console.WriteLine(val);
                            <b />// Output: 45
                        <b />}
                    <b />}
                </div>
            </td>
            <td><div>
                <b />Out Parameter: Need not to be initialized before passing to method
                <b />class OutExample
               <b /> {
                   <b /> static void Method(out int i)
                   <b /> {
                      <b />  i = 44;
                  <b />  }
                  <b />  static void Main()
                   <b /> {
                      <b />  int value;
                      <b />  Method(out value);
                      <b />  // value is now 44
                   <b /> }
               <b /> }
                </div>

            </td>
        </tr>
        <tr>
            <td>
                <div></div>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>
                <div></div>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>
                <div></div>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>
                <div></div>
            </td>
            <td></td>
        </tr>        
    </table> 
    <div>
     <p><b><br/>13.	What is boxing and unboxing?</b></p>
<br/>•	Implicit conversion of value type to reference type of a variable is known as BOXING, for example integer to object type conversion. 
<br/>•	Conversion of reference type variable back to value type is called as UnBoxing.
<p><b><br/><br/>16.  What is difference between Object and Instance?</b></p>
<br/>An instance of a user-defined type is called an object. We can instantiate many objects from one class. An object is an instance of a class.
<p><b><br/>24. What is the difference between private and public keyword?</b></p>
 <br/>Private: The private keyword is the default access level and most restrictive among all other access levels. It gives least permission to a type or type member. A private member is accessible only within the body of the class in which it is declared.
<br/>	Public: The public keyword is most liberal among all access levels, with no restrictions to access what so ever. A public member is accessible not only from within, but also from outside, and gives free access to any member declared within the body or outside the body.
<p><b><br/>28.	How is method overriding different from method overloading?</b></p>
<br/> 	When overriding a method, you change the behavior of the method for the derived class. Overloading a method simply involves having another method with the same name within the class.
<p><b><br/>29.	What is the difference between ref & out parameters?</b></p>
 	<br/>An argument passed to a ref parameter must first be initialized. Compare this to an out parameter, whose argument does not have to be explicitly initialized before being passed to an out parameter.
<p><b><br/>32.	What are the difference between Structure and Class?</b></p>
 	
<br/>•	Structures are value type and Classes are reference type
<br/>•	Structures cannot have contractors or destructors.
<br/>•	Classes can have both contractors and destructors.
<br/>•	Structures do not support Inheritance, while Classes support Inheritance.
<p><b><br/>33.	What is difference between Class And Interface?</b></p>
<br/> 	Class: is logical representation of object. It is collection of data and related sub procedures with definition.
<br/>Interface: is also a class contains a method which is not having any definitions. Class does not support multiple inheritances. But interface can support.
<p><b><br/>38.	What is difference between constants, readonly and, static ?</b></p>
<br/>•	Constants: The value can’t be changed.
<br/>•	Read-only: The value will be initialized only once from the constructor of the class.
<br/>•	Static: Value can be initialized once.
<p><b><br/>42.	What is the difference between string keyword and System.String class?</b></p>
 	<br/>String keyword is an alias for Syste.String class. Therefore, System.String and string keyword are the same, and you can use whichever naming convention you prefer. The String class provides many methods for safely creating, manipulating, and comparing strings.
<p><b><br/>45.	What is the difference between Custom Control and User Control?</b></p>
 	<br/>Custom Controls are compiled code (Dlls), easier to use, difficult to create, and can be placed in toolbox. Drag and Drop controls. Attributes can be set visually at design time. Can be used by Multiple Applications (If Shared Dlls), Even if Private can copy to bin directory of web application add reference and use. Normally designed to provide common functionality independent of consuming Application. 

<br/>User Controls are similar to those of ASP include files, easy to create, can not be placed in the toolbox and dragged - dropped from it. A User Control is shared among the single application files.
<p><b><br/>50.	What is the difference between value type and reference type?</b></p>
 	<br/>Value types are stored on the stack and when a value of a variable is assigned to        another variable.
<br/>Reference types are stored on the heap, and when an assignment between two reference variables occurs.
<p><b><br/>53.	What is the difference between break and continue statement?</b></p>
 	<br/>The break statement is used to terminate the current enclosing loop or conditional statements in which it appears. We have already used the break statement to come out of switch statements.
<br/>The continue statement is used to alter the sequence of execution. Instead of coming out of the loop like the break statement did, the continue statement stops the current iteration and simply returns control back to the top of the loop.
<p><b><br/>57.	What is the difference between static and instance methods?</b></p>
 	<br/>A method declared with a static modifier is a static method. A static method does not operate on a specific instance and can only access static members.
<br/>A method declared without a static modifier is an instance method. An instance method operates on a specific instance and can access both static and instance members. The instance on which an instance method was invoked can be explicitly accessed as this. It is an error to refer to this in a static method.
<p><b><br/>62.	What is the difference between Array and Arraylist?</b></p>
 	<br/>An array is a collection of the same type. The size of the array is fixed in its declaration. A linked list is similar to an array but it doesn’t have a limited size.
<p><b><br/>69.	What is the difference between console and window application?</b></p>
<br/>•	A console application, which is designed to run at the command line with no user interface.
<br/>•	A Windows application, which is designed to run on a user’s desktop and has a user interface.
<p><b><br/>71.	What is the difference between Array and LinkedList?</b></p>
 	<br/>Array is a simple sequence of numbers which are not concerned about each other’s positions. They are independent of each other’s positions. Adding, removing or modifying any array element is very easy. Compared to arrays, linked list is a complicated sequence of numbers.


        </div>   
</asp:Content>
<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" ID="RightBar" />               
</asp:Content>

<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" ID="BottomBar" />           
</asp:Content>
