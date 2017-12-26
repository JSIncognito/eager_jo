<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#wrapper {
	height: auto;
}

strong {
	color: #C33;
}
</style>



<section class="parallax-window" id="short" data-parallax="scroll"
	data-image-src="img/sub_header_short.jpg" data-natural-width="1400"
	data-natural-height="350">
	<div id="subheader">
		<div id="sub_content">
			<h1>24 results in your zone</h1>
			<div>
				<i class="icon_pin"></i> 135 Newtownards Road, Belfast, BT4 1AB
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

<div class="collapse" id="collapseMap">
	<div id="map" class="map"></div>
</div>
<!-- End Map -->

<!-- Content ================================================== -->
<div class="container margin_60_35" id="wrapper">
	<div class="row">


		<div class="col-md-9">

			<div id="tools">
				<div class="row">
					<!-- <div class="col-md-9 col-sm-9 hidden-xs">
						<a href="list_page.html" class="bt_filters"><i class="icon-list"></i></a>
					</div> -->
				</div>
			</div>
			<!--End tools -->
			<h1>na ya na ${loginuser.u_id }</h1>
			<h1>na ya na ${loginuser.u_nm }</h1>

			<div class="row">

				<c:forEach var="c" items="${cArea}">
				<form action="cu_insert.ej" method="post">
					<div class="col-md-6 col-sm-6 wow zoomIn" data-wow-delay="0.1s">
						<a class="strip_list grid" href="#">
							<div class="ribbon_1">Popular</div>
							<div class="desc">
								<div class="thumb_strip">
									<img src="img/thumb_restaurant.jpg" alt="">
								</div>
								<!-- ë³ì  -->
								<!-- <div class="rating">
								<i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
							</div>
							 -->
								<h3>${c.st_nm }</h3>
								<%--<input type="hidden" value="${c.cu_key }" name="cu_key"> --%>
								<input type="hidden" value="${c.c_key }" name="c_key">
								<%-- <input type="hidden" value="${c.cu_used }" name="cu_used"> --%>
								<%-- <input type="hidden" value="${c.cu_date }" name="cu_date"> --%>
								<input type="hidden" value="${c.c_gift }" name="c_gift">
								<input type="hidden" value="${c.c_dc }" name="c_dc">
								<input type="hidden" value="${c.c_nm }" name="c_nm">
								<input type="hidden" value="${c.c_start }" name="c_start">
								<input type="hidden" value="${c.c_end }" name="c_end">
								<input type="hidden" value="${c.c_code }" name="c_code">
								<input type="hidden" value="${c.st_nm }" name="st_nm">
								<input type="hidden" value="${loginuser.u_id }" name="u_id">
								<input type="hidden" value="0" name="cu_used">
								
								<div class="type">
									<h3 class="red">
										<strong>Discount ${c.c_dc }</strong>
									</h3>
									<h3 class="red">
										<strong>Gift ${c.c_gift }</strong>
									</h3>
								</div>
								<div class="location">
									Released ${c.c_date }<br> <span class="opening">Start${c.c_start }</span>
									<span class="opening">End${c.c_end }</span>
								</div>
								<!-- <ul>
								<li>Take away<i class="icon_check_alt2 ok"></i></li>
								<li>Delivery<i class="icon_check_alt2 ok"></i></li>
							</ul> -->
								
								<!-- 1223 ksy -->
								<div class="btn_1">
									<%-- <a href="cu_insert.ej?c=${c}">get</a> --%>
									<input type="submit" value="get">									
								</div>

							</div>
						</a>
						<!-- End strip_list-->
					</div>
					<!-- End col-md-6-->
					</form>
				</c:forEach>



			</div>
			<!-- End col-md-9-->
			<!-- <a href="#0" class="load_more_bt wow fadeIn" data-wow-delay="0.2s">Load more...</a> -->
		</div>
		<!-- End row -->
	</div>
	<!-- End container -->
</div>