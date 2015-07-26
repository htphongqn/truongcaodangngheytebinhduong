<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Slide.ascx.cs" Inherits="caodangngheytebinhduong.UIs.Slide" %>

<div class="wrap w-banner">
<div class="container">
<div class="rowmn">
    <div class="col8 col-md-8 c-slide">
    <div class="slider_main">
        <div class="innerSlider">
        <div class="slider-wrapper theme-default">
            <div id="slider" class="nivoSlider">
            <div class="itemSlide"> <a href=""> <img src="data/slide-1.jpg" title="..."/></a> </div>
            <div class="itemSlide"> <a href=""><img src="data/slide-2.jpg" title="...."/></a> </div>
            <div class="itemSlide"> <a href=""><img src="data/slide-3.jpg" title="caption"/></a> </div>
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
    <div class="wmn b-hot-news">
        <div class="tt-news"> <span>Tin mới nhất</span> </div>
        <div class="inner-box">
        <div class="wmn list-media">
            <div class="slideNews">
            <div class="slider5">
                <div class="slide">
                <div class="item-media">
                    <div class="inner-item-media">
                    <!-- ^^ nội dung trong thẻ img alt và a title anh để ý giúp em cái dấu hai nháy "text here", anh  chuyển nó thành dấu “text here” giùm em, nếu không nó sẽ bị lỗi ^^-->
                    <div class="content-media"> <img class="img-media" alt="Sinh viên Khoa Cơ khí CĐN KT TB Y Tế Bình Dương tham gia chương trình truyền hình “Sáng tạo trẻ” 2015" src="http://ntt.edu.vn/news/data/images/news_image_1548.jpg" >
                        <h2 class="tt-it-news"><a title="Sinh viên Khoa Cơ khí CĐN KT TB Y Tế Bình Dương tham gia chương trình truyền hình “Sáng tạo trẻ” 2015">Sinh viên Khoa Cơ khí CĐN KT TB Y Tế Bình Dương tham gia chương trình truyền hình “Sáng tạo trẻ” 2015</a></h2>
                        Hưởng ứng phong trào sáng tạo, giới thiệu các sản phẩm khoa học công nghệ, sáng tạo và ứng dụng tin học của tuổi trẻ thành phố thiết ... </div>
                    </div>
                </div>
                </div>
                <!--end media-->
                <div class="slide">
                <div class="item-media">
                    <div class="inner-item-media">
                    <div class="content-media"> <img class="img-media" alt="Sinh viên Khoa Cơ khí CĐN KT TB Y Tế Bình Dương tham gia chương trình truyền hình “Sáng tạo trẻ” 2015" src="http://ntt.edu.vn/news/data/images/news_image_1548.jpg" >
                        <h2 class="tt-it-news"><a title="Lễ ký kết hợp đồng tài trợ phần mềm kế toán FAST">Lễ ký kết hợp đồng tài trợ phần mềm kế toán FAST</a></h2>
                        Hưởng ứng phong trào sáng tạo, giới thiệu các sản phẩm khoa học công nghệ, sáng tạo và ứng dụng tin học của tuổi trẻ thành phố thiết ... </div>
                    </div>
                </div>
                </div>
                <!--end media-->
                <div class="slide">
                <div class="item-media">
                    <div class="inner-item-media">
                    <div class="content-media"> <img class="img-media" alt="Sinh viên Khoa Cơ khí CĐN KT TB Y Tế Bình Dương tham gia chương trình truyền hình “Sáng tạo trẻ” 2015" src="http://ntt.edu.vn/news/data/images/news_image_1548.jpg" >
                        <h2 class="tt-it-news"><a title="Sinh viên Khoa Cơ khí CĐN KT TB Y Tế Bình Dương tham gia chương trình truyền hình “Sáng tạo trẻ” 2015">Sinh viên Khoa Cơ khí CĐN KT TB Y Tế Bình Dương tham gia chương trình truyền hình “Sáng tạo trẻ” 2015</a></h2>
                        Hưởng ứng phong trào sáng tạo, giới thiệu các sản phẩm khoa học công nghệ, sáng tạo và ứng dụng tin học của tuổi trẻ thành phố thiết ... </div>
                    </div>
                </div>
                </div>
                  
                <!--end media-->
                <div class="slide">
                <div class="item-media">
                    <div class="inner-item-media">
                    <div class="content-media"> <img class="img-media" alt="Sinh viên Khoa Cơ khí CĐN KT TB Y Tế Bình Dương tham gia chương trình truyền hình “Sáng tạo trẻ” 2015" src="http://ntt.edu.vn/news/data/images/news_image_1548.jpg" >
                        <h2 class="tt-it-news"><a title="Sinh viên Khoa Cơ khí CĐN KT TB Y Tế Bình Dương tham gia chương trình truyền hình “Sáng tạo trẻ” 2015">Sinh viên Khoa Cơ khí CĐN KT TB Y Tế Bình Dương tham gia chương trình truyền hình “Sáng tạo trẻ” 2015</a></h2>
                        Hưởng ứng phong trào sáng tạo, giới thiệu các sản phẩm khoa học công nghệ, sáng tạo và ứng dụng tin học của tuổi trẻ thành phố thiết ... </div>
                    </div>
                </div>
                </div>
            </div>
            </div>
        </div>
        </div>
    </div>
    </div>
</div>
</div>
</div>