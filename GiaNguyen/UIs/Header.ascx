<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="caodangngheytebinhduong.UIs.Header" %>

<div class="wrap wHeader">
<div class="container">
<div class="rowmn rheader">
    <div class="col3 cLogo">
        <asp:Repeater ID="RpLogo" runat="server">
            <ItemTemplate>
                <%# GetLogo(Eval("BANNER_TYPE"), Eval("BANNER_FIELD1"), Eval("BANNER_ID"), Eval("BANNER_FILE"))%>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <div class="c-left-banner">
        <asp:Repeater ID="RpBanner" runat="server">
            <ItemTemplate>
                <%# Getbanner(Eval("BANNER_TYPE"),Eval("BANNER_FIELD1"), Eval("BANNER_ID"), Eval("BANNER_FILE"))%>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <div class="b-search">
    <input name="" type="text" placeholder="Nhập từ cần tìm..." />
    <span  class="btn btn-sm"><a><i class="fa fa-search"></i></a></span> </div>
</div>
</div>
</div>