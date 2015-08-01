<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NewsDetail.ascx.cs" Inherits="caodangngheytebinhduong.UIs.NewsDetail" %>
<%@ Register src="Path.ascx" tagname="Path" tagprefix="uc1" %>

<uc1:Path ID="Path1" runat="server" />
<div class="col8 col-md-8 maincontent">
<div class="boxmn">
    <div class="wmn detail-media">
        <h1><asp:Label ID="lbNewsTitle" runat="server" /></h1>
    <div class="content-media">
        <asp:Literal ID="liHtml" runat="server"></asp:Literal>
    </div>
    <div class="wmn file-down" style="display:none;"><b>Tải file đính kèm:</b>
        <p class="file"><i class="fa fa-file-pdf-o"></i><a>Thông tư số 103/2014/TT-BTC</a></p>
        <p class="file"><i class="fa fa-file-pdf-o"></i><a>Công văn số 4280/TCT-CS</a></p>
    </div>
    </div>
    <div class="wmn fleft">
        <span class="fleft">
            <div class="addthis_toolbox addthis_default_style like_face">
                <a class="addthis_button_preferred_1"></a><a class="addthis_button_preferred_2">
                </a><a class="addthis_button_preferred_3"></a><a class="addthis_button_preferred_4">
                </a><a class="addthis_button_compact"></a><a class="addthis_counter addthis_bubble_style">
                </a>
                <script type="text/javascript">
                    var addthis_config = { "data_track_addressbar": true };
                    addthis_config = addthis_config || {};
                    addthis_config.data_track_addressbar = false;
                </script>
                <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-50d418ab2d45f0aa"></script>
            </div>
        </span>
        <a style="float:right;margin-bottom:10px" href="#" id="hplPrint" target="_blank" runat="server" ><i class="fa fa-print"></i>Bản In</a>
        <%--<a href="#" id="hplFeedback" runat="server" ><i class="fa fa-share-alt"></i>Phản hồi</a> --%>
    </div>
    <div class="wmn other-news-dtl" id="dvOtherNews" runat="server">
    <div class="boxmn b-cate">
        <div class="tt-cate-news"> <span>Tin khác</span> <span class="px-hook"></span> </div>
        <div class="inner-box">
        <ul class="list-more">
            <asp:Repeater ID="Rptinkhac" runat="server">
            <ItemTemplate>
                <li> <a href="<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>"><%# Eval("NEWS_TITLE") %></a><i class="date">(<%# getDate(Eval("NEWS_PUBLISHDATE")) %>)</i> </li>
            </ItemTemplate>
            </asp:Repeater>
        </ul>
        </div>
    </div>
    </div>
</div>
<!--end box-->   
</div>