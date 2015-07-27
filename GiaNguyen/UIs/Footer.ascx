<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" Inherits="caodangngheytebinhduong.UIs.Footer" %>

<div class="rowmn">
    <div class="col2 col-md-2 logo-sm">
        <asp:Repeater ID="RpLogo" runat="server">
            <ItemTemplate>
                <%# GetLogo(Eval("BANNER_TYPE"), Eval("BANNER_FIELD1"), Eval("BANNER_ID"), Eval("BANNER_FILE"))%>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <div class="col7 col-md-7 address-ft">
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </div>
    <div class="col3 col-md-3 ft-right">
    <div class="social-icons">
        <p><i class="fa fa-share-alt"></i><b>Kết nối với chúng tôi</b></p>
        <asp:Literal ID="lblsocial_network" runat="server"/>
    </div>
    <div class="bVs">
        <p><i class="fa fa-signal"></i><b>Thống kê truy cập</b></p>
        <p><i class="fa fa-user"></i>Đang truy cập: <b><asp:Literal EnableViewState="false" runat="server" ID="lblOnline" /></b></p>
        <p><i class="fa fa-bar-chart"></i>Tổng truy cập: <b><asp:Literal EnableViewState="false" runat="server" ID="lblSum" /></b></p>
    </div>
    </div>
</div>