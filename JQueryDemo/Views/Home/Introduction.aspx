<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Introduction
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Introduction</h2>
<div class="accordian">
<h3><a href="#">Adopters</a></h3>
<div>
    <ul>
        <li>Microsoft</li>
        <li>Google</li>
        <li>Dell</li>
        <li>Bank Of America</li>
        <li>Digg</li>
        <li>NBC</li>
        <li>CBS</li>
        <li>NetFlix</li>
        <li>Mozilla.org</li>
        <li>WordPress</li>
        <li>Drupal</li>
        <li>Boise Code Camp</li>
    </ul>
</div>
<h3><a href="#">Books</a></h3>
<div>
    <img src="<%=Url.Content("~/Content/bibeault2_cover150.jpg") %>"  />
    <h4>JQuery In Action</h4>
    But really, just go to JQuery.com.  Really.
</div>
<h3><a href="#">Download/Link</a></h3>
<div>
<p>
<h4>Google Ajax API CDN</h4>
https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js
</p>
<p>
<h4>Microsoft CDN</h4>
http://ajax.microsoft.com/ajax/jquery/jquery-1.5.min.js
</p>
<p>
<h4>JQuery CDN</h4>
http://code.jquery.com/jquery-1.5.min.js Minified version<br />
http://code.jquery.com/jquery-1.5.js
</p>
</div>

<h3><a href="#">Starter Code</a></h3>
<div>
    <span style="font-size:xx-large">All HAIL THE '$'</span>
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
</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="CssContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="JavascriptContent" runat="server">
<script type="text/javascript">
    $(function () {
        $(".accordian").accordion();
        $("#navIntro").parent().addClass("active");
    });
</script>
</asp:Content>
