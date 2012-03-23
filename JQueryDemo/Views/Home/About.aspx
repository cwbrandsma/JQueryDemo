<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    About Me
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>About Me</h1>
    <p>
       <h3>Chris Brandsma</h3>
       Position: Director of Development, Unity Corporation <br />
       Email: chris.brandsma@gmail.com <br />
       GitHub: github.com/cwbrandsma <br/>
       Twitter: cwbrandsma <br/>
       Blog: ElegantCode.com <br />
       Personal: ChrisBrandsma.com  or DiamondBSoftware.com<br />
       Specialties: C#, Asp.Net MVC, JavaScript, JQuery, Objective-C 

    </p>
    <p>
    
    </p>
</asp:Content>
<asp:Content ID="JSContent" ContentPlaceHolderID="JavascriptContent" runat="server">
    <script type="text/javascript">
        $(function () {
            $("#navAbout").parent().addClass("active");
        });
    </script>
</asp:Content>
