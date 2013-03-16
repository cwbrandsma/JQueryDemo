<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Introduction
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div>
    <h1>All HAIL THE '$'</h1>
    <p>
        $ is JQuery and the beginning of all good things in Javascript
    </p>
<pre>
    $(document).ready(function(){
        // your code here...
    });
</pre>
<h3>OR</h3>
<pre>
    $(function(){
        // your code here...
    });
</pre>
</div>

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
