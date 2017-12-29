<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#coupon_wrapper {
	
	width: 75%;
	/* display: block; */
}
#category {
	float: right;
	width:150px;		
}
</style>

<section class="parallax-window" data-parallax="scroll"
	data-image-src="img/sub_header_2.jpg" data-natural-width=100%
	data-natural-height="470">
	<div id="subheader">
		<div id="sub_content">
			<div id="thumb">
				<img src="img/thumb_restaurant.jpg" alt="">
			</div>
			<div class="rating">
				<i class="icon_star voted"></i><i class="icon_star voted"></i><i
					class="icon_star voted"></i><i class="icon_star voted"></i><i
					class="icon_star"></i> (<small><a href="detail_page_2.html">Read
						98 reviews</a></small>)
			</div>
			<h1>Mexican TacoMex</h1>
			<div>
				<em>Mexican / American</em>
			</div>
			<div>
				<i class="icon_pin"></i> 135 Newtownards Road, Belfast, BT4 1AB - <strong>Delivery
					charge:</strong> $10, free over $15.
			</div>
		</div>
		<!-- End sub_content -->
	</div>
	<!-- End subheader -->
</section>
<!-- End section -->
<!-- End SubHeader ============================================ -->

<div id="position">
	<div class="container">
		<ul>
			<li><a href="#0">Home</a></li>
			<li><a href="#0">Category</a></li>
			<li>Page active</li>
		</ul>
		<a href="#0" class="search-overlay-menu-btn"><i
			class="icon-search-6"></i> Search</a>
	</div>
</div>
<!-- Position -->

<!-- Content ================================================== -->
<div class="container margin_60_35">
	<div class="row">

		<!-- <div class="col-md-3">
            	<p><a href="list_page.html" class="btn_side">Back to search</a></p>
				<div class="box_style_1">
					<ul id="cat_nav">
						<li><a href="#starters" class="active">Starters <span>(141)</span></a></li>
						<li><a href="#main_courses">Main Courses <span>(20)</span></a></li>
						<li><a href="#beef">Beef <span>(12)</span></a></li>
						<li><a href="#desserts">Desserts <span>(11)</span></a></li>
						<li><a href="#drinks">Drinks <span>(20)</span></a></li>
					</ul>
				</div>End box_style_1
                
				<div class="box_style_2 hidden-xs" id="help">
					<i class="icon_lifesaver"></i>
					<h4>Need <span>Help?</span></h4>
					<a href="tel://004542344599" class="phone">+45 423 445 99</a>
					<small>Monday to Friday 9.00am - 7.30pm</small>
				</div>
			</div>End col-md-3 -->
		<div class="widget" id="category">
			<h4>Categories</h4>
			<ul id="cat_nav_blog">
				<li><a href="seller_main.ej">Seller Main</a></li>
				<li><a href="coupon_add.ej">Add Coupon</a></li>

			</ul>
		</div>

		<div class="col-md-12" id="coupon_wrapper">
			<div class="box_style_2" id="main_menu">
				<h2 class="inner">Coupons</h2>
				<h3 class="nomargin_top" id="starters">Discount Coupon</h3>
				<p>Te ferri iisque aliquando pro, posse nonumes efficiantur in
					cum. Sensibus reprimique eu pro. Fuisset mentitum deleniti sit ea.
				</p>
				<table class="table table-striped cart-list">
					<thead>
						<tr>
							<th>Coupon Name</th>
							<th>Discount</th>
							<th>Released</th>
							<th>Start</th>
							<th>End</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="mc" items="${myCoupon}">
							<tr>
								<td>
									<figure class="thumb_menu_list">
										<img src="img/menu-thumb-1.jpg" alt="thumb">
									</figure> <!-- Coupon Name -->
									<h5>${mc.c_nm }</h5>
									<p>Fuisset mentitum deleniti sit ea.</p>
								</td>
								<!-- Discount -->
								<td><strong>${mc.c_dc }</strong></td>
								<!-- Released -->
								<td><strong>${mc.c_date }</strong></td>
								<!-- Start -->
								<td><strong>${mc.c_start }</strong></td>
								<!-- End -->
								<th><strong>${mc.c_end }</strong></th>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<hr>
				<h3 id="main_courses">Gift Coupon</h3>
				<p>Te ferri iisque aliquando pro, posse nonumes efficiantur in
					cum. Sensibus reprimique eu pro. Fuisset mentitum deleniti sit ea.
				</p>
				<table class="table table-striped cart-list">
					<thead>
						<tr>
							<th>Coupon Name</th>
							<th>Gift</th>
							<th>Released</th>
							<th>Start</th>
							<th>End</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="mc" items="${myCoupon}">
							<tr>
								<td>
									<figure class="thumb_menu_list">
										<img src="img/menu-thumb-1.jpg" alt="thumb">
									</figure> <!-- Coupon Name -->
									<h5>${mc.c_nm }</h5>
									<p>Fuisset mentitum deleniti sit ea.</p>
								</td>
								<!-- Gift -->
								<td><strong>${mc.c_gift }</strong></td>
								<!-- Released -->
								<td><strong>${mc.c_date }</strong></td>
								<!-- Start -->
								<td><strong>${mc.c_start }</strong></td>
								<!-- End -->
								<th><strong>${mc.c_end }</strong></th>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
<!-- 20171221_JS Add -->
<!-- SPECIFIC SCRIPTS -->
<script  src="js/cat_nav_mobile.js"></script>
<script>$('#cat_nav').mobileMenu();</script>
<script src="js/theia-sticky-sidebar.js"></script>
<script>
    jQuery('#sidebar').theiaStickySidebar({
      additionalMarginTop: 80
    });
</script>
<script>
$('#cat_nav a[href^="#"]').on('click', function (e) {
			e.preventDefault();
			var target = this.hash;
			var $target = $(target);
			$('html, body').stop().animate({
				'scrollTop': $target.offset().top - 70
			}, 900, 'swing', function () {
				window.location.hash = target;
			});
		});
</script>		