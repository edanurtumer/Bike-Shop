<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kategori.aspx.cs" Inherits="_161213027_Edanur_Tümer.Kategori" %>

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
</head>

<body>
    <form id="form1" runat="server">

	<!--//gallery-->
	<!--/process-->
	<section class="banner-bottom" id="process">
		<div class="container">
			<h3 class="tittle">Kategori Tablosu</h3>
			<div class="row inner-sec">
				<div class="tabs">
					<ul class="nav nav-pills my-4" id="pills-tab" role="tablist">
						<li class="nav-item">
							<a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home"
							    aria-selected="true">EKLEME, SİLME, GÜNCELLEME VE ARAMA</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</li>
						

					</ul>
					<div class="tab-content" id="pills-tabContent">
						<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
							<div class="menu-grids mt-4">
								<div class="row t-in">
									<div class="col-lg-7 text-info-sec">
										<div class="service-in text-left">
											<div class="card" >
												<div class="card-body">
													<h5 class="card-title">EKLEME</h5>
													<p class="card-text">
                                                        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" ToolTip="Kategori Adı" value="Kategori Adı" onfocus="this.value='';" onblur="if(this.value==''){this.value='Kategori Adı'}" ></asp:TextBox>
													</p>
                                                    <p class="card-text">
                                                        <asp:Button ID="Button1" runat="server" Text="EKLEME" OnClick="Button1_Click"  />
													</p>

												</div>
											</div>
											<div class="card my-4">
												<div class="card-body">
													<h5 class="card-title">SİLME</h5>
													<p class="card-text">
                                                        <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox1_TextChanged" value="Kategori ID" onfocus="this.value='';" onblur="if(this.value==''){this.value='Kategori ID'}" ></asp:TextBox>
													</p>
                                                    <p class="card-text">
                                                        <asp:Button ID="Button2" runat="server"  Text="SİLME" OnClick="Button2_Click" />
													</p>

												</div>
											</div>
											<div class="card">
												<div class="card-body">
													<h5>GÜNCELLEME</h5>
													<p class="card-text">
                                                        <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox1_TextChanged" value="Kategori ID" onfocus="this.value='';" onblur="if(this.value==''){this.value='Kategori ID'}"></asp:TextBox>
													</p>
                                                    <p class="card-text">
                                                        <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox1_TextChanged" value="Kategori Adı" onfocus="this.value='';" onblur="if(this.value==''){this.value='Kategori Adı'}" ></asp:TextBox>
													</p>
                                                    <p class="card-text">&nbsp;<asp:Button ID="Button3" runat="server" Text="GÜNCELLEME" OnClick="Button3_Click" />
													</p>

												</div>
											</div>
											<div class="card">
												<div class="card-body">
													<h5 class="card-title">ARAMA</h5>
													<p class="card-text">
                                                        <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox1_TextChanged" value="Kategori Adı" onfocus="this.value='';" onblur="if(this.value==''){this.value='Kategori Adı'}" ></asp:TextBox>
													</p>
                                                    <p class="card-text">
                                                        <asp:Button ID="Button4" runat="server"  Text="ARAMA" OnClick="Button4_Click" />
													</p>
                                                    <p class="card-text">
                                                        <asp:GridView ID="GridView1" runat="server" Width="911px">
                                                        </asp:GridView>
													</p>

												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-5 text-info-sec mt-4" data-aos="flip-left">
										<img src="images/g4.jpg" alt=" " class="img-fluid" />
									</div>

								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--//preocess-->


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
