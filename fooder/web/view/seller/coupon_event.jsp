<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
@import url('https://fonts.googleapis.com/css?family=Dancing+Script');
@import url('https://fonts.googleapis.com/css?family=Questrial');
body{
background-color: white;
}
#wrapper {
	height: auto;
}
strong {
	color:  #996666;
	font-family: 'Questrial', sans-serif;
}
#gift2{
 font-family: 'Jeju Gothic', sans-serif; 
}
#get_button{
	margin-top:1em;
    color: #fff;
	background-color: #85c99d;
	width: 100px;
	height: 30px;
    border: none;
    border-radius: 3px;
    font-weight: 600;	    
}
#st_nm{
 font-family: 'Jeju Gothic', sans-serif; 
}
h1{
font-family: 'Dancing Script', cursive;
}
#get_button{
font-family: 'Questrial', sans-serif;
letter-spacing: 2px;
}
#get_button:hover{
background-color: #668099;
}
#locat{
font-family: 'Questrial', sans-serif;
font-weight: bold;
}


</style>



<section class="parallax-window" id="short" data-parallax="scroll"
	data-image-src="img/coupon_event.gif" data-natural-width="900"
	data-natural-height="450">
	<div id="subheader">
		<div id="sub_content">
			<h1>Coupon Event</h1>
		
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
								<!-- 별점 -->
								<!-- <div class="rating">
								<i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
							</div>
							 -->
								<h3 id="st_nm">${c.st_nm }</h3>
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
									<h3 class="black">
										<strong>Discount<br>&#8361;${c.c_dc }</strong>
									</h3>
									<h3 class="red" id="gift2">
										<strong>Gift<br> ${c.c_gift }</strong>
									</h3>
								</div>
								<div class="location" id="locat">
									Released ${c.c_date }<br> <span class="opening">Start${c.c_start }</span>
									<span class="opening">End${c.c_end }</span>
								</div>
								<!-- <ul>
								<li>Take away<i class="icon_check_alt2 ok"></i></li>
								<li>Delivery<i class="icon_check_alt2 ok"></i></li>
							</ul> -->
								
								<!-- 1223 ksy -->
								<!-- <div class="btn_1"> -->
								<div>
									<%-- <a href="cu_insert.ej?c=${c}">get</a> --%>
									<input type="submit" id="get_button"value="Get">									
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