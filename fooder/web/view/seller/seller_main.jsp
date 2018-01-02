<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
#ccc{
width:1100px;
}
#tools{
width:1100px;
}
h3{
 font-family: 'Jeju Gothic', sans-serif; 
}
body{
background-color: white;
}
a{
letter-spacing: 0;
}

</style>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script>
// 20180101 hb choi
$(document).ready(function() {
	$.ajax({
		url: 'get_chart_data.ej', 
		data: {'data': '碍巢备'}, 
		success: function(data) {
			console.log(data);
			display_weather(data[0]);
			display_count(data[1]);
		}, 
		error:function(request,status,error){
		    console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
	
	function display_weather(data) {
		Highcharts.chart('weather', {
		    chart: {
		        type: 'line'
		    },
		    title: {
		        text: '1林老 朝揪'
		    },
		    xAxis: {
		        categories: ['6老傈','5老傈','4老傈','3老傈','2老傈','1老傈','寸老']
		    },
		    yAxis: {
		        title: {
		            text: ''
		        }
		    },
		    plotOptions: {
		        line: {
		            dataLabels: {
		                enabled: true
		            },
		            enableMouseTracking: false
		        }
		    },
		    series: data
		});
	}
	
	function display_count(data) {
		Highcharts.chart('count', {
		    chart: {
		        type: 'column'
		    },
		    title: {
		        text: '1林老 林巩樊'
		    },
		    xAxis: {
		        categories: ['6老傈','5老傈','4老傈','3老傈','2老傈','1老傈','寸老'],
		        crosshair: true
		    },
		    yAxis: {
		        min: 0,
		        title: {
		            text: '林巩樊'
		        }
		    },
		    tooltip: {
		        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
		        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
		            '<td style="padding:0"><b>{point.y:.1f}</b></td></tr>',
		        footerFormat: '</table>',
		        shared: true,
		        useHTML: true
		    },
		    plotOptions: {
		        column: {
		            pointPadding: 0.2,
		            borderWidth: 0
		        }
		    },
		    series: data
		})
	}
});


</script>
<style>
@import url('https://fonts.googleapis.com/css?family=Dancing+Script');
@import url('https://fonts.googleapis.com/css?family=Questrial');

#sort_rating{
font-family: 'Questrial', sans-serif;
}

#weather {
	position: absolute;
margin-top: 12px;
}
#count {
	position: relative;
	background-color: white;
}
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides1 {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container1 {
  max-width: 1000px;
  position: relative;
  margin: auto;
}
.slideshow-container2 {
  max-width: 1000px;
  position: relative;
  margin: auto;
}


/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}


ul{
	list-style: none;
}

.btn_1{
width:200px;
text-align: center;
margin-top:10px;
}
li{
font-family: 'Questrial', sans-serif;
letter-spacing: 2px;
}
#view_menu{
	margin-top:10px;
	margin-bottom: 10px;
		
}

#col-md-9{
margin-top:130px;
margin-left:70px;
}


/*ddfd*/
/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
h1{
font-family: 'Dancing Script', cursive;
}
#term{
margin-top: 100px;
}
</style>


<section class="parallax-window" id="short" data-parallax="scroll"
	data-image-src="img/seller_main.gif" data-natural-width="1000"
	data-natural-height="400">
	<div id="subheader">
		<div id="sub_content">
			<h1>Seller Main Page</h1>
			<p></p>
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
	</div>
</div>
<!-- Position -->

<!-- Content ================================================== -->
<div class="container margin_60_35">
	<div class="row">
	
	
	
<!-- <div class="slideshow-container1"> -->

<!-- <div class="mySlides fade1"> -->
<!--   <div class="numbertext">1 / 3</div> -->
<!--   <img src="img/blog-1.jpg" style="width:1400"> -->
<!--   <div class="text">Caption Text</div> -->
<!-- </div> -->

<!-- <div class="mySlides fade1"> -->
<!--   <div class="numbertext">2 / 3</div> -->
<!--   <img src="img/blog-2.jpg" style="width:1400"> -->
<!--   <div class="text">Caption Two</div> -->
<!-- </div> -->

<!-- <div class="mySlides fade1"> -->
<!--   <div class="numbertext">3 / 3</div> -->
<!--   <img src="img/blog-3.jpg" style="width:1400"> -->
<!--   <div class="text">Caption Three</div> -->
<!-- </div> -->

<!-- <a class="prev" onclick="plusSlides(-1, 0)">&#10094;</a> -->
<!-- <a class="next" onclick="plusSlides(1, 0)">&#10095;</a> -->

<!-- </div> -->
<div class="row" id="charts">
		<div class="col-md-6 col-sm-6">
			<div class="form-group">
				<div id="weather"></div><!-- min-width: 310px; height: 400px; -->
			</div>
		</div>
		<div class="col-md-6 col-sm-6">
			<div class="form-group">
				<div id="count"></div>
			</div>
		</div>
</div>
<br>

<!-- <div style="text-align:center">
  <span class="dot" onclick="currentSlide(1,0)"></span> 
  <span class="dot" onclick="currentSlide(2,0)"></span> 
  <span class="dot" onclick="currentSlide(3,0)"></span> 
</div>
 -->



<!-- <div id=term></div>

<div class="slideshow-container2" >

<div class="mySlides fade2">
  <div class="numbertext">1 / 3</div>
  <img src="img/blog-1.jpg" style="width:1400">
  <div class="text">Caption Text</div>
</div>

<div class="mySlides fade2">
  <div class="numbertext">2 / 3</div>
  <img src="img/blog-2.jpg" style="width:1400">
  <div class="text">Caption Two</div>
</div>

<div class="mySlides fade2">
  <div class="numbertext">3 / 3</div>
  <img src="img/blog-3.jpg" style="width:1400">
  <div class="text">Caption Three</div>
</div>

<a class="prev" onclick="plusSlides(-1, 1)">&#10094;</a>
<a class="next" onclick="plusSlides(1, 1)">&#10095;</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1,1)"></span> 
  <span class="dot" onclick="currentSlide(2,1)"></span> 
  <span class="dot" onclick="currentSlide(3,1)"></span> 
</div> -->

<script>
/* var slideIndex = 1;
showSlides(slideIndex, 0);
showSlides(slideIndex, 1);

function plusSlides(n, p) {
  showSlides(slideIndex += n, p);
}

function currentSlide(n,p) {
  showSlides(slideIndex = n, p);
}

function showSlides(n, p) {
  var i;
  var slides = new Array();
  var dots = document.getElementsByClassName("dot");
  if(p==0) {
	  slides[0] = document.getElementsByClassName("mySlides")[0];
	  slides[1] = document.getElementsByClassName("mySlides")[1];
	  slides[2] = document.getElementsByClassName("mySlides")[2];
	  if (n > slides.length) {slideIndex = 1}    
	  if (n < 1) {slideIndex = slides.length}
	  for (i = 0; i < slides.length; i++) {
	      slides[i].style.display = "none";  
	  }
	  for (i = 0; i < 3; i++) {
	      dots[i].className = dots[i].className.replace(" active", "");
	  }
	  slides[slideIndex-1].style.display = "block";
  } else if(p==1) { 
	  slides[0] = document.getElementsByClassName("mySlides")[3];
	  slides[1] = document.getElementsByClassName("mySlides")[4];
	  slides[2] = document.getElementsByClassName("mySlides")[5];
	  if (n > slides.length) {slideIndex = 1}    
	  if (n < 1) {slideIndex = slides.length}
	  for (i = 0; i < slides.length; i++) {
	      slides[i].style.display = "none";  
	  }
	  for (i = 3; i < 6; i++) {
	      dots[i].className = dots[i].className.replace(" active", "");
	  }
	  slides[slideIndex-1].style.display = "block";
  } */
  /* 
  
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  } */
    
 /*  dots[slideIndex-1].className += " active"; */
// }
</script>





<!-- 		<div class="col-md-12">
			<div class="post">
				<a href="blog_post.html"><img src="img/blog-1.jpg" alt=""
					class="img-responsive"></a>
				<div class="post_info clearfix">
					<div class="post-left">
						<ul>
							<li><i class="icon-calendar-empty"></i>12/05/2015 <em>by
									Mark</em></li>
							<li><i class="icon-inbox-alt"></i><a href="#">Category</a></li>
							<li><i class="icon-tags"></i><a href="#">Works</a>, <a
								href="#">Personal</a></li>
						</ul>
					</div>
					<div class="post-right">
						<i class="icon-comment"></i><a href="#">25 </a>
					</div>
				</div>
				<h2>Duis aute irure dolor in reprehenderit</h2>
				<p>Ludus albucius adversarium eam eu. Sit eu reque tation
					aliquip. Quo no dolorum albucius lucilius, hinc eligendi ut sed. Ex
					nam quot ferri suscipit, mea ne legere alterum repudiandae. Ei pri
					quaerendum intellegebat, ut vel consequuntur voluptatibus. Et
					volumus sententiae adversarium duo......</p>
				<p>Ludus albucius adversarium eam eu. Sit eu reque tation
					aliquip. Quo no dolorum albucius lucilius, hinc eligendi ut sed. Ex
					nam quot ferri suscipit, mea ne legere alterum repudiandae. Ei pri
					quaerendum intellegebat, ut vel consequuntur voluptatibus. Et
					volumus sententiae adversarium duo......</p>
				<a href="blog_post.html" class="btn_1">Read more</a>
			</div>


			<div class="post">
				<a href="blog_post.html"><img src="img/blog-2.jpg" alt=""
					class="img-responsive"></a>
				<div class="post_info clearfix">
					<div class="post-left">
						<ul>
							<li><i class="icon-calendar-empty"></i>12/05/2015 <em>by
									Mark</em></li>
							<li><i class="icon-inbox-alt"></i><a href="#">Category</a></li>
							<li><i class="icon-tags"></i><a href="#">Works</a>, <a
								href="#">Personal</a></li>
						</ul>
					</div>
					<div class="post-right">
						<i class="icon-comment"></i><a href="#">25 </a>
					</div>
				</div>
				<h2>Duis aute irure dolor in reprehenderit</h2>
				<p>Ludus albucius adversarium eam eu. Sit eu reque tation
					aliquip. Quo no dolorum albucius lucilius, hinc eligendi ut sed. Ex
					nam quot ferri suscipit, mea ne legere alterum repudiandae. Ei pri
					quaerendum intellegebat, ut vel consequuntur voluptatibus. Et
					volumus sententiae adversarium duo......</p>
				<p>Ludus albucius adversarium eam eu. Sit eu reque tation
					aliquip. Quo no dolorum albucius lucilius, hinc eligendi ut sed. Ex
					nam quot ferri suscipit, mea ne legere alterum repudiandae. Ei pri
					quaerendum intellegebat, ut vel consequuntur voluptatibus. Et
					volumus sententiae adversarium duo......</p>
				<a href="blog_post.html" class="btn_1">Read more</a>
			</div>
			end post -->

			<div class="col-md-9" id="col-md-9">

				<div id="tools">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-6">
							<div class="styled-select" id="styled-select">
							
								<select name="sort_rating" id="sort_rating">
							
									<option value="" selected>Select Store</option>
									
								</select>
								
							</div>
						</div>
						<div class="col-md-9 col-sm-9 hidden-xs">
						
						</div>
					</div>
				</div>
				<!--End tools -->
			
				<c:forEach var="s" items="${myStore}">
					<div class="strip_list wow fadeIn" data-wow-delay="0.1s" id="ccc">
						<div class="ribbon_1">Popular</div>
						<div class="row">
							<div class="col-md-9 col-sm-9" >
								<div class="desc">
									<div class="thumb_strip">

										<a href="detail_page.html"><img
											src="img/thumb_restaurant.jpg" alt=""></a>
									</div>
									<div class="rating">
										<!-- <i class="icon_star voted"></i><i class="icon_star voted"></i><i
											class="icon_star voted"></i><i class="icon_star voted"></i><i
											class="icon_star"></i> (<small><a href="#0">98
												reviews</a></small>) -->
										<%-- <i class="icon_star voted"></i><i class="icon_star voted"></i><i
											class="icon_star voted"></i><i class="icon_star voted"></i><i
											class="icon_star"></i> (<small><a href="#0">${s.st_star }
												reviews</a></small>) --%>
									</div>
									<h3>${s.st_nm }</h3>
									<!-- <div class="type">Mexican / American</div> -->
									<div class="type">${s.st_type }</div>

									<!-- <div class="location">
										135 Newtownards Road, Belfast, BT4. <span class="opening">Opens
											at 17:00.</span> Minimum order: $15
									</div> -->
									<div class="location">
										${s.st_addr }<br>
										<span class="opening">HOURS ${s.st_time }<br>
										</span> 
									</div>
									<ul>
										<li>Delivery<i class="icon_check_alt2 ok"></i></li>
									</ul>
								</div>
							</div>
							<div class="col-md-3 col-sm-3">
								<div class="go_to" id="go_to">
									<ul>
										<li><a href="seller_store_detail.ej?st_key=${s.st_key }" id="view_menu"
											class="btn_1" id="btn_1">View Menu</a></li>


										<li><a href="coupon_list.ej?st_key=${s.st_key }" id="view_coupon"
											class="btn_1" id="btn_1">View Coupon</a></li>
									</ul>
								</div>
							</div>
						</div>
						
						<!-- End row-->
					</div>
					
					<!-- End strip_list-->
				</c:forEach>




				<a href="#0" class="load_more_bt wow fadeIn" data-wow-delay="0.2s">Load
					more...</a>
			</div>
			<!-- End col-md-9-->

			<!-- <div class="post">
					<a href="blog_post.html" ><img src="img/blog-3.jpg" alt="" class="img-responsive"></a>
					<div class="post_info clearfix">
						<div class="post-left">
							<ul>
								<li><i class="icon-calendar-empty"></i>12/05/2015 <em>by Mark</em></li>
                                <li><i class="icon-inbox-alt"></i><a href="#">Category</a></li>
								<li><i class="icon-tags"></i><a href="#">Works</a>, <a href="#">Personal</a></li>
							</ul>
						</div>
						<div class="post-right"><i class="icon-comment"></i><a href="#">25 </a></div>
					</div>
					<h2>Duis aute irure dolor in reprehenderit</h2>
					<p>
						Ludus albucius adversarium eam eu. Sit eu reque tation aliquip. Quo no dolorum albucius lucilius, hinc eligendi ut sed. Ex nam quot ferri suscipit, mea ne legere alterum repudiandae. Ei pri quaerendum intellegebat, ut vel consequuntur voluptatibus. Et volumus sententiae adversarium duo......
					</p>
                    <p>
						Ludus albucius adversarium eam eu. Sit eu reque tation aliquip. Quo no dolorum albucius lucilius, hinc eligendi ut sed. Ex nam quot ferri suscipit, mea ne legere alterum repudiandae. Ei pri quaerendum intellegebat, ut vel consequuntur voluptatibus. Et volumus sententiae adversarium duo......
					</p>
					<a href="blog_post.html" class="btn_1" >Read more</a>
				</div>end post -->

			<!--  <div class="text-center">
                 <ul class="pager">
                    <li class="previous"><a href="#"><span aria-hidden="true">&larr;</span> Older</a></li>
                    <li class="next"><a href="#">Newer <span aria-hidden="true">&rarr;</span></a></li>
                  </ul>
              </div> -->
		</div>
		<!-- End col-md-9-->

		<!--       <aside class="col-md-3" id="sidebar">

				<div class="widget">
				<div id="custom-search-input-blog">
                <div class="input-group col-md-12">
                    <input type="text" class="form-control input-lg" placeholder="Search">
                    <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="button">
                            <i class="icon-search-1"></i>
                        </button>
                    </span>
                </div>
            </div>
				</div>End Search
                <hr>
				<div class="widget">
					<h4>Categories</h4>
					<ul id="cat_nav_blog">
                    	<li><a href="#">News</a></li>
                        <li><a href="#">Events</a></li>
                        <li><a href="#">Special dishes</a></li>
                        <li><a href="#">New Restaurants</a></li>
                    </ul>
				</div>End widget
 
               <hr>
            
				<div class="widget">
					<h4>Recent post</h4>
					<ul class="recent_post">
						<li>
						<i class="icon-calendar-empty"></i> 16th July, 2020
						<div><a href="#">It is a long established fact that a reader will be distracted </a></div>
						</li>
						<li>
						<i class="icon-calendar-empty"></i> 16th July, 2020
						<div><a href="#">It is a long established fact that a reader will be distracted </a></div>
						</li>
						<li>
						<i class="icon-calendar-empty"></i> 16th July, 2020
						<div><a href="#">It is a long established fact that a reader will be distracted </a></div>
						</li>
					</ul>
				</div>End widget
                <hr>
				<div class="widget tags">
					<h4>Tags</h4>
					<a href="#">Lorem ipsum</a>
					<a href="#">Dolor</a>
					<a href="#">Long established</a>
					<a href="#">Sit amet</a>
					<a href="#">Latin words</a>
					<a href="#">Excepteur sint</a>
				</div>End widget
                
     </aside>End aside -->

	</div>
<!-- End container -->