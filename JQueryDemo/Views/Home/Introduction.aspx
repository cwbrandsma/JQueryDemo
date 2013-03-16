<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Introduction
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div>
    <div class="hero-unit">
    <h1>All HAIL THE '$'</h1>
    <p>
        $ is JQuery and the beginning of all good things in Javascript
    </p>
    </div>

    <p class="row">
    <h3>Know when you can start</h3>
<code>
    $(document).ready(function(){
        // your code here...
    });
</code>
<h3>OR</h3>
<code>
    $(function(){
        // your code here...
    });
</code>
</p>
    </div>
    <p class="row">
    <h3>Find things on your page</h3>
    <code>
    $("div.myclass").show();
    </code>
    </p>

    <p class="row">
    <h3>Create Html</h3>
    <code>
    $("&lt;div&gt;Hi there&lt;/div&gt;").appendTo($("body"));
    </code>
    </p>

    <p class="row">
        <h3>Capture Events</h3>
        <code>
            $("#mybutton").click(
                function(evt){
                    evt.preventDefault();
                    // do something
                });
        </code>
    </p>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="CssContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="JavascriptContent" runat="server">
<script type="text/javascript">
    $(function () {
        $("#navIntro").parent().addClass("active");
    });
</script>
</asp:Content>
