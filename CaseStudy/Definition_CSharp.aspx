<%@ Page Title="" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="Definition_CSharp.aspx.cs" Inherits="DEVRE.Definition_CSharp" %>

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
    <ShreeMain:ShreeTop runat="server" id="TopBarBar"/>
</asp:Content>
<asp:Content ID="LeftBar" ContentPlaceHolderID="LeftBar_Shree_Web"  runat="server">
    <ShreeMain:ShreeLeft runat="server" ID="ShreeLeft" />              
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="cpl_MainContentPlaceHolder" runat="server">
<table>
    <tr>
        <td><div>Object</div></td>
        <td><div>is an instance of class through which we can access the method of class</div></td>
    </tr>
     <tr>
        <td><div>Class</div></td>
        <td><div><br/>-	Class is reference type. When object of the class created, the variable to which the object is assigned holds only a reference to that memory.
<br/>-	When the object reference is assigned to a new variable, new variable refers to the original object.</div></td>
    </tr>
     <tr>
        <td><div>Interface</div></td>
        <td><div><br/>-	It is Abstract class
<br/>-	Public abstract methods all of which must be implemented in inherited classes.
<br/>-	Signature of functionality
<br/>-	Single class, can implement multiple interfaces.
</div></td>
    </tr>
     <tr>
        <td><div>Inheritance</div></td>
        <td><div><br/>-	Together with encapsulation & polymorphism.
<br/>-	Inheritance enables you to create new class that
<br/>1.	Reuse 2. Extend 3. Modify behavior
<br/>is deriving the new class from already exist
</div></td>
    </tr>
     <tr>
        <td><div>Stack</div></td>
        <td><div></div></td>
    </tr>
     <tr>
        <td><div>Heap</div></td>
        <td><div></div></td>
    </tr>
     <tr>
        <td><div>Struct</div></td>
        <td><div></div></td>
    </tr>
     <tr>
        <td><div>Shadow</div></td>
        <td><div></div></td>
    </tr>
     <tr>
        <td><div>Boxing</div></td>
        <td><div><br/>-	Conversation of Value type to Reference Type of variable.
<br/>-	E.g. Integer to Object type conversation</div></td>
    </tr>
     <tr>
        <td><div>Un-Boxing</div></td>
        <td><div></div></td>
    </tr>
     <tr>
        <td><div>Polymorphism</div></td>
        <td><div><br/>1.	At run time, objects of derived class may be treated as object of a base class in places such as method parameters and collections of arrays.
<br/>-	When this occurs, the object’s declared type is no longer identical to its run-time type.
<br/>2.	Base Classes may define and implement virtual methods, and derived classes can override them, which means they provide their own definition & implementation.
<br/>-	At run-time, when client code calls the method, the CLR looks up the run-time type of the object, and invokes that override of virtual method.
<br/>-	This in your source code you can call a method on a base class, and cause a derived class’s version of the method to be executed.
<br/>-	Means one name, multiple forms
<br/>-	Allows more than one function with same name in a program.
<br/>-	Allow to overloading of operators, so that operation can exibit different behavior in different instances.
</div></td>
    </tr>
     <tr>
        <td><div>Im-Mutable</div></td>
        <td><div></div></td>
    </tr>
     <tr>
        <td><div>Mutable</div></td>
        <td><div></div></td>
    </tr>
     <tr>
        <td><div>Modifiers</div></td>
        <td><div>Abstract, Sealed, Virtual, Const, Event, Extern, Override, Readonly, Static, New</div></td>
    </tr>
     <tr>
        <td><div>Access-Modifiers</div></td>
        <td><div></div></td>
    </tr>
     <tr>
        <td><div>Constructors</div></td>
        <td><div>is member function in a class that has the same name as its class</div></td>
    </tr>
     <tr>
        <td><div>Destructors</div></td>
        <td><div></div></td>
    </tr>
     <tr>
        <td><div>Abstract</div></td>
        <td><div>
            <br/>Keyword enables you to create classes and class members that are incomplete and must be implemented in a derived class.
            <br/>-	A Class that must be inherited and have methods over-ridden
            <br/>-	A Class that cannot be instantiated
            <br/>-	Abstract classes can have empty abstract methods or it can have implemented methods which can be overridden by child classes
            <br/>- is a base class or parent class
            </div>
        </td>
    </tr>
     <tr>
        <td><div>Event</div></td>
        <td><div></div></td>
    </tr>
     <tr>
        <td><div>Delegate</div></td>
        <td><div>
           <br/>A delegate object encapsulates a reference to a method
            <br/>A delegate is a type of user-defined variable that is declared globally, like a class, providing a template for a method. 
           <br/>Unlike a method, a delegate is not actually defined. 
           <br/>Its role is to give a view of a useful method. To represent a method, a delegate provides the necessary information that would be used on a method, including a return type, no argument or one or more arguments</div></td>
    </tr>
     <tr>
        <td><div>Threading</div></td>
        <td><div></div></td>
    </tr>
     <tr>
        <td><div>Derived Class</div></td>
        <td><div><br/>The class, that inherits those members, is called derived class.
<br/>-	Derived class can have only one direct base class.
<br/>-  Implicitly gain all members of base class, except for constructors & Destructors
</div></td>
    </tr>
     <tr>
        <td><div>Attributes</div></td>
        <td><div></div></td>
    </tr>
     <tr>
        <td><div>Reflection</div></td>
        <td><div>
            <br/>Reflection is used for the late binding of an object in .Net.  By using Reflection one can use the COM components and create the Objects of them at Runtime. It invokes the Methods , Properties etc of that COM Object
            <br/>-System.Reflection namespace contains classes that can be used to interrogate the types for a module/assembly
            <br/>-All .NET compilers produce metadata about the types defined in the modules they produce. This metadata is packaged along with the module (modules in turn are packaged together in assemblies), and can be accessed by a mechanism called reflection
            </div></td>
    </tr>
     <tr>
        <td><div>Reference Type</div></td>
        <td><div></div></td>
    </tr>
     <tr>
        <td><div>Value Type</div></td>
        <td><div></div></td>
    </tr>
     <tr>
        <td><div>Structure</div></td>
        <td><div><br/>-	Is value type. When Struct is created, the variable to which the Struct is assigned holds the struct’s actual data.
<br/>-	When the Struct is assigned to a new variable, it is copied. The new variable & original variable therefore contain two separate copies of the same data.
<br/>-	Changes made to one copy; do not affect the other copy

            </div></td>
    </tr>
     <tr>
        <td><div>Assert</div></td>
        <td><div></div></td>
    </tr>
     <tr>
        <td><div>Over Riding</div></td>
        <td><div></div></td>
    </tr>
    <tr>
        <td><div>Nested Class</div></td>
        <td><div></div></td>
    </tr>
    <tr>
        <td><div>Partial Class</div></td>
        <td><div></div></td>
    </tr><tr>
        <td><div>View State</div></td>
        <td><div></div></td>
    </tr>
    <tr>
        <td><div>Serialization</div></td>
        <td><div>Process of converting object into stream of byte is called serialization</div></td>
    </tr>
    <tr>
        <td><div>Finalize</div></td>
        <td><div></div></td>
    </tr>
    <tr>
        <td><div>Dispose</div></td>
        <td><div></div></td>
    </tr>
    <tr>
        <td><div>Constant</div></td>
        <td><div></div></td>
    </tr>
    <tr>
        <td><div>Read Only</div></td>
        <td><div></div></td>
    </tr>
    <tr>
        <td><div>Direct Cast</div></td>
        <td><div></div></td>
    </tr>
    <tr>
        <td><div>CType</div></td>
        <td><div></div></td>
    </tr>
    <tr>
        <td><div>Event Bubbling</div></td>
        <td><div>Describe the behavior of events in child and parent nodes in the document object model(DOM)</div></td>
    </tr>
    <tr>
        <td><div>JQuery</div></td>
        <td><div>Simplifies HTML document traversing, animating, event handling, &AJAX interactions for the purpose of quic web development needs.</div></td>
    </tr>
    <tr>
        <td><div>Encapsulation</div></td>
        <td><div><br/>-	The wrapping up of data & functions into single unit (called class) is known as encapsulation.
<br/>-	Encapsulation containing hiding information about object, such as internal data structure and code.
</div></td>
    </tr>
    <tr>
        <td><div>Sealed</div></td>
        <td><div>Keyword enables you to prevent the inheritance of a class or certain class members that were previously marked virtual</div></td>
    </tr>
    <tr>
        <td><div>Boxing</div></td>
        <td><div><br/>-	Conversation of Value type to Reference Type of variable.
<br/>-	E.g. Integer to Object type conversation.</div></td>
    </tr>
    <tr>
        <td><div>Scrum</div></td>
        <td><div>Agile Framework. Improve productivity in team, ability to prioritize work, use of backlog for completing items in a series of short iterations or sprints, daily measure, process and communication</div></td>
    </tr>
     <tr>
        <td><div>Polymorphism</div></td>
        <td><div><br/>1.	At run time, objects of derived class may be treated as object of a base class in places such as method parameters and collections of arrays.
<br/>-	When this occurs, the object’s declared type is no longer identical to its run-time type.
<br/>2.	Base Classes may define and implement virtual methods, and derived classes can override them, which means they provide their own definition & implementation.
<br/>-	At run-time, when client code calls the method, the CLR looks up the run-time type of the object, and invokes that override of virtual method.
<br/>-	This in your source code you can call a method on a base class, and cause a derived class’s version of the method to be executed.
<br/>-	Means one name, multiple forms
<br/>-	Allows more than one function with same name in a program.
<br/>-	Allow to overloading of operators, so that operation can exibit different behavior in different instances
</div></td>
    </tr>

</table>
</asp:Content>

<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" ID="RightBar" />               
</asp:Content>

<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" ID="BottomBar" />           
</asp:Content>
