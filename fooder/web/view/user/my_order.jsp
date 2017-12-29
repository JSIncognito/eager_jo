<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#category {
	
	width:150px;		
	float:right;
	 
	 
}
#order_history{
	width:855px;
	height:auto;
	display:inline-block;

}


</style>



<section class="parallax-window" data-parallax="scroll"
	data-image-src="img/sub_header_2.jpg" data-natural-width="1400"
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

<div class="widget" id="category">
		<h4>Categories</h4>
		<ul id="cat_nav_blog">
			<li><a href="user_mypage.ej">Update my profile</a></li>
			<li><a href="order_history.ej">My order history</a></li>

		</ul>
	</div>	

<div class="container margin_60_35">
			<!-- 1214 ksy -->



		<div class="col-md-9" id="order_history">
			<div class="box_style_2" id="main_menu">
				<h2 class="inner">My order histrory</h2>

				<p>Te ferri iisque aliquando pro, posse nonumes efficiantur in
					cum. Sensibus reprimique eu pro. Fuisset mentitum deleniti sit ea.</p>
				<table class="table table-striped cart-list">
					<tr>
						<th>Order Date</th>
						<th>Store Name</th>
						<th>Cost</th>
						<th>Address</th>

					</tr>
					<c:forEach var="o" items="${myOrder}">
						<tr>
							<td>${o.o_date }</td>
							<td>${o.st_nm }</td>
							<td>${o.o_total }</td>
							<td>${o.o_addr }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>



	<!-- End container -->