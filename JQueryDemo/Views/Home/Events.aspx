<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Events
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Events</h2>

<div> 
    <ul class="nav nav-tabs"> 
		<li class="active"><a  data-toggle="tab" href="#bindEvents">Bind</a></li> 
        <li><a  data-toggle="tab" href="#thisBinding">This</a></li>
		<li><a  data-toggle="tab" href="#eventProp">Propagation</a></li>
		<li><a  data-toggle="tab" href="#clickEvents">Bind Sortcuts</a></li> 
		<li><a  data-toggle="tab" href="#onEvents">On/Off</a></li> 
		<li><a  data-toggle="tab" href="#delegateEvents">Delegate</a></li> 

		<li><a  data-toggle="tab" href="#customEvents">Custom</a></li> 
        <li><a  data-toggle="tab" href="#liveEvents">Live/Die</a></li>
	</ul> 
    <div class="tab-content">
    <div class="tab-pane active" id="clickEvents">
        <h3>Click
        <small>Just like bind('click'), but without the extra typing</small>
        </h3>
        <pre>
        $(selector).click(function(){});
        $(selector).click();
        </pre>

        <button type="button" id="clickButton">Click Me</button> $("#clickButton").click(function () { alert("You clicked me"); });
        <br />

        <button type="button" id="delgatebutton">I click Click Me</button>$("#delgatebutton").click(function () { $("#clickButton").click(); });
        

        <h3>See also</h3>
        <ul>
            <li>DoubleClick</li>
            <li>Blur</li>
            <li>Change</li>
            <li>focus</li>
            <li>mousedown</li>
            <li>mouseup</li>
            <li>mouseover</li>
            <li>mouseout</li>
            <li>mouseenter</li>
            <li>mouseeleave</li>
        </ul>
    </div>
    <div class="tab-pane" id="bindEvents">
        <div class="page-header">
        <h3>Bind, Unbind, and Trigger
        <small>Base eventing methods</small>
        </h3>
        </div>
        <pre>
        $(selector).bind('click', function(){});
        $(selector).unbind('click');
        $(selector).trigger('click');
        </pre>

        <button type="button" id="bindEvent">Click Me</button> $("#clickButton").bind("click", function () { alert("You clicked me"); });
        <br />
        <button type="button" id="triggerEvent">I click Click Me</button> $("#clickButton").trigger("click"); 
        <br />
        <button type="button" id="unbindEvent">Remove the Click hander</button> $("#clickButton").unbind("click");
    </div>
    <div class="tab-pane" id="thisBinding">
        <div class="page-header">
        <h3>this
        <small>events return a reference to the event's element</small>
        </h3>
        </div>
        <pre>
        $(selector).bind('click', function() {
            $(this).css("background-color", "#88ff88");
        });
        </pre>
        <div id="thisTest" style="background-color: #ff88">Click Me</div>
    </div>

    <div class="tab-pane" id="onEvents">
        <h3>On, Off
        <small>New in JQuery 1.7</small>
        </h3>
        <pre>
        $(selector).on('click', function);
        $(selector).off('click', function);
        
        $(parent).on('click', selector, function);
        $(selector).off('click', selector, function);
        </pre>

        <button type="button" id="onCreate">Create New button</button>
        <button type="button" id="offHandlers">Kill Click Handlers</button>

        <ul id="onButtons">
        </ul>            
    </div>
    <div class="tab-pane" id="delegateEvents">
        <h3>Delegate, Undelegate
        <small>New in JQuery 1.4.2 -- <button class="btn btn-info">not deprecated, but just use on/off.</button></small>
        </h3>
        <pre>
        $(parent).delegate(selector, 'click', function);
        $(parent).undelegate(selector, 'click', function);
        </pre>

        <button type="button" id="delegateCreate">Create New button</button>
        <button type="button" id="delegateRemove">Kill Click Handlers</button>

        <ul id="delegateButtons">
        </ul>            
    </div>
    <div class="tab-pane" id="liveEvents">
        <h3>Live, Die
        <small><button class="btn btn-danger">Don't use this</button></small>
        </h3>

        <div class="warning">Live and Die have been deprecated and will be removed.</div>

    </div>
    <div class="tab-pane" id="customEvents">
        <h3>Custom Events with Live, Bind, and Trigger
        <small></small>
        </h3>

        <pre>
        $(selector).bind('any_name_you_want', function);
        $(selector).trigger('any_name_you_want');
        </pre>

        <button id="customEventButton" type="button">Fire Custom event</button>

        <span id="customEventDiv" class="alert alert-info" style="display:none;"> Look, now I'm here  </span>
        <pre>
        $("#customEventDiv").bind("lorumIpsum", function () { 
            $(this).toggle('slow'); 
        });
        
        $("#customEventButton").click(function () { 
            $("#customEventDiv").trigger("lorumIpsum"); 
        });
        </pre>
    </div>
    
    
    <div class="tab-pane" id="eventProp">
        <h2 style="border-bottom: solid #888888 1px; margin-bottom:20px;" >How to stop event bubbling</h2>

        <h3>preventDefault
        <small >
        If this method is called, the default action of the event will not be triggered.
        </small>
        </h3> 
        <pre>
        function clickHandler(evt) {
            evt.preventDefault();
            //do stuff
        }
        </pre>
        
        <h3>stopPropagation</h3> 
        <small >
Prevents the event from bubbling up the DOM tree, preventing any parent handlers from being notified of the event.
        </small>
        <pre>
        function clickHandler(evt) {
            evt.stopPropagation();
            //do stuff
        }
        </pre>

        <h3>stopImmediatePropagation</h3> 
        <small >
Prevents other event handlers from being called.
        </small>
        <pre>
        function clickHandler(evt) {
            evt.stopImmediatePropagation();
            //do stuff
        }
        </pre>

    </div>

</div>
</div>



</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="CssContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="JavascriptContent" runat="server">
<script type="text/javascript">

    $(function () {
        $("#navEvents").parent().addClass("active");

        // for click tab
        $("#clickButton").click(function () { alert("You clicked me"); });

        $("#delgatebutton").click(function () { $("#clickButton").click(); });

        // for bind tab
        $("#bindEvent").bind("click", function () {
            alert("You clicked me");
        });

        $("#triggerEvent").click(function () {
            $("#bindEvent").trigger("click");
        });

        $("#unbindEvent").click(function () {
            $("#bindEvent").unbind("click");
        });
    });


    $(function () {
        $("#thisTest").bind('click', function (evt) {
            $(this).css("background-color", "#88ff88");
        });

    });

    // custom events tab
    $(function () {
        $("#customEventDiv").bind("lorumIpsum", function () { $(this).toggle('slow'); });
        $("#customEventButton").click(function () { $("#customEventDiv").trigger("lorumIpsum"); });
    
    });

    // for live tab
    $(function() {
        $("#onCreate").click(function () {
            $("#onButtons").append("<li><button type='button'>New Button</button></li>");
        });

        $("#onButtons").on("click", "li button", clickHandler);

        $("#offHandlers").click(function () {
            $("#onButtons").off("click", "li button", clickHandler);
        });

        function clickHandler(evt) {
            evt.preventDefault();
            alert("Now how did that happen");
        }
    });
    // for delegate tab
    $(function () {
        $("#delegateCreate").click(function () {
            $("#delegateButtons").append("<li><button type='button'>New Button</button></li>");
        });

        $("#delegateButtons").delegate("li button", "click", clickHandler);

        $("#delegateRemove").click(function () {
            $("#delegateButtons").undelegate("li button", "click", clickHandler);
        });

        function clickHandler(evt) {
            evt.preventDefault();
            alert("Now how did that happen");
        }
    });
</script>
</asp:Content>
