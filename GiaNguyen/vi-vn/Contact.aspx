<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true"
    CodeBehind="Contact.aspx.cs" Inherits="caodangngheytebinhduong.vi_vn.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <asp:Literal ID="ltrFavicon" runat="server" EnableViewState="false"></asp:Literal>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="breadcrumbBox">
        <ul class="breadcrumb">
            <li><a href="/">Trang chủ </a></li>
            <li class="active">Liên hệ</li>
        </ul>
    </div>
      <div class="col8 col-md-8 maincontent">
        <div class="boxmn">
           <div class="contacBox">
            <p class="tt-ct">
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </p>
            <div class="col12 col-sm-12 col-md-12">
              <div class="frmn">
                <div class="frm_group">
                  <div class="lbl"> Họ và tên: <span class="red">*</span></div>
                  <div class="input_group">
                    <input class="form-control" placeholder="Xin nhập họ và tên!" type="text" id="txtName" runat="server">
                    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="Xin nhập họ và tên!"
                        ControlToValidate="txtName" Display="None" ForeColor="Red" ValidationGroup="G40">*</asp:RequiredFieldValidator>
                  </div>
                </div>
                <div class="frm_group">
                  <div class="lbl">Điện thoại: <span class="red">&nbsp;</span></div>
                  <div class="input_group">
                    <input class="form-control" type="text" id="txtPhone" runat="server">
                  </div>
                </div>
                <div class="frm_group">
                  <div class="lbl">Email: <span class="red">*</span></div>
                  <div class="input_group">
                    <input class="form-control" type="text" id="txtEmail" placeholder="Xin nhập địa chỉ email!" runat="server">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Xin nhập địa chỉ email!"
                        ControlToValidate="txtEmail" Display="None" ForeColor="Red" ValidationGroup="G40">*</asp:RequiredFieldValidator>
                  </div>
                </div>
                <div class="frm_group">
                  <div class="lbl">Tiêu đề: <span class="red">*</span></div>
                  <div class="input_group">
                    <input class="form-control" type="text" id="txtSubject" runat="server" placeholder="Xin nhập tiêu đề!">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Xin nhập tiêu đề!"
                        ControlToValidate="txtSubject" Display="None" ForeColor="Red" ValidationGroup="G40">*</asp:RequiredFieldValidator>
                  </div>
                </div>
                <div class="frm_group">
                  <div class="lbl">Nội dung: <span class="red">&nbsp;</span></div>
                  <div class="input_group">
                    <textarea name="" id="txtMessage" class="form-control" rows="5"  style=" min-height:80px;" runat="server"></textarea>
                  </div>
                </div>
                <div class="frm_group">
                  <div class="lbl">Mã an toàn: <span class="red">*</span></div>
                  <div class="input_group captcha">
                    <input type="text"  class="form-control" id="Text4" name="" placeholder="" required>
                    
                    <img src="/vi-vn/images/captcha.jpg" /> 
                  </div>
                </div>
                <div class="frm_group">
                  <div class="lbl"> <span class="red"> </span></div>
                  <div class="input_group  ">
                    <div class="ct-submit"></a>
                        <asp:LinkButton ID="btnSubmit" runat="server" ValidationGroup="G40" 
                            onclick="btnSubmit_Click">Gửi</asp:LinkButton>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ShowMessageBox="True"
                            ShowSummary="False" ValidationGroup="G40" />
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col12 col-sm-12 col-md-12 fright">  
               <p class="tt-map">Bản đồ</p>
              <div class="map-google">
                <iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps?f=q&amp;source=s_q&amp;hl=vi&amp;geocode=&amp;q=232%2F17+C%E1%BB%99ng+H%C3%B2a,+ph%C6%B0%E1%BB%9Dng+13,+H%E1%BB%93+Ch%C3%AD+Minh,+Vi%E1%BB%87t+Nam&amp;aq=0&amp;oq=232%2F17+cong+h&amp;sll=37.0625,-95.677068&amp;sspn=0.013664,0.01929&amp;ie=UTF8&amp;hq=&amp;hnear=232+C%E1%BB%99ng+H%C3%B2a,+T%C3%A2n+B%C3%ACnh,+H%E1%BB%93+Ch%C3%AD+Minh,+Vi%E1%BB%87t+Nam&amp;t=m&amp;z=14&amp;ll=10.802298,106.64205&amp;output=embed"></iframe>
              </div>
            </div>
          </div>
        </div>
        <!--end box--> 
      </div>
</asp:Content>
