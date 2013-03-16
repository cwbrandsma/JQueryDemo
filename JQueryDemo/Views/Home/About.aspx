<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    About Me
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row form-horizontal">
       <h3>Chris Brandsma</h3>
        <div class="control-group ">
            <label class="control-label ">Position</label>
            <div class="controls">
                <strong>Director of Development, Unity Corporation</strong>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Email</label>
            <div class="controls">
                <strong>chris.brandsma@gmail.com</strong>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">GitHub</label>
            <div class="controls">
                http://github.com/cwbrandsma
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Blog</label>
            <div class="controls">
                http://elegantcode.com
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Specialties</label>
            <div class="controls">
                C#, Objective-C, JavaScript, Java, ...I program things.
            </div>
        </div>
        
    </div>
</asp:Content>
<asp:Content ID="JSContent" ContentPlaceHolderID="JavascriptContent" runat="server">
    <script type="text/javascript">
        $(function () {
            $("#navAbout").parent().addClass("active");
        });
    </script>
</asp:Content>
