<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
@import url('https://fonts.googleapis.com/css?family=Dancing+Script');
@import url('https://fonts.googleapis.com/css?family=Questrial');
/*�ѱ���Ʈ*/
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

body{
background-color: white;
}

#btn_1{
width:150px;
margin-top: 20px;
font-family: 'Questrial', sans-serif;
letter-spacing: 1px;
}
#sort_rating{
font-family: 'Questrial', sans-serif;
}
h1{
font-family: 'Dancing Script', cursive;
}
i{
font-family: 'Dancing Script', cursive;
}
h3{
 font-family: 'Jeju Gothic', sans-serif; 
}
#locat{
 font-family: 'Jeju Gothic', sans-serif; 
 margin-top:5px;
}
#rat{
margin-top:12px;
}
#view{
font-family: 'Questrial', sans-serif;
}
#filters_col_bt{
font-family: 'Questrial', sans-serif;
}
#pngs{
margin-left:30px;
}
</style>
<!-- SubHeader =============================================== -->
<section class="parallax-window" id="short" data-parallax="scroll" data-image-src="img/store_list.gif" data-natural-width="1400" data-natural-height="600">

    <div id="subheader">
	<div id="sub_content">
    	<h1>Store List</h1>
        <!-- <div><i class="icon_pin"></i> 135 Newtownards Road, Belfast, BT4 1AB</div> -->
    </div>
</div> 
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
             <a href="#0" class="search-overlay-menu-btn"><i class="icon-search-6"></i> Search</a>
        </div>
    </div><!-- Position -->
    
    <div class="collapse" id="collapseMap">
		<div id="map" class="map"></div>
	</div><!-- End Map -->

<!-- Content ================================================== -->
<div class="container margin_60_35">
	<div class="row">
    
		<div class="col-md-3">
			<p>
			<div id=pngs>
				<img src=img/pizza.png width=60>
				   <img src=img/chicken.png width=60>
				   <img src=img/china.png width=60>
				</div>
			</p>
			<div id="filters_col">
				<a data-toggle="collapse" href="#collapseFilters" aria-expanded="false" aria-controls="collapseFilters" id="filters_col_bt">Filters <i class="icon-plus-1 pull-right"></i></a>
				<div class="collapse" id="collapseFilters">
					<div class="filter_type">
                    	<h6>Distance</h6>
                        <input type="text" id="range" value="" name="range">
						<h6>Type</h6>
						<ul>
							<li><label><input type="checkbox" checked class="icheck">All <small>(49)</small></label></li>
							<li><label><input type="checkbox" class="icheck">Chicken <small>(12)</small></label><i class="color_1"></i></li>
							<li><label><input type="checkbox" class="icheck">Chinese <small>(5)</small></label><i class="color_2"></i></li>
							<li><label><input type="checkbox" class="icheck">Pizza <small>(7)</small></label><i class="color_3"></i></li>
							<!-- <li><label><input type="checkbox" class="icheck">Fish <small>(1)</small></label><i class="color_4"></i></li>
							<li><label><input type="checkbox" class="icheck">Mexican <small>(49)</small></label><i class="color_5"></i></li>
							<li><label><input type="checkbox" class="icheck">Pizza <small>(22)</small></label><i class="color_6"></i></li>
							<li><label><input type="checkbox" class="icheck">Sushi <small>(43)</small></label><i class="color_7"></i></li> -->
						</ul>
					</div>
					<div class="filter_type">
						<h6>Rating</h6>
						<ul>
							<li><label><input type="checkbox" class="icheck"><span class="rating">
							<i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i>
							</span></label></li>
							<li><label><input type="checkbox" class="icheck"><span class="rating">
							<i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
							</span></label></li>
							<li><label><input type="checkbox" class="icheck"><span class="rating">
							<i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i><i class="icon_star"></i>
							</span></label></li>
							<li><label><input type="checkbox" class="icheck"><span class="rating">
							<i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i><i class="icon_star"></i><i class="icon_star"></i>
							</span></label></li>
							<li><label><input type="checkbox" class="icheck"><span class="rating">
							<i class="icon_star voted"></i><i class="icon_star"></i><i class="icon_star"></i><i class="icon_star"></i><i class="icon_star"></i>
							</span></label></li>
						</ul>
					</div>
					<div class="filter_type">
						<h6>Options</h6>
						<ul class="nomargin">
							<li><label><input type="checkbox" class="icheck">Delivery</label></li>
							<li><label><input type="checkbox" class="icheck">Take Away</label></li>
							<li><label><input type="checkbox" class="icheck">Distance 10Km</label></li>
							<li><label><input type="checkbox" class="icheck">Distance 5Km</label></li>
						</ul>
					</div>
				</div><!--End collapse -->
			</div><!--End filters col-->
		</div><!--End col-md -->
        
		<div class="col-md-9">
        
        <div id="tools">
				<div class="row">
					<div class="col-md-3 col-sm-3 col-xs-6">
						<div class="styled-select">
							<select name="sort_rating" id="sort_rating">
								<option value="" selected>Sort by ranking</option>
								<option value="lower">Lowest ranking</option>
								<option value="higher">Highest ranking</option>
							</select>
						</div>
					</div>
					<div class="col-md-9 col-sm-9 hidden-xs">
						<a href="store_grid.ej?st_type=${stType }&st_addr=${stAddr }" class="bt_filters"><i class="icon-th"></i></a>
<%-- 						<a href="store_grid.ej?stType=${stType }&stAddr=${stAddr}" class="bt_filters"><i class="icon-th"></i></a> --%>
					</div>
				</div>
			</div><!--End tools -->
<c:forEach var="st" items="${stList }">
			<div class="strip_list wow fadeIn" data-wow-delay="0.1s">
				<div class="ribbon_1">
					Popular
				</div>
				<div class="row">
					<div class="col-md-9 col-sm-9">
						<div class="desc">
							<div class="thumb_strip">
							<%-- 20180101jsw<img src="img/${st.st_img }" alt=""> --%>
								<a href="store_menu.ej?st_key=${st.st_key }&st_type=${stType }&st_addr=${stAddr }"><img src="img/${st.st_img }" alt=""></a>
							</div>
							<div class="rating">
								<i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i> (<small><a href="#0">98 reviews</a></small>)
							</div>
							<div id="rat">
							<h3>${st.st_nm }</h3> </div>
<!--
 							<div class="type">
								Mexican / American
							</div>
 -->							
							<div class="location" id="locat">
								${st.st_addr } <span class="opening">open - close ${st.st_time }</span><!--  Minimum order: $15 -->
							</div>
							<ul>
							
								<li>Delivery<i class="icon_check_alt2 no"></i></li>
							</ul>
						</div>
					</div>
					<div class="col-md-2 col-sm-2">
						<div class="go_to" id="go_to">
								
								<a href="store_menu.ej?st_key=${st.st_key }&st_type=${stType }&st_addr=${stAddr }" class="btn_1" id="btn_1">View Menu</a>
					
								<a href="store_detail.ej?st_key=${st.st_key }" class="btn_1" id="btn_1">Store detail</a>
						</div>
					</div>
				</div><!-- End row-->
			</div><!-- End strip_list-->
</c:forEach>
            <a href="#0" class="load_more_bt wow fadeIn" data-wow-delay="0.2s">Load more...</a>  
		</div><!-- End col-md-9-->
	</div><!-- End row -->
</div><!-- End container -->
<!-- End Content =============================================== -->
<!-- 20171214_JS store_grid.jsp, store_list.jsp, store_map.jsp add -->
<!-- SPECIFIC SCRIPTS -->
<!-- <script  src="js/cat_nav_mobile.js"></script>
<script>$('#cat_nav').mobileMenu();</script>
<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCO-5elUHG0jQxmqfoZ37TqGOu73yjouzE"></script>
<script src="js/map.js"></script>
<script src="js/infobox.js"></script>
<script src="js/ion.rangeSlider.js"></script>
<script>
    $(function () {
		 'use strict';
        $("#range").ionRangeSlider({
            hide_min_max: true,
            keyboard: true,
            min: 0,
            max: 15,
            from: 0,
            to:5,
            type: 'double',
            step: 1,
            prefix: "Km ",
            grid: true
        });
    });
</script> -->