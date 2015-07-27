<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Slide.ascx.cs" Inherits="caodangngheytebinhduong.UIs.Slide" %>

<%@ Register src="NewsHome.ascx" tagname="NewsHome" tagprefix="uc1" %>

<div class="wrap w-banner">
<div class="container">
<div class="rowmn">
    <div class="col8 col-md-8 c-slide">
    <div class="slider_main">
        <div class="innerSlider">
        <div class="slider-wrapper theme-default">
            <div id="slider" class="nivoSlider">
                <asp:Repeater ID="Rpslider" runat="server">
                    <ItemTemplate>
                        <%# GetImageAd(Eval("AD_ITEM_ID"), Eval("AD_ITEM_FILENAME"), Eval("AD_ITEM_TARGET"), Eval("AD_ITEM_URL"))%>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        </div>
    </div>
    </div>
    <script type="text/javascript">
		$(document).ready(function(){
			$('.slider5').bxSlider({
				mode: 'vertical',
			slideWidth: 400,
			minSlides: 3,
			moveSlides: 1,
			maxSlides: 4,
			slideMargin: 5,
			auto: true,
			speed: 2000,
			controls: true,
			pause: 2000,
			});
		});
		</script>
    <div class="col4 col-md-4 c-hot-news">
        <uc1:NewsHome ID="NewsHome1" runat="server" />
    </div>
</div>
</div>
</div>