<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<JQueryDemo.Models.FormTricksPost>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    FormTricks
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Form Tricks</h2>
    <div id="tabs"> 
        <ul> 
            <li><a href="#demo">Demo</a></li> 
            <li><a href="#source">Source</a></li> 
        </ul> 

        <div id="demo">
            <%: ViewData["Message"] %>
            <form id="myForm" action="FormTricks" method="post" class="form-horizontal">
                <fieldset>
                    <div class="control-group">
                        <label class="control-label" for="FirstName">First Name</label>
                        <div class="controls">
                            <input name="FirstName"/>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="LastName">Last Name</label>
                        <div class="controls">
                            <input name="LastName"/>
                        </div>
                    </div>                    
                    <div class="control-group">
                        <label class="control-label" for="Email">Email</label>
                        <div class="controls">
                            <input name="Email"/>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="Birthday">Birthday</label>
                        <div class="controls">
                            <input id="Birthday" name="Birthday"/>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="City">City</label>
                        <div class="controls">
                            <input id="City" name="City"/>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="State">State</label>
                        <div class="controls">
                            <input id="State" name="State"/>
                        </div>
                    </div>
                </fieldset>

                <button type="submit">Submit</button>
            </form>
        </div>
        <div id="source" style="height: 200px;">
            <div class="accordian">
                <h3><a href="#">Date Picker</a></h3>
                <div style="height: 100px;">
                    <pre>
$("#Birthday").datepicker();        
        </pre>
                </div>

                <h3><a href="#">Validation Script</a></h3>
                <div style="height: 100px;">
                    <pre>
$("#myForm").validate({
    rules: {
        FirstName: "required",
        LastName: "required",
        Email: { "required": true, email: true },
        Birthday: "date"
    }
});
        </pre>
                </div>
                <h3><a href="#">Form Script</a></h3>
                <div style="height: 100px;">
                    <pre>
$('#myForm').ajaxForm({
    success: function (data) {
        showDialog('Hello ' + data.FirstName + " " + data.LastName);
        $('#myForm').clearForm();
    }
});
        </pre>
                </div>
                <h3><a href="#">Dialog</a></h3>
                <div style="height: 100px;">
                <pre>
function showDialog(text) {
    $('&lt;div&gt;&lt;/div&gt;')
		        .html(text)
		        .dialog({
		            title: 'The form returned',
		            modal: true,
		            buttons: {
		                Ok: function () {
		                    $(this).dialog("close");
		                }
		            },
		            close: function () { $(this).remove(); }
		        });
}
                </pre>
                </div>
            </div>
        </div>
    </div>
    <div id="dialog" style="display: none;"></div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="JavascriptContent" runat="server">
    <script src="<%: Url.Content("~/Scripts/jquery.form.js") %>" type="text/javascript"> </script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.js") %>" type="text/javascript"> </script>

    <script type="text/javascript">
        $(function () {
            $("#navForm").parent().addClass("active");

            $("#tabs").tabs();
            $(".accordian").accordion({ fillSpace: true });

            $("#Birthday").datepicker();

            $("#myForm").validate({
                rules: {
                    FirstName: "required",
                    LastName: "required",
                    Email: { "required": true, email: true },
                    Birthday: "date"
                }
            });

            $('#myForm').ajaxForm({
                success: function (data) {
                    showDialog('Hello ' + data.FirstName + " " + data.LastName);
                    $('#myForm').clearForm();
                }
            });

        });
        

        function showDialog(text) {
            $('<div></div>')
		                .html(text)
		                .dialog({
		                    title: 'The form returned',
		                    modal: true,
		                    buttons: {
		                        Ok: function () {
		                            $(this).dialog("close");
		                        }
		                    },
		                    close: function () { $(this).remove(); }
		                });

        }
    </script>
</asp:Content>