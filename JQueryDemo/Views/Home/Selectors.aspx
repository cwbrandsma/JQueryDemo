<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Selectors
</asp:Content>

<asp:Content ID="CssContent" ContentPlaceHolderID="CssContent" runat="server">
    <style type="text/css">
        #main {height:1500px; }
       #tests *.selected, .selected{ border: 1px solid #FF00; padding: 2px;background-color: #FCC;}
       #tests * { border: 1px solid #888888; padding: 2px;}     
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>JQuery (Sizzle) Selectors</h2>
<p>
<a href="http://codylindley.com/jqueryselectors">Cody Lindly's Selectors page</a>
</p>
<div style="width: 250px; height:500px; float:left;">
      
      <span style="font-size:xx-large">$(selector)</span>
      
      <div class="accordian">

    <h3><a href="#">Hierarchy</a></h3>
    <ul>
        <li> * -- everything</li>
        <li> # -- id</li>
        <li>. -- class name</li>
        <li>parent > child</li>
        <li>selector1,selector2,selector3</li>
        <li>ancestor desendent</li>
        <li>prev+next</li>
        <li>prev~siblings</li>
    </ul>
    <h3><a href="#">Attribute</a></h3>
    <ul>
        <li>[name='value']</li>
        <li>[name*='value'] -- contains</li>
        <li>[name$='value'] -- ends with</li>
        <li>[name^='value'] -- starts with</li>
        <li>[name!='value'] -- not equal</li>
        <li>[name] -- has</li>
    </ul>
    <h3><a href="#">Form</a></h3>
    <ul>
        <li>:button</li>
        <li>:checkbox</li>
        <li>:checked</li>
        <li>:disabled</li>
        <li>:enabled</li>
        <li>:file</li>
        <li>:image</li>
        <li>:input</li>
        <li>:password</li>
        <li>:radio</li>
        <li>:reset</li>
        <li>:selected</li>
        <li>:submit</li>
        <li>:text</li>

    </ul>
    <h3><a href="#">Content</a></h3>
    <ul>
        <li>:contains()</li>
        <li>:empty</li>
        <li>:has(selector)</li>
        <li>:parent</li>
    </ul>
    <h3><a href="#">Basic Filters</a></h3>
    <ul>
        <li>:eq(index)</li>
        <li>:even</li>
        <li>:odd</li>
        <li>:first</li>
        <li>:last</li>
        <li>:lt(index)</li>
        <li>:gt(index)</li>
        <li>:header</li>
        <li>:not(selector)</li>

    </ul>
    </div>
</div>
<div class="ui-state-default ui-corner-all" style="float:left;height:500px;padding-left:25px">
    <p>
    Selector: <input id="selector" type="text" /><button id="trySelector" type="button">Submit</button>
    </p>

    <div id="tests">
        <div id="Parent">
            Parent
            <div id="Child1" class="child" data-pos="first">Child1.child [data-pos=first]</div>
            <div id="Child2" class="child" data-pos="second">Child2.child [data-pos=second]</div>
            <div id="Child3" class="child" data-pos="third">Child3.child [data-pos=third]</div>
            <div id="FormStuff">div.FormStuff<br />
                Input:Text: <input type="text" /><br />
                Input:Button: <input type="button" value="button" /><br />
                Input:Checkbox: <input type="checkbox" /><br />
                Input:Password: <input type="password" /><br />
                Input:Radio: <input type="radio" /><br />
                Button: <button>Button</button><br />

                Select: <select><option>First</option><option>Second</option></select>
            </div>
        </div>
    
    </div>

</div>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="JavascriptContent" runat="server">
<script type="text/javascript">
    $(function () {
        $("#navSelectors").parent().addClass("active");

       // $("#main").css("height", "500px");
        $("#trySelector").click(function () {
            $(".selected").removeClass("selected");

            var selector = "#tests " + $("#selector").val();
            $(selector).addClass("selected");

        });
    });
</script>
</asp:Content>
