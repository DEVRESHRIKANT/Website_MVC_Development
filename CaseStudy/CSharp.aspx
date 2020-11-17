<%@ Page Title="" Language="C#" MasterPageFile="~/masterDevre.Master" AutoEventWireup="true" CodeBehind="CSharp.aspx.cs" Inherits="DEVRE.CSharp" %>


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
<asp:Content ID="ShreeTop" ContentPlaceHolderID="TopBar" runat="server">
    <ShreeMain:ShreeTop runat="server" id="TopBar"/>
</asp:Content>

<asp:Content ID="LeftBar" ContentPlaceHolderID="LeftBar_Shree_Web"  runat="server">
    <ShreeMain:ShreeLeft runat="server" ID="ShreeLeft" />              
</asp:Content>

<asp:Content ID="ShreeStatus" ContentPlaceHolderID="StatusBar" runat="server">
    <ShreeMain:ShreeStatus runat="server" id="StatusBar"/>
</asp:Content>

<asp:Content ID="ShreeMiddle" ContentPlaceHolderID="cpl_MainContentPlaceHolder" runat="server">
    <div>
        <p><b>C# Common Interfaces: (There are many but some are here)</b></p>
<br/>-	System.Web.IHttpHandler
<br/>-	System.Web.IHttpModule
<br/>-	System.Data.IDataAdaptor
<br/>-	System.Security.Principal.IIdentity
<br/>-	System.Configuration.IApplicationSettingsProvider
<br/>-	System.XML.Seralization.IXMLSeralizable

<p>C# Sealed Class:</p>
<br/>-	System.string
<br/>-	System.Data.SqlClient.SqlCommand
<br/>-	System.Web.HttpRequest
<br/>-	System.XML.XMLReaderString
<br/>-	System.Net.Cookies
<br/>-	System.IO.InvalidDataException

<p>C# Abstract Class:</p>
<br/>-	System.Data.Command.Dbcommand
<br/>-	System.Diagnostic.Switch
<br/>-	System.Net.WebRequest
<br/>-	System.Xml.XmlNode
<br/>-	System.Xml.XmlReader
<br/>-	System.Security.Cryptography.Aes

<p>C# Static Class:</p>
<br/>-	System.Math
<br/>-	System.Convert
<br/>-	System.Net.Dns
<br/>-	System.Linq.Enumerable
<br/>-	System.Web.SiteMap
<br/>-	System.Web.SessionState.SessionStateUtility
<br/>-	System.Web.Configuration.WebConfigurationManager

<p>Statements in C#:</p>
<br/>-	Block
<br/>-	Declare
<br/>-	Expression
<br/>-	Selection
<br/>-	Iteration
<br/>-	Jump
<br/>-	Try Catch
<br/>-	Checked and Unchecked
<br/>-	Lock
<p><b><u>Definitions:</u></b></p>
<br/>What are the types of comment in C#?
<br/>There are 3 types of comments in C#.
<br/>•	Single line (//)
<br/>•	Multi (/* */)
<br/>•	Page/XML Comments (///).

<p><b><br/>3.	What are the namespaces used in C#.NET?</b></p>
<br/>Namespace is a logical grouping of class.
<br/>•	using System;
<br/>•	using System.Collections.Generic;
<br/>•	using System.Windows.Forms;

<p><b><br/>4.	What are the characteristics of C#?</b></p>
<br/>•	There are several characteristics of C# are :
<br/>•	Simple
<br/>•	Type safe
<br/>•	Flexible
<br/>•	Object oriented
<br/>•	Compatible
<br/>•	Consistent
<br/>•	Interoperable
<br/>•	Modern
<p><b><br/>5.	How does C# differ from C++?</b></p>
<br/>•	C# does not support #include statement. It uses only using statement.
<br/>•	In C# , class definition does not use a semicolon at the end.
<br/>•	C# does not support multiple code inheritance.
<br/>•	Casting in C# is much safer than in c++.
<br/>•	In C# switch can also be used on string values.
<br/>•	Command line parameters array behave differently in C# as compared to C++.
<p><b><br/>6.	What are the basic concepts of object oriented programming?</b></p>
<br/>•	It is necessary to understand some of the concepts used extensively in object oriented programming.These include
<br/>•	Objects
<br/>•	Classes
<br/>•	Data abstraction and encapsulation
<br/>•	Inheritance
<br/>•	Polymorphism
<br/>•	Dynamic Binding
<br/>•	Message passing.
<p><b><br/>7.	Can you inherit multiple interfaces?</b></p>
<br/> 	 Yes. Multiple interfaces may be inherited in C#.
<p><b><br/>8.	What is inheritance?</b></p>
<br/>Inheritance is deriving the new class from the already existing one.
<p><b><br/>9.	Define scope?</b></p>
 	<br/>Scope refers to the region of code in which a variable may be accessed.
<p><b><br/>10.	What is the difference between public, static and void?</b></p>
<br/>•	public :The keyword public is an access modifier that tells the C# compiler that the Main method is accessible by anyone.
<br/>•	static	:The keyword static declares that the Main method is a global one and can be called without creating an instance of the class. The compiler stores the address of the method as the entry point and uses this information to begin execution before any objects are created.
<br/>•	void : The keyword void is a type modifier that states that the Main method does not return any value.
<p><b><br/>11.	What are the modifiers in C#?</b></p>
<br/>•	Abstract
<br/>•	Sealed
<br/>•	Virtual
<br/>•	Const
<br/>•	Event
<br/>•	Extern
<br/>•	Override
<br/>•	Readonly
<br/>•	Static
<br/>•	New
<p><b><br/>12.	What are the types of access modifiers in C#?</b></p>
<br/>Access modifiers in C# are :
<br/>•	public
<br/>•	protect
<br/>•	private
<br/>•	internal
<br/>•	internal protect
<p><b><br/>13.	What is boxing and unboxing?</b></p>
<br/>•	Implicit conversion of value type to reference type of a variable is known as BOXING, for example integer to object type conversion. 
<br/>•	Conversion of reference type variable back to value type is called as UnBoxing.
<p><b><br/>14.	What is object?</b></p>
 	<br/>An object is an instance of a class. An object is created by using operator new. A class that creates an object in memory will contain the information about the values and behaviours (or methods) of that specific object.
<p><b><br/>15.	Where are the types of arrays in C#?</b></p>
<br/>•	Single-Dimensional
<br/>•	Multidimensional
<br/>•	Jagged arrays.
<p><b><br/><br/>16.  What is difference between Object and Instance?</b></p>
<br/>An instance of a user-defined type is called an object. We can instantiate many objects from one class. An object is an instance of a class.
<p><b><br/>17.	Define destuctors?</b></p>
 	<br/>A destructor is called for a class object when that object passes out of scope or is explicitly deleted. A destructors as the name implies is used to destroy the objects that have been created by a constructors. Like a constructor, the destructor is a member function whose name is the same as the class name but is preceded by a tilde.
<p><b><br/>18.	What is the use of enumerated data type?</b></p>
 	<br/>An enumerated data type is another user defined type which provides a way for attaching names to numbers thereby increasing comprehensibility of the code. The enum keyword automatically enumerates a list of words by assigning them values 0,1,2, and so on.
<p><b><br/>19.	Define Constructors?</b></p>
 	<br/>A constructor is a member function with the same name as its class. The constructor is invoked whenever an object of its associated class is created. It is called constructor because it constructs the values of data members of the class.
<p><b><br/>20.	What is encapsulation?</b></p>
 	<br/>The wrapping up of data and functions into a single unit (called class) is known as encapsulation. Encapsulation containing and hiding information about an object, such as internal data structures and code.

<p><b><br/>21. Does C# support multiple inheritance?</b></p>
	<br/>No, it’s impossible which accepts multi level inheritance.
<p><b><br/>22.	What is ENUM?</b></p>
<br/> 	Enum are used to define constants.
<p><b><br/>23.	What is a data set?</b></p>
 	<br/>A DataSet is an in memory representation of data loaded from any data source.
<p><b><br/>24. What is the difference between private and public keyword?</b></p>
 <br/>Private: The private keyword is the default access level and most restrictive among all other access levels. It gives least permission to a type or type member. A private member is accessible only within the body of the class in which it is declared.
<br/>	Public: The public keyword is most liberal among all access levels, with no restrictions to access what so ever. A public member is accessible not only from within, but also from outside, and gives free access to any member declared within the body or outside the body.
<p><b><br/>25. Define polymorphism?</b></p>
 <br/>Polymorphism means one name, multiple forms. It allows us to have more than one function with the same name in a program. It allows us to have overloading of operators so that an operation can exhibit different behaviors in different instances.
<p><b><br/>26. What is Jagged Arrays? 	</b></p>
        <br/>A jagged array is an array whose elements are arrays.
<br/>        The elements of a jagged array can be of different dimensions and sizes.
        <br/>A jagged array is sometimes called an array–of–arrays.
<p><b><br/>27.   What is an abstract base class?</b></p>
<br/> An abstract class is a class that is designed to be specifically used as a base class. An abstract class contains at least one pure virtual function.
<p><b><br/>28.	How is method overriding different from method overloading?</b></p>
<br/> 	When overriding a method, you change the behavior of the method for the derived class. Overloading a method simply involves having another method with the same name within the class.
<p><b><br/>29.	What is the difference between ref & out parameters?</b></p>
 	<br/>An argument passed to a ref parameter must first be initialized. Compare this to an out parameter, whose argument does not have to be explicitly initialized before being passed to an out parameter.
<p><b><br/>30.	What is the use of using statement in C#?</b></p>
 	<br/>The using statement is used to obtain a resource, execute a statement, and then dispose of that resource.
<p><b><br/>31.	What is serialization?</b></p>
 	<br/>Serialization is the process of converting an object into a stream of bytes.
<br/>De-serialization is the opposite process of creating an object from a stream of bytes. 
<br/>Serialization / De-serialization is mostly used to transport objects.
<p><b><br/>32.	What are the difference between Structure and Class?</b></p>
 	
<br/>•	Structures are value type and Classes are reference type
<br/>•	Structures cannot have contractors or destructors.
<br/>•	Classes can have both contractors and destructors.
<br/>•	Structures do not support Inheritance, while Classes support Inheritance.
<p><b><br/>33.	What is difference between Class And Interface?</b></p>
<br/> 	Class: is logical representation of object. It is collection of data and related sub procedures with definition.
<br/>Interface: is also a class contains a method which is not having any definitions. Class does not support multiple inheritances. But interface can support.
<p><b><br/>34.	What is Delegates?</b></p>
 	<br/>Delegates are a type-safe, object-oriented implementation of function pointers and are used in many situations where a component needs to call back to the component that is using it.
<p><b><br/>35.	What is Authentication and Authorization?</b></p>
 	<br/>Authentication is the process of identifying users. Authentication is identifying/validating the user against the credentials (username and password).
<br/>Authorization performs after authentication. Authorization is the process of granting access to those users based on identity. Authorization allowing access of specific resource to user.
<p><b><br/>36.	What is a base class?</b></p>
 	<br/>A class declaration may specify a base class by following the class name with a colon and the name of the base class. omitting a base class specification is the same as deriving from type object.
<p><b><br/>37.	Can “this” be used within a static method?</b></p>
 	<br/>No ‘This’ cannot be used in a static method. As only static variables/methods can be used in a static method.
<p><b><br/>38.	What is difference between constants, readonly and, static ?</b></p>
<br/>•	Constants: The value can’t be changed.
<br/>•	Read-only: The value will be initialized only once from the constructor of the class.
<br/>•	Static: Value can be initialized once.
<p><b><br/>39.	What are the different types of statements supported in C#?</b></p>
<br/>•	C# supports several different kinds of statements are
<br/>•	Block statements
<br/>•	Declaration statements
<br/>•	Expression statements
<br/>•	Selection statements
<br/>•	Iteration statements
<br/>•	Jump statements
<br/>•	Try catch statements
<br/>•	Checked and unchecked
<br/>•	Lock statement
<p><b><br/>40.	What is an interface class?</b></p>
 	<br/>It is an abstract class with public abstract methods all of which must be implemented in the inherited classes.
<p><b><br/>41.	What are value types and reference types?</b></p>
 	<br/>Value types are stored in the Stack.
<br/>Examples : bool, byte, chat, decimal, double, enum , float, int, long, sbyte, short, strut, uint, ulong, ushort.

<br/>Reference types are stored in the Heap. 
<br/>Examples : class, delegate, interface, object, string.
<p><b><br/>42.	What is the difference between string keyword and System.String class?</b></p>
 	<br/>String keyword is an alias for Syste.String class. Therefore, System.String and string keyword are the same, and you can use whichever naming convention you prefer. The String class provides many methods for safely creating, manipulating, and comparing strings.
<p><b><br/>43.	What are the two data types available in C#?</b></p>
<br/>•	Value type
<br/>•	Reference type
<p><b><br/>44.	What are the different types of Caching?</b></p>
<br/>           There are three types of Caching :
           <br/>Output Caching: stores the responses from an asp.net page.
           <br/>Fragment Caching: Only caches/stores the portion of page (User Control)
          <br/>Data Caching: is Programmatic way to Cache objects for performance.
<p><b><br/>45.	What is the difference between Custom Control and User Control?</b></p>
 	<br/>Custom Controls are compiled code (Dlls), easier to use, difficult to create, and can be placed in toolbox. Drag and Drop controls. Attributes can be set visually at design time. Can be used by Multiple Applications (If Shared Dlls), Even if Private can copy to bin directory of web application add reference and use. Normally designed to provide common functionality independent of consuming Application. 

<br/>User Controls are similar to those of ASP include files, easy to create, can not be placed in the toolbox and dragged - dropped from it. A User Control is shared among the single application files.
<p><b><br/>46.	What is a method?</b></p>
 	<br/>A method is a member that implements a computation or action that can be performed by an object or class. Static methods are accessed through the class. Instance methods are accessed through instances of the class.
<p><b><br/>47.	What is fields?</b></p>
 	<br/>A field is a variable that is associated with a class or with an instance of a class.
<p><b><br/>48.	What is events?</b></p>
 	<br/>An event is a member that enables a class or object to provide notifications. An event is declared like a field except that the declaration includes an event keyword and the type must be a delegate type.
<p><b><br/>49.	What is literals and their types?</b></p>
 	
<br/>Literals are value constants assigned to variables in a program. C# supports several types of literals are
<br/>•	Integer literals
<br/>•	Real literals
<br/>•	Boolean literals
<br/>•	Single character literals
<br/>•	String literals
<br/>•	Backslash character literals
<p><b><br/>50.	What is the difference between value type and reference type?</b></p>
 	<br/>Value types are stored on the stack and when a value of a variable is assigned to        another variable.
<br/>Reference types are stored on the heap, and when an assignment between two reference variables occurs.
<p><b><br/>51.	What are the features of c#?</b></p>
<br/>•	C# is a simple and powerful programming language for writing enterprise edition applications.
<br/>•	This is a hybrid of C++ and VB. It retains many C++ features in the area statements,expressions, and operators and incorporated the productivity of VB.
<br/>•	C# helps the developers to easily build the web services that can be used across the Internet through any language, on any platform.
<br/>•	C# helps the developers accomplishing with fewer lines of code that will lead to the fewer errors in the code.
<br/>•	C# introduces the considerable improvement and innovations in areas such as type safety,versioning. events and garbage collections.
<p><b><br/>52.	What are the types of errors?</b></p>
<br/>•	Syntax error
<br/>•	Logic error
<br/>•	Runtime error
<p><b><br/>53.	What is the difference between break and continue statement?</b></p>
 	<br/>The break statement is used to terminate the current enclosing loop or conditional statements in which it appears. We have already used the break statement to come out of switch statements.
<br/>The continue statement is used to alter the sequence of execution. Instead of coming out of the loop like the break statement did, the continue statement stops the current iteration and simply returns control back to the top of the loop.
<p><b><br/>54.	Define namespace?</b></p>
 	<br/>The namespace are known as containers which will be used to organize the hierarchical set of .Net classes.
<p><b><br/>55.	What is a code group?</b></p>
 	<br/>A code group is a set of assemblies that share a security context.
<br/>What are sealed classes in C#?
<br/>The sealed modifier is used to prevent derivation from a class. A compile-time error occurs if a sealed class is specified as the base class of another class.
<p><b><br/>57.	What is the difference between static and instance methods?</b></p>
 	<br/>A method declared with a static modifier is a static method. A static method does not operate on a specific instance and can only access static members.
<br/>A method declared without a static modifier is an instance method. An instance method operates on a specific instance and can access both static and instance members. The instance on which an instance method was invoked can be explicitly accessed as this. It is an error to refer to this in a static method.
<p><b><br/>58.	What are the different types of variables in C#?</b></p>
<br/>•	Different types of variables used in C# are :
<br/>•	static variables
<br/>•	instance variable
<br/>•	value parameters
<br/>•	reference parameters
<br/>•	array elements
<br/>•	output parameters
<br/>•	local variables
<p><b><br/>59.	What is meant by method overloading?</b></p>
 	<br/>Method overloading permits multiple methods in the same class to have the same name as long as they have unique signatures. When compiling an invocation of an overloaded method, the compiler uses overload resolution to determine the specific method to invoke
<p><b><br/>60.	What is parameters?</b></p>
 	<br/>Parameters are used to pass values or variable references to methods. The parameters of a method get their actual values from the arguments that are specified when the method is invoked. There are four kinds of parameters: value parameters, reference parameters, output parameters, and parameter arrays.
<p><b><br/>61.	Is C# is object oriented?</b></p>
 	<br/>YEs, C# is an OO langauge in the tradition of Java and C++.
<p><b><br/>62.	What is the difference between Array and Arraylist?</b></p>
 	<br/>An array is a collection of the same type. The size of the array is fixed in its declaration. A linked list is similar to an array but it doesn’t have a limited size.
<p><b><br/>63.	What are the special operators in C#?</b></p>
 	<br/>C# supports the following special operators.
<br/>•	is	(relational operator)
<br/>•	as	(relational operator)
<br/>•	typeof	(type operator)
<br/>•	sizeof	(size operator)
<br/>•	new	(object creator)
<br/>•	.dot	(member access operator)
<br/>•	checked	(overflow checking)
<br/>•	unchecked	(prevention of overflow checking)
<p><b><br/>64.	What is meant by operators in c#?</b></p>
 	<br/>An operator is a member that defines the meaning of applying a particular expression operator to instances of a class. Three kinds of operators can be defined: unary operators, binary operators, and conversion operators. All operators must be declared as public and static.
<p><b><br/>65.	What is a parameterized type?</b></p>
 	<br/>A parameterized type is a type that is parameterized over another value or type.
<p><b><br/>66.	What are the features of abstract class?</b></p>
<br/>•	An abstract class cannot be instantiated, and it is an error to use the new operator on an abstract class.
<br/>•	An abstract class is permitted (but not required) to contain abstract methods and accessors.
<br/>•	An abstract class cannot be scaled.
<p><b><br/>67.	What is the use of abstract keyword?</b></p>
 	<br/>The modifier abstract is a keyword used with a class, to indicate that this class cannot itself have direct instances or objects, and it is intended to be only a 'base' class to other classes.
<p><b><br/>68.	What is the use of goto statement?</b></p>
 	<br/>The goto statement is also included in the C# language. This goto can be used to jump from inside a loop to outside. But jumping from outside to inside a loop is not allowed.
<p><b><br/>69.	What is the difference between console and window application?</b></p>
<br/>•	A console application, which is designed to run at the command line with no user interface.
<br/>•	A Windows application, which is designed to run on a user’s desktop and has a user interface.
<p><b><br/>70.	What is the use of return statement?</b></p>
<br/>The return statement is associated with procedures (methods or functions). On executing the return statement, the system passes the control from the called procedure to the calling procedure. This return statement is used for two purposes:
<br/>•	to return immediately to the caller of the currently executed code
<br/>•	to return some value to the caller of the currently executed code.
<p><b><br/>71.	What is the difference between Array and LinkedList?</b></p>
 	<br/>Array is a simple sequence of numbers which are not concerned about each other’s positions. They are independent of each other’s positions. Adding, removing or modifying any array element is very easy. Compared to arrays, linked list is a complicated sequence of numbers.

<p><b><br />1.	Multicast Delegates</b></p>

<br />Capability of calling multiple methods on a single event is called as chaining delegates

 <p><b><br />2.	Interface</b></p>
<br />using System;
<br />namespace Interfaces
<br />{
<br />interface IBankCustomer
<br />{
<br />void DepositMoney();
<br />void WithdrawMoney();
<br />}
<br />public class Demo : IBankCustomer
<br />{
<br />public void DepositMoney()
<br />{
<br />Console.WriteLine("Deposit Money");
<br />}
<br />
<br />public void WithdrawMoney()
<br />{
<br />Console.WriteLine("Withdraw Money");
<br />}
<br />
<br />public static void Main()
<br />{
<br />Demo DemoObject = new Demo();
<br />DemoObject.DepositMoney();
<br />DemoObject.WithdrawMoney();
<br />}
<br />}
<br />}
<p><b><br />3.	Partial Class</b></p>
A partial class is a class whose definition is present in 2 or more files. Each source file contains a section of the class, and all parts are combined when the application is compiled. To split a class definition, use the partial keyword as shown in the example below. Student class is split into 2 parts. The first part defines the study() method and the second part defines the Play() method. When we compile this program both the parts will be combined and compiled. Note that both the parts uses partial keyword and public access modifier.
<br /><br />using System;
<br />namespace PartialClass
<br /><br />{
  <br />public partial class Student
  <br />{
    <br />public void Study()
    <br />{
      <br />Console.WriteLine("I am studying");
    <br /><br />}
  <br />}
  <br />public partial class Student
  <br />{
    <br />public void Play()
    <br />{
      <br />Console.WriteLine("I am Playing");
    <br />}
  <br />}
  <br />public class Demo
  <br />{
    <br />public static void Main()
    <br />{
      <br />Student StudentObject = new Student();
      <br />StudentObject.Study();
      <br />StudentObject.Play();
    <br />}
  <br />}
<br />}
<p><b><br />4.	Nested classes as partial classes</b></p>
class ContainerClass
<br />{
  <br />public partial class Nested
  <br />{
    <br />void Test1() { }
  <br />}
  <br />public partial class Nested
  <br />{
    <br /><br />void Test2() { }
  <br />}
<br />}
<p><b><br />5.	Nested type</b></p>
A type(class or a struct) defined inside another class or struct is called a nested type. An example is shown below. InnerClass is inside ContainerClass, Hence InnerClass is called as nested class.
<br />using System;
<br /><br />namespace Nested
<br />{
  <br />class ContainerClass
  <br />{
    <br />class InnerClass
    <br />{
      <br />public string str = "A string variable in nested class";
    <br />}
<br />
    <br />public static void Main()
    <br />{
      <br />InnerClass nestedClassObj = new InnerClass();
      <br />Console.WriteLine(nestedClassObj.str);
    <br />}
 <br />}
<br />}
<p><b><br />6.	private constructor</b></p>
<br />using System;
<br />namespace TestConsole
<br />{
  <br />class Program
  <br />{
    <br />public static void Main()
    <br />{
      <br />//Error cannot create instance of a class with private constructor
      <br />SampleClass SC = new SampleClass();
    <br />}
  <br />}
<br />  class SampleClass
  <br />{
    <br />double PI = 3.141;
    <br /><br />private SampleClass()
    <br />{
    <br />}
  <br />}
<br />}
<p><b><br />7.	child class call the constructor of a base class</b></p>
child class can call the constructor of a base class by using the base keyword
<br />using System;
<br />namespace TestConsole
<br />{
  <br />class BaseClass
  <br />{
    <br />public BaseClass(string str)
    <br />{
      <br /><br />Console.WriteLine(str);
    <br />}
  <br />}
  <br />
  <br />class ChildClass : BaseClass
  <br />{
<br />    public ChildClass(string str): base(str)
    <br />{
    <br />}
<br />
<br />    public static void Main()
<br />    {
<br />      ChildClass CC = new ChildClass("Calling base class constructor from child class");
<br />    }
<br />  }
<br />}
<p><b><br />8.	When an instance of a child class is created, the base class constructor is called before the child class constructor</b></p>
<br />using System;
<br />namespace TestConsole
<br />{
  <br />class BaseClass
  <br />{
    <br />public BaseClass()
    <br />{
      <br />Console.WriteLine("I am a base class constructor");
    <br />}
  <br />}
  <br />class ChildClass : BaseClass
  <br />{
    <br />public ChildClass()
    <br />{
      <br />Console.WriteLine("I am a child class constructor");
    <br />}
    <br />public static void Main()
    <br />{
      <br />ChildClass CC = new ChildClass();
    <br />}
  <br />}
<br />}
<p><b><br />9.	static constructor</b></p>
<br />using System;
<br />namespace TestConsole
<br /><br />{
  <br />class Program 
  <br />{
    <br />static int I;
    <br /><br />static Program()
    <br />{
      <br />I = 100;
      <br />Console.WriteLine("Static Constructor called");
    <br />}
    <br />public Program()
    <br />{
      <br />Console.WriteLine("Instance Constructor called");
    <br />}
    <br />public static void Main()
    <br />{
      <br />Program P = new Program();
    <br />}
  <br />}
<br />}
<p><b><br />10.	difference between method parameters and method arguments</b></p>
<br />using System;
<br />namespace Demo
<br />{
<br />class Program
<br />{
<br />  public static void Main()
  <br />{
<br />   int FN = 10;
<br />   int SN = 20;
   <br />//FN and LN are method arguments
   <br />int Total = Sum(FN, SN);
<br />   Console.WriteLine(Total);
<br />  }
<br />  //FirstNumber and SecondNumber are method parameters
<br />  public static int Sum(int FirstNumber, int SecondNumber)
<br />  {
<br />   int Result = FirstNumber + SecondNumber;
<br />   return Result;
  <br />}
<br />}
<br />}
<p><b><br />11.	 pass value types by reference to a method</b></p>
<br />using System;
<br />namespace Demo
<br />{
<br />class Program
<br />{
<br />  public static void Main()
<br />  {
<br />   int I = 10;
<br />   Console.WriteLine("Value of I before passing to the method = " + I);
<br />   Function(ref I);
<br />   Console.WriteLine("Value of I after passing to the method by reference= " + I);
<br />  }
<br />  public static void Function(ref int Number)
<br />  {
<br />   Number = Number + 5;
<br />  }
<br />}
<br />}
<p><b><br />12.	If a method's return type is void, can you use a return keyword in the method? Yes</b></p>
<br />using System;
<br />namespace Demo
<br />{
<br />class Program
<br />{
<br />  public static void Main()
  <br />{
   <br />SayHi();
  <br />}
  <br />public static void SayHi()
  <br />{
   <br /><br />Console.WriteLine("Hi");
   <br />return;
   <br />Console.WriteLine("This statement will never be executed");
  <br />}
<br />}
<br />}
<p><b><br />13.	mean by String objects are immutable</b></p>
<br />String objects are immutable means, they cannot be changed after they have been created. All of the String methods and C# operators that appear to modify a string actually return the results in a new string object. In the following example, when the contents of s1 and s2 are concatenated to form a single string, the two original strings are unmodified. The += operator creates a new string that contains the combined contents. That new object is assigned to the variable s1, and the original object that was assigned to s1 is released for garbage collection because no other variable holds a reference to it
<br />string s1 = "First String ";
<br />string s2 = "Second String";

<br />// Concatenate s1 and s2. This actually creates a new
<br />// string object and stores it in s1, releasing the
<br />// reference to the original object.
<br />s1 += s2;

<br />System.Console.WriteLine(s1);
<br />// Output: First String Second String
<p><b><br />14.	Boxing and Unboxing</b></p>
<br />Boxing - Converting a value type to reference type is called boxing
<br />int i = 101;
<br />object obj = (object)i; // Boxing
<br />obj = 101;
<br />i = (int)obj; // Unboxing
<p><b><br />15.	sealed class</b></p>
<br />using System;
<br />public sealed class Customer
<br />{
<br />}
<br />public class MainClass : Customer
<br />{
<br />public static void Main()
<br />{
<br />}
<br />}
<p><b><br />16.	polymorphism in C#</b></p>
<br />Polymorphism allows you to invoke derived class methods through a base class reference during run-time
<br />using System;
<br />public class DrawingObject
<br />{
<br />public virtual void Draw()
<br />{
<br />Console.WriteLine("I am a drawing object.");
<br />}
<br />}
<br />public class Triangle : DrawingObject
<br />{
<br />public override void Draw()
<br />{
<br />Console.WriteLine("I am a Triangle.");
<br />}
<br />}
<br />public class Circle : DrawingObject
<br />{
<br />public override void Draw()
<br />{
<br />Console.WriteLine("I am a Circle.");
<br />}
<br />}
<br />public class Rectangle : DrawingObject
<br />{
<br />public override void Draw()
<br />{
<br />Console.WriteLine("I am a Rectangle.");
<br />}
<br />}
<br />public class DrawDemo
<br />{
<br />public static void Main()
<br />{
<br />DrawingObject[] DrawObj = new DrawingObject[4];
<br />
<br />DrawObj[0] = new Triangle();
<br />DrawObj[1] = new Circle();
<br />DrawObj[2] = new Rectangle();
<br />DrawObj[3] = new DrawingObject();
<br />
<br />foreach (DrawingObject drawObj in DrawObj)
<br />{
<br />drawObj.Draw();
<br />}
<br />}
<br />}

    </div>
</asp:Content>

<asp:Content ID="ShreeRight" ContentPlaceHolderID="RightBar_Shree_Web" runat="server">
    <ShreeMain:ShreeRight runat="server" ID="RightBar" />               
</asp:Content>

<asp:Content ID="ShreeBottom" ContentPlaceHolderID="BottomBar" runat="server">
    <ShreeMain:ShreeBottom runat="server" ID="BottomBar" />           
</asp:Content>
