<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Ajax Demos</h2>

<div>
    Status: <span id="ajaxStatus"></span>
</div>
<div id="tabs2"> 
    <ul id="tabs" class="nav nav-tabs"> 
		<li class="active"><a data-toggle="tab" href="#ajax">Ajax</a></li> 
		<li><a data-toggle="tab" href="#get">GET</a></li> 
		<li><a data-toggle="tab" href="#jsonget">JSON GET</a></li> 
		<li><a data-toggle="tab" href="#post">POST</a></li> 
		<li><a data-toggle="tab" href="#load">Load</a></li> 
		<li><a data-toggle="tab" href="#commonEvents">Common Events</a></li> 
	</ul> 
    <div class="tab-content">
    <div id="get" class="tab-pane">
        <div class="accordian">
            <h3><a href="#">Basic Get</a></h3>
            <div>
                <button id="performGet">GET</button>
                <span id="getResult"></span>
            </div>
            <h3><a href="#">Source</a></h3>
            <div>
                <pre>
 $.get("Ajax/PerformGet", function (data) {
     $("#getResult").html(data);
 });
                 </pre>
            </div>
        </div>
    </div>

    <div id="jsonget"  class="tab-pane">
        <div class="accordian">
            <h3><a href="#">JSON Get</a></h3>
            <div>
                <button id="performJsonGet">GET</button> 
                <span id="jsonGetResult"></span>
            </div>
            <h3><a href="#">Source</a></h3>
            <div>
        <pre>
$("#performJsonGet").click(function () {
    $.getJSON("Ajax/PerformGetJson", function (data) {
        $("#jsonGetResult").html(data.message);
    });
});        
        </pre>
            </div>
        </div>    
    </div>    
   
     <div id="post"  class="tab-pane">
        <div class="accordian">
            <h3><a href="#">Basic Post</a></h3>
            <div>
                First Name: <input id="fName" type="text" /><br />
                First Name: <input id="lName" type="text" /><br />
                <button id="performPost">POST</button>
                <span id="postResult"></span>
            </div>
            <h3><a href="#">Source</a></h3>
            <div>
        <pre>
var data = {
    firstName: $("#fName").val(),
    lastName: $("#lName").val()
};

$.post("Ajax/PerformPost", data, function (result) {
    $("#postResult").html(result.firstName + " " + result.lastName);
});        
        </pre>
            </div>
        </div>
    </div>
   
    <div id="load" class="tab-pane">
        <div class="accordian">
            <h3><a href="#">Load</a></h3>
            <div>
                <button id="performLoad">Load</button>
                <div id="loadResult">
                </div>
            </div>
            <h3><a href="#">Source</a></h3>
            <div>
                <pre>
$("#loadResult").load("Ajax/PerformLoad");
                </pre>
            </div>
        </div>    
    </div>  

    <div id="ajax" class="tab-pane active">
        <div class="accordian2">
            <h3><a href="#">Ajax</a></h3>
            <div>
                <button id="performAjax">Call Ajax</button>
                <div id="ajaxResult">
                </div>
            </div>
            <h3><a href="#">Source</a></h3>
            <div>
                <pre>
$.ajax({
        url: "Ajax/PerformAjax",
        type: "POST",
        data: { data: "Hi there" },
        dataType: "json",
        statusCode: {
            200: function() { ajaxResultPost("status code: 200"); },
            404: function() { ajaxResultPost("status code: 404"); }
        }
})
.always(function(jqXHR, textStatus) { ajaxResultPost("Always: " + textStatus); })
.success(function(data) {  ajaxResultPost("Success:" + data.message); }
.fail(function(jqXHR, textStatus) { ajaxResultPost("Fail: something is wrong, " + textStatus); });
                </pre>
            </div>
             <h3><a href="#">Notes</a></h3>
            <div>
                <button class="btn btn-danger">Warning!</button>
                Deprecation Notice: The jqXHR.success(), jqXHR.error(), and jqXHR.complete() callbacks will be deprecated in jQuery 1.8. 
                
                <h3>Example</h3>
                <pre>
$.ajax({
        url: "Ajax/PerformAjax",
        type: "POST",
        data: { data: "Hi there" },
        dataType: "json",
        success:function(data) { ajaxResultPost("Success:" + data.message); },
        complete: function(jqXHR, textStatus) { ajaxResultPost("Complete: " + textStatus); },
        error: function(jqXHR, textStatus) { ajaxResultPost("Error: something is wrong, " + textStatus); }
});
</pre>
             </div>
        </div>    
    </div>  
    <div id="commonEvents" class="tab-pane">
    <pre>
$("#ajaxStatus").ajaxComplete(function (event, XMLHttpRequest, ajaxOptions) {
    $(this).html("Complete:" + Date());
});

$("#ajaxStatus").ajaxError(function(event, XMLHttpRequest, ajaxOptions, thrownError) {
    $(this).html("Error:" + thrownError + ":" + Date());
});
    
    </pre>
    <ul>
        <li>ajaxComplete</li>
        <li>ajaxError</li>
        <li>ajaxSend</li>
        <li>ajaxStart</li>
        <li>ajaxStop</li>
        <li>ajaxSuccess</li>
    </ul>
    </div>
 </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="JavascriptContent" runat="server">
    <script type="text/javascript">
        $(function () {
            $("#navAjax").parent().addClass("active");

            $("#tabs").tab();
            $(".accordian").accordion({ fillSpace: true });
            $(".accordian div").css("height", "200px");

            // 
            $("#ajaxStatus").ajaxComplete(function (event, XMLHttpRequest, ajaxOptions) {
                $(this).html("Complete:" + Date());
            });
            $("#ajaxStatus").ajaxError(function (event, XMLHttpRequest, ajaxOptions, thrownError) {
                $(this).html("Error:" + thrownError + ":" + Date());
            });

            //----------------------------
            // get
            //----------------------------
            $("#performGet").click(function () {
                $.get("Ajax/PerformGet", function (data) {
                    $("#getResult").html(data);
                });
            });


            //----------------------------
            // getJSON
            //----------------------------
            $("#performJsonGet").click(function () {
                $.getJSON("Ajax/PerformGetJson", function (data) {
                    $("#jsonGetResult").html(data.message);
                });
            });


            //----------------------------
            // POST
            //----------------------------
            $("#performPost").click(function () {
                var data = {
                    firstName: $("#fName").val(),
                    lastName: $("#lName").val()
                };
                $.post("Ajax/PerformPost", data, function (result) {
                    $("#postResult").html(result.firstName + " " + result.lastName);
                });
            });


            //----------------------------
            // LOAD
            //----------------------------
            $("#performLoad").click(function () {
                $("#loadResult").load("Ajax/PerformLoad");
            });


            //----------------------------
            // AJAX
            //----------------------------
            function ajaxResultPost(message) {
                $("#ajaxResult").append("<p>" + message + "</p>");
            }

            $("#performAjax").click(function () {
                $.ajax({
                    url: "Ajax/PerformAjax",
                    type: "POST",
                    data: { data: "Hi there" },
                    dataType: "json",
                    statusCode: {
                        200: function() {
                            ajaxResultPost("status code: 200"); 
                        },
                        404: function() {
                            ajaxResultPost("status code: 400");
                        }
                    }
                })
                    .always(function(jqXHR, textStatus) { ajaxResultPost("Always: " + textStatus); })
                    .success(function(data) { ajaxResultPost("Done:" + data.message); })
                    .fail(function(jqXHR, textStatus) { ajaxResultPost("Fail: something is wrong, " + textStatus); });


            });
        });
    </script>
</asp:Content>
