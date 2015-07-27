<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CategoriesRight.ascx.cs" Inherits="caodangngheytebinhduong.UIs.CategoriesRight" %>

<asp:Repeater ID="RpList" runat="server">
<ItemTemplate>
<div class="boxmn border1">
    <div class="tt-news"> <span><%#Eval("cat_name")%></span> </div>
    <div class="inner-box-media">
    <div class="r-box fa-lf">
        <ul>
            <asp:Repeater ID="Repeater1" runat="server" DataSource='<%# sanpham(Eval("CAT_ID"))%>'>
                <ItemTemplate>
                    <li><a href="<%# GetLinkNews(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),1) %>"><%# Eval("NEWS_TITLE") %></a></li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
    </div>
</div>
</ItemTemplate>
</asp:Repeater>