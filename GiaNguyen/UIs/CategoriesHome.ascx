<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CategoriesHome.ascx.cs" Inherits="caodangngheytebinhduong.UIs.CategoriesHome" %>

<asp:Repeater ID="Rpmenu1" runat="server">
<ItemTemplate>
<div class="boxmn b-cate">
    <div class="tt-cate-news"> <span><%# Eval("CAT_NAME") %></span> <span class="px-hook"></span> 
        <a href="<%#GetLink(Eval("cat_url"),Eval("cat_seo_url"),1)%>" class="view-all"><i class="fa fa-plus-square-o"></i>Xem tất cả</a></div>
    <div class="inner-box">
    <div class="wmn b-st-news">
        <asp:Repeater ID="Repeater3" runat="server" DataSource='<%# sanpham(Eval("CAT_ID"))%>'>
        <ItemTemplate>
            <div class="item-media-st ">
            <div class="inner-item-media">
                <div class="content-media">
                    <img class="img-media-st" alt="<%# Eval("NEWS_TITLE") %>" src="<%# GetImageT(Eval("NEWS_ID"),Eval("NEWS_IMAGE3")) %>" >
                <h2 class="tt-it-news"><a title="<%# Eval("NEWS_TITLE") %>"><%# Eval("NEWS_TITLE") %></a></h2>
                <%# Eval("NEWS_DESC") %></div>
            </div>
            </div>
        </ItemTemplate>
        </asp:Repeater>
    </div>
    <div class="wmn orther-news">
        <asp:Repeater ID="Repeater1" runat="server" DataSource='<%# sanpham1(Eval("CAT_ID"))%>'>
        <ItemTemplate>
            <div class="link-news"> <a href="<%# GetLinkNews(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),1) %>" title="<%# Eval("NEWS_TITLE") %>"><%# Eval("NEWS_TITLE") %></a><i class="date"></i> </div>
        </ItemTemplate>
        </asp:Repeater>
    </div>
    </div>
</div>
</ItemTemplate>
</asp:Repeater>