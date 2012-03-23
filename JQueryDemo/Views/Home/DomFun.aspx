<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    DomFun
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>DomFun</h2>
    <div id="actions" style="float: left; height: 500px; width: 250px;">
        <div>
            <button id="makeHtmlButton">Make Html</button>
            <pre>
$("#Holder1").<strong>html</strong>(
    "&lt;ul&gt;&lt;li&gt;Stuff&lt;/li&gt;&lt;/ul&gt;");
    </pre>
        </div>
        <div>
            <div>
                <button id="clearListButton">Clear Button</button>
                <pre>
var parent = $("#Holder1 ul");
parent.html("");
    </pre>
            </div>
            <button id="putAfterButton">Put Something After</button>
            <pre>
var parent = $("#Holder1 ul");
$("&lt;li&gt;After&lt;/li&gt;")
    .<strong>appendTo</strong>(parent);
    </pre>
        </div>
        <div>
            <button id="putBeforeButton">Put Something Before</button>
            <pre>
var parent = $("#Holder1 ul");
$("&lt;li&gt;Before&lt;/li&gt")
    .<strong>prependTo</strong>(parent);
    </pre>
        </div>

        <div>
            <button id="wrapListButton">Wrap the List</button>
            <pre>
var parent = $("#Holder1 ul");
parent.<strong>wrap</strong>(
"&lt;div style='background-color:#AAFFAA' /&gt;");
    </pre>
        </div>
    </div>
    
    <div class="ui-state-default ui-corner-all" style="float: left; margin-left: 20px; min-height: 200px; min-width: 200px; padding-left: 25px; padding-right: 25px;">

        <div id="tests">
            <h3 style="border-bottom: solid 1px #aaaaaa">Stuff happens here</h3>
            <div id="Holder1">
    
            </div>
    
        </div>

    </div>

    

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="CssContent" runat="server">

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="JavascriptContent" runat="server">
    <script type="text/javascript">
        $(function() {
            $("#navDom").parent().addClass("active");

            $("#makeHtmlButton").click(function() {
                $("#Holder1").html("<ul><li>Stuff</li></ul>");
            });
            $("#clearListButton").click(function() {
                var parent = $("#Holder1 ul");
                parent.html("");
            });

            $("#putAfterButton").click(function() {
                var parent = $("#Holder1 ul");
                $("<li>After</li>").appendTo(parent);
            });

            $("#putBeforeButton").click(function() {
                var parent = $("#Holder1 ul");
                $("<li>Before</li>").prependTo(parent);
            });


            $("#wrapListButton").click(function() {
                var parent = $("#Holder1 ul");
                parent.wrap("<div style='background-color:#AAFFAA' />");
            });
        });

    </script>

</asp:Content>