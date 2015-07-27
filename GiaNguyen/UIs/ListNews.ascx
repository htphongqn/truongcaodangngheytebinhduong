<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListNews.ascx.cs" Inherits="caodangngheytebinhduong.UIs.ListNews" %>

<%@ Register src="Path.ascx" tagname="Path" tagprefix="uc1" %>

<uc1:Path ID="Path1" runat="server" />
<div class="col8 col-md-8 maincontent">
<div class="boxmn">
    <div class="list-media">
    <!--end media-->
    <asp:Repeater ID="Rplistnews" runat="server">
        <ItemTemplate>
        <%#GetHtmlItemNews(Eval("NEWS_URL"), Eval("NEWS_SEO_URL"), Eval("CAT_SEO_URL"), Eval("NEWS_ID"), Eval("NEWS_IMAGE3"), Eval("NEWS_TITLE"), Eval("NEWS_DESC"), Eval("NEWS_PUBLISHDATE"))%>
        </ItemTemplate>
    </asp:Repeater> 
    </div>
    <div class="clearfix text-center">
    <ul class="pagination">
        <asp:Literal ID="ltrPage" runat="server"></asp:Literal>
    </ul>
    </div>
</div>
<!--end box--> 
        
</div>