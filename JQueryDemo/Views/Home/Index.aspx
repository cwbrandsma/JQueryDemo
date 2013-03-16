<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <header class="jumbotron ">
        <div class="inner">
        <h1><%: ViewBag.Message %></h1>
        </div>
    </header>
    <section>
        <div class="page-header">
            
    <div class="offset1">
    <h2>What you will see and learn</h2>
    </div>
              </div>
    </section>
    <div class="row">
    <div class="span4">
      <h3><a href="<%=Url.Action("Introduction", "Home") %>">Introduction</a></h3>
      <p>
          Basic usage of JQuery.  
          Find an element on the page, change it, bind to a click event.  We are using JQuery 1.8.3 and Twitter Bootstrap 2.0.2.
      </p>
    </div>
    <div class="span4">
      <h3><a href="<%=Url.Action("Selectors", "Home") %>">Selectors</a></h3>
      <p>
          JQuery Selectors.  How to use them, and what they do for you.
      </p>
    </div>
    <div class="span4">
      <h3><a href="<%=Url.Action("Events", "Home") %>">Events</a></h3>
      <p>
          JQuery Events. Capture events from the dom, how to bind to them -- even if the element doesn't exist yet!
      </p>
    </div>
  </div>
  <div class="row">
    <div class="span4">
      <h3><a href="<%=Url.Action("DomFun", "Home") %>">DOM Fun</a></h3>
      <p>
            Playing with the Dom. Now you can find elements on the page, lets start messing with them.
      </p>
    </div>
    <div class="span4">
      <h3><a href="<%=Url.Action("Index", "Ajax") %>">AJAX</a></h3>
      <p>
            No site is complete without a few AJAX calls.
      </p>
    </div>
    <div class="span4">
      <h3><a href="<%=Url.Action("FormTricks", "Home") %>">Form Tricks</a></h3>
      <p>
            Tricks like validating data on the web browser before it gets to your server.
      </p>
    </div>
  </div>
  <div class="row">
   <div class="span12">
   <h2>Learn More</h2>
   <p>
        Visit <a href="http://jquery.com" title="JQuery Website">JQuery</a>,  
        <a href="http://ui.jquery.com">JQuery UI</a>,
        <a href="http://jquerymobile.com/">JQuery Mobile</a>,
        <a href="http://twitter.github.com/bootstrap">Twitter Bootstrap</a>,
        <a href="http://malsup.com/jquery/form/">JQuery Form</a>,
        <a href="http://bassistance.de/jquery-plugins/jquery-plugin-validation/">JQuery Validate</a>,
        <a href="http://codylindley.com/jqueryselectors/">Cody Lindly's Selectors page</a>
    </p>
    </div>
  </div>
</asp:Content>

<asp:Content ID="JSContent" ContentPlaceHolderID="JavascriptContent" runat="server">
    <script type="text/javascript">
        /// <reference path="jquery-1.5-vsdoc.js" />
        $(function () {
            $("#navHome").parent().addClass("active");
        });
    </script>
</asp:Content>
