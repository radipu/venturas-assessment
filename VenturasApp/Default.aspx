<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VenturasApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <div class="jumbotron">
        <h1>Assessment</h1>
       <p style="color:red"><i>The following was the assessment question.</i></p>
        <p class="lead"><b><u>Request</u></b></p>
       <br />
       <ol>
           <li>Write with asp.net (web form/ .aspx), C#, HTML5, CSS, jQuery and JS. We would like to receive 
the full source code.</li>
               <li>Use all elements of asp.net framework default controls (Textbox, Dropdown list, Grid view, etc.).</li>
               <li>For CURD operation use store procedure of SQL Server.</li>
               <li>Declare and implement Japanese culture (For calendar/Date time picker).</li>
               <li>GUI will be same for all devices. (Computer, Mobile and others devices view be same).</li>
       </ol>
       <p class="lead"><b><u>Steps</u></b></p>
       <br />
       <ol>
           <li>Create a master file with 3 menu items.</li>
           <ol>
               a. Menu position horizontal with collapse and expand facility.
           </ol>
           <li>Create 3 pages along with the master page by name is as (category, Item and output).</li>
           <ol>
               a. First page
               <ol>
                   i. Control: One textbox/input box, two button (Save, Update) and one data list.
               </ol>
               <ol>
                   ii. Function: CURD operation and user interfacing.
               </ol>
           </ol>
           <ol>
               a. Second page
               <ol>
                   i. Menu position horizontal with collapse and expand facility.
               </ol>
               <ol>
                   ii. Function: CURD operation with the relation with first page data table and user interfacing.
               </ol>
           </ol>
           <ol>
               a. Third page
               <ol>
                   i. Control: One Button and one data list.
               </ol>
               <ol>
                   ii. Function: For nth (First page’s item) category it will prepare a set of items (Second page’s item), for every click it will produce differ sets of item and will show to the list.
               </ol>
           </ol>
       </ol>
    </div>

</asp:Content>
