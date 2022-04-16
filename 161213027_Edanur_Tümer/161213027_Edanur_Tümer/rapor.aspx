<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rapor.aspx.cs" Inherits="_161213027_Edanur_Tümer.rapor1" %>

<!--
	Author: W3layouts
	Author URL: http://w3layouts.com
	License: Creative Commons Attribution 3.0 Unported
	License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>City Bicycle simple product ad Category Bootstrap responsive WebTemplate | Home :: w3layouts</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="City Bicycle a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/owl.theme.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link href="css/fontawesome-all.css" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,900" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
    <style type="text/css">
        .auto-style1 {
            color: #333333;
        }
    </style>
</head>

<body>
	<!--/banner-->
    <form id="form2" runat="server">
	<section class="banner-bottom" id="features">
		<div class="feature-main container-fluid">
			<div class="row">
				<div class="col-lg-4 feature text-left" data-aos="fade-right">
					<h3>Rapor</h3>
					<p class="auto-style1">Yıllık,Günlük ve Aylık Raporlar </p>
                    <p class="auto-style1">&nbsp;</p>
                    <p class="auto-style1">&nbsp;</p>
                    <p class="auto-style1">&nbsp;</p>
					<div class="read inner mt-4">
						
                               <asp:Button ID="Button1" runat="server" Text="Günlük Raporları Gör" OnClick="Button1_Click" Width="367px" />
                        <asp:Button ID="Button2" runat="server" Text="Aylık Raporları Gör" OnClick="Button2_Click" Width="367px" />
                        <asp:Button ID="Button3" runat="server" Text="Yıllık Raporları Gör" OnClick="Button3_Click" Width="367px" />
					</div>
				</div>
				<div class="col-lg-8 feature fea-slider text-right">
					<section class="slider">
						<div class="flexslider">
							<ul class="slides">
								<li>
									<img src="images/b1.jpg" class="img-fluid" alt="">
								</li>
								<li>
									<img src="images/b2.jpg" class="img-fluid" alt="">
								</li>
								<li>
									<img src="images/b3.jpg" class="img-fluid" alt="">
								</li>
								<li>
									<img src="images/b4.jpg" class="img-fluid" alt="">
								</li>
							</ul>
						</div>
					</section>

				    <asp:GridView ID="GridView1" runat="server" Width="594px">
                    </asp:GridView>

				</div>

			</div>
		</div>
	</section>
		<!-- header -->
	
	<!---->

	<!-- js -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- //js -->
	<!--slider-->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		$(function () {

			// Slideshow 1
			$("#slider1").responsiveSlides({
				auto: false,
				pager: false,
				nav: true,
				speed: 500,
				namespace: "centered-btns"
			});


		});
	</script>
	<!--//slider-->
	<!--search-bar-->
	<!--pop-up-box-->
	<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<script src="js/jquery.magnific-popup.js"></script>
	<!--//pop-up-box-->
	<script>
		$(document).ready(function () {
			$('.popup-with-zoom-anim').magnificPopup({
				type: 'inline',
				fixedContentPos: false,
				fixedBgPos: true,
				overflowY: 'auto',
				closeBtnInside: true,
				preloader: false,
				midClick: true,
				removalDelay: 300,
				mainClass: 'my-mfp-zoom-in'
			});

		});
	</script>
	<!--//search-bar-->
	<!-- flexSlider -->
	<script defer src="js/jquery.flexslider.js"></script>
	<script>
		// Can also be used with $(document).ready()
		$(window).load(function () {
			$('.flexslider').flexslider({
				animation: "slide"
			});
		});
	</script>
	<!-- //flexSlider -->
	<!-- carousel -->
	<script src="js/owl.carousel.js"></script>
	<script>
		$(document).ready(function () {
			$('.owl-carousel').owlCarousel({
				loop: true,
				margin: 10,
				responsiveClass: true,
				responsive: {
					0: {
						items: 1,
						nav: true
					},
					600: {
						items: 1,
						nav: false
					},
					900: {
						items: 1,
						nav: false
					},
					1000: {
						items: 1,
						nav: true,
						loop: false,
						margin: 20
					}
				}
			})
		})
	</script>
	<!-- //carousel -->
	<!--gallery -->
	<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen">
	<script src="js/jquery.chocolat.js"></script>
	<script>
		$(function () {
			$('.gallery-grid1 a').Chocolat();
		});
	</script>
	<!-- //gallery -->
		<!-- /js files -->
		<link href='css/aos.css' rel='stylesheet prefetch' type="text/css" media="all" />
		<link href='css/aos-animation.css' rel='stylesheet prefetch' type="text/css" media="all" />
		<script src='js/aos.js'></script>
		<script src="js/aosindex.js"></script>
		<!-- //js files -->
	
	<!--/ start-smoth-scrolling -->
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 900);
			});
		});
	</script>
	<!--// end-smoth-scrolling -->

	<script>
		$(document).ready(function () {
			/*
									var defaults = {
							  			containerID: 'toTop', // fading element id
										containerHoverID: 'toTopHover', // fading element hover id
										scrollSpeed: 1200,
										easingType: 'linear' 
							 		};
									*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>

	<!-- //Custom-JavaScript-File-Links -->
	<script src="js/bootstrap.js"></script>

 </form>
</body>

</html>
</html>
