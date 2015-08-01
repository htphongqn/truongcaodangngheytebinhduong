<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AdsRight.ascx.cs" Inherits="caodangngheytebinhduong.UIs.AdsRight" %>

<div class="boxmn border1">
    <div class="tt-news"> <span>Quảng cáo</span> </div>
    <div class="inner-box-media">
        <asp:Repeater ID="Rpslider" runat="server">
            <ItemTemplate>
                <%# GetImageAd(Eval("AD_ITEM_ID"), Eval("AD_ITEM_FILENAME"), Eval("AD_ITEM_TARGET"), Eval("AD_ITEM_URL"))%>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>