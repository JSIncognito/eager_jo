<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<style>
@import url('https://fonts.googleapis.com/css?family=Anton');
@import url('https://fonts.googleapis.com/css?family=Oxygen');
@import url('https://fonts.googleapis.com/css?family=Cookie');
@import url('https://fonts.googleapis.com/css?family=Dosis');

/*카테고리 시작*/
#food_div{
margin-left: 40px;
margin-bottom: 200px;

}
#food_img:hover {
	opacity: 0.8;
	width: 220px;
	height: 220px;
}

#food_img {
	width:170px;
	height:190px;
	float:center;
	margin-left: 100px;
}

#best_food {
	text-align: center;
	font-size: 40px;
	margin-top: 190px;
	margin-bottom: 80px;
		font-family: 'Anton', sans-serif;
	letter-spacing:3pt;
}

.card {
border-radius:100px;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    transition: 0.3s;
    width:30%;
    float:left;
    margin-left: 30px;
}

.card:hover {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container {
    padding: 10px 16px;
}
#food_font{
margin-left: 130px;
		font-family: 'Anton', sans-serif;
}

/*카테고리 끝*/
#delivery_time{
margin-bottom: 80px;
}
/*전체메뉴보기, 전체이벤틉괴 사이 간격*/
#green{
margin-top: 20px;
}

.nomargin_top{
		font-family: 'Anton', sans-serif;
margin-top: 80px;
}

/*쿠폰시작*/
/* .coupon {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
font-family: 'Dosis', sans-serif;

}
#coupon{
font-family: 'Dosis', sans-serif;

}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #78cfcf;;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}

.coupon{
margin-left:100px;
float:left;
margin-bottom: 100px;
} */

/*쿠폰 끝*/
#main_1{
font-family: 'Cookie', cursive;

}
</style>
    <!-- SubHeader =============================================== -->
     <section class="header-video">
    <div id="hero_video">
        <div id="sub_content">
            <h1 id="main_1">Order And Delivery Food</h1>
            <p>
                Ridiculus sociosqu cursus neque cursus curae ante scelerisque vehicula.
            </p>
            <form method="post" action="list_page.html">
                <div id="custom-search-input">
                    <div class="input-group">
<!--                         <input type="text" class=" search-query" placeholder="Your Address or postal code"> -->
                        <input type="text" class=" search-query" placeholder="Your Address or postal code" id="autocomplete">
                        <span class="input-group-btn">
                        <input type="submit" class="btn_search" value="submit">
                        </span>
                    </div>
                </div>
            </form>
        </div><!-- End sub_content -->
    </div>
    <img src="img/video_fix.png" alt="" class="header-video--media" data-video-src="video/intro" data-teaser-source="video/intro" data-provider="Vimeo" data-video-width="1920" data-video-height="960">
    <div id="count" class="hidden-xs">
        <ul>
            <li><span class="number">2650</span> Restaurant</li>
            <li><span class="number">5350</span> People Served</li>
            <li><span class="number">12350</span> Registered Users</li>
        </ul>
    </div>
    </section><!-- End Header video -->
    <!-- End SubHeader ============================================ -->

<!-- <div>
	<ul>
		<li><a href="store_list.ej">store_list</a></li>
		<li><a href="seller_register.ej">seller_register</a></li>
		<li><a href="seller_store_detail.ej">seller_store_detail</a></li>
		<li><a href="seller_store_list.ej">seller_store_list</a></li>
		<li><a href="seller_main.ej">seller_main</a></li>
		<li><a href="coupon_list.ej">coupon_list</a></li>
		<li><a href="coupon_add.ej">coupon_add</a></li>
		<li><a href="coupon_event.ej">coupon_event</a></li>
		<li><a href="store_menu.ej">store_menu</a></li>
		<li><a href="store_grid.ej">store_grid</a></li>
		<li><a href="store_map.ej">store_map</a></li>
		<li><a href="user_mypage.ej">user_mypage</a></li>
		
		
	</ul>
</div> -->
<!-- JS Test View  -->
<!-- 	<h1><a href="order1.ej">order1</a></h1>
	<h1><a href="order2.ej">order2</a></h1>
	<h1><a href="order3.ej">order3</a></h1>
	<h1><a href="store_detail.ej">store_detail</a></h1>
	<h1><a href="store_list.ej">store_list</a></h1> -->
<!-- End JS Test View -->

<!-- 카테고리시작 -->
<h2 id="best_food">CATEGORY</h2>
<!-- 20171223_JS TEST 추가 -->
<ul>
	<li>위도:<span id="latitude"></span></li>
	<li>경도:<span id="longitude"></span></li>
</ul>
<!--  -->
	<div id="food_div">

		<div class="row">
			<div class="column">
				<div class="card">
					<a href=""> <img id="food_img" src="img/chicken.png" alt="Paris"
						width="360" height="280">
					</a>
					<div class="containers">
						<h2 id="food_font">CHICKEN</h2>

					</div>
				</div>
			</div>

			<div class="column">
				<div class="card">
					<a href=""> <img id="food_img" src="img/pizza.png" alt="Paris"
						width="360" height="280" >
					</a>
					<div class="containers">
						<h2 id="food_font">PIZZA</h2>

					</div>
				</div>
			</div>
			<div class="column">
				<div class="card">
					<a href=""> <img id="food_img" src="img/china.png" alt="Paris"
						width="360" height="280">
					</a>
					<div class="containers">
						<h2 id="food_font">CHINESE</h2>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- 카테고리끝-->

<!-- <div id=coupons>
<div class="coupon">
  <img src="img/rain.gif" alt="John" style="width:100%">
  <h1 id="coupon">Discount coupon</h1>
  <p class="title">Rainny Coupon</p>
  <p>￦2000</p>
  <div style="margin: 24px 0;">

 </div>
 <p><button>EVENT ALL</button></p>
</div>

<div class="coupon">
  <img src="img/snow.gif" alt="John" style="width:100%">
  <h1 id="coupon">Discount coupon</h1>
  <p class="title">Snow Coupon</p>
  <p>￦2000</p>
  <div style="margin: 24px 0;">
   
 </div>
 <p><button>EVENT ALL</button></p>
</div>

<div class="coupon">
  <img src="img/snow.gif" alt="John" style="width:100%">
  <h1 id="coupon">Discount coupon</h1>
  <p class="title">Snow Coupon</p>
  <p>￦2000</p>
  <div style="margin: 24px 0;">
   
 </div>
 <p><button>EVENT ALL</button></p>
</div>
	</div> -->
	
	<!-- 쿠폰끝 -->
	<!-- Content ================================================== -->
 <div id="delivery_time" class="hidden-xs">
            <strong><span>6</span><span>0</span></strong>
            <h4>The minutes that usually takes to deliver!</h4>
        </div>
     <!--60분 끝-->

    <!-- <div class="white_bg">
    <div class="container margin_60">
        
        <div class="main_title">
            <h2 class="nomargin_top">Choose from Most Popular</h2>
            <p>
                Cum doctus civibus efficiantur in imperdiet deterruisset.
            </p>
        </div>
        
        <div class="row">
            <div class="col-md-6">
                <a href="detail_page.html" class="strip_list">
                <div class="ribbon_1">Popular</div>
                    <div class="desc">
                        <div class="thumb_strip">
                            <img src="img/thumb_restaurant.jpg" alt="">
                        </div>
                        <div class="rating">
                            <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
                        </div>
                        <h3>Taco Mexican</h3>
                        <div class="type">
                            Mexican / American
                        </div>
                        <div class="location">
                            135 Newtownards Road, Belfast, BT4. <span class="opening">Opens at 17:00</span>
                        </div>
                        <ul>
                            <li>Take away<i class="icon_check_alt2 ok"></i></li>
                            <li>Delivery<i class="icon_check_alt2 ok"></i></li>
                        </ul>
                    </div>End desc
                </a>End strip_list
               <a href="detail_page.html" class="strip_list">
               <div class="ribbon_1">Popular</div>
                    <div class="desc">
                        <div class="thumb_strip">
                            <img src="img/thumb_restaurant_2.jpg" alt="">
                        </div>
                        <div class="rating">
                            <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
                        </div>
                        <h3>Naples Pizza</h3>
                        <div class="type">
                            Italian / Pizza
                        </div>
                        <div class="location">
                            135 Newtownards Road, Belfast, BT4. <span class="opening">Opens at 17:00</span>
                        </div>
                        <ul>
                            <li>Take away<i class="icon_check_alt2 ok"></i></li>
                            <li>Delivery<i class="icon_check_alt2 ok"></i></li>
                        </ul>
                    </div>End desc
                </a>End strip_list
                <a href="detail_page.html" class="strip_list">
                <div class="ribbon_1">Popular</div>
                    <div class="desc">
                        <div class="thumb_strip">
                            <img src="img/thumb_restaurant_3.jpg" alt="">
                        </div>
                        <div class="rating">
                            <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
                        </div>
                        <h3>Japan Food</h3>
                        <div class="type">
                            Sushi / Japanese
                        </div>
                        <div class="location">
                            135 Newtownards Road, Belfast, BT4. <span class="opening">Opens at 17:00</span>
                        </div>
                        <ul>
                            <li>Take away<i class="icon_check_alt2 ok"></i></li>
                            <li>Delivery<i class="icon_check_alt2 ok"></i></li>
                        </ul>
                    </div>End desc
                </a>End strip_list
            </div>End col-md-6
            <div class="col-md-6">
                <a href="detail_page.html" class="strip_list">
                <div class="ribbon_1">Popular</div>
                    <div class="desc">
                        <div class="thumb_strip">
                            <img src="img/thumb_restaurant_4.jpg" alt="">
                        </div>
                        <div class="rating">
                            <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
                        </div>
                        <h3>Sushi Gold</h3>
                        <div class="type">
                            Sushi / Japanese
                        </div>
                        <div class="location">
                            135 Newtownards Road, Belfast, BT4. <span class="opening">Opens at 17:00</span>
                        </div>
                        <ul>
                            <li>Take away<i class="icon_check_alt2 ok"></i></li>
                            <li>Delivery<i class="icon_close_alt2 no"></i></li>
                        </ul>
                    </div>End desc
                </a>End strip_list
                <a href="detail_page.html" class="strip_list">
                <div class="ribbon_1">Popular</div>
                    <div class="desc">
                        <div class="thumb_strip">
                            <img src="img/thumb_restaurant_5.jpg" alt="">
                        </div>
                        <div class="rating">
                            <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
                        </div>
                        <h3>Dragon Tower</h3>
                        <div class="type">
                            Chinese / Thai
                        </div>
                        <div class="location">
                            135 Newtownards Road, Belfast, BT4. <span class="opening">Opens at 17:00</span>
                        </div>
                        <ul>
                            <li>Take away<i class="icon_check_alt2 ok"></i></li>
                            <li>Delivery<i class="icon_check_alt2 ok"></i></li>
                        </ul>
                    </div>End desc
                </a>End strip_list
                <a href="detail_page.html" class="strip_list">
                <div class="ribbon_1">Popular</div>
                    <div class="desc">
                        <div class="thumb_strip">
                            <img src="img/thumb_restaurant_6.jpg" alt="">
                        </div>
                        <div class="rating">
                            <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
                        </div>
                        <h3>China Food</h3>
                        <div class="type">
                            Chinese / Vietnam
                        </div>
                        <div class="location">
                            135 Newtownards Road, Belfast, BT4. <span class="opening">Opens at 17:00</span>
                        </div>
                        <ul>
                            <li>Take away<i class="icon_check_alt2 ok"></i></li>
                            <li>Delivery<i class="icon_check_alt2 ok"></i></li>
                        </ul>
                    </div>End desc
                </a>End strip_list
            </div>
        </div>End row   
        
        </div>End container
        </div>End white_bg -->
        
        <!-- 레스토랑 전체보기, 이벤트 전체보기 시작-->
       <div class="high_light">
      	<div class="container">
      		<h3>Choose Restaurants</h3>
            <p>Chicken/Chinese/Pizza</p>
            <a href="list_page.html">View all Restaurants</a>
        </div><!-- End container -->
      </div><!-- End hight_light -->
      <div id=green></div>
           <div class="high_light">
      	<div class="container">
      		<h3>Choose Event</h3>
            <p>Gift/Discount</p>
            <a href="list_page.html">View all Event</a>
        </div><!-- End container -->
      </div><!-- End hight_light -->
      <!-- 레스토랑 전체보기,이벤트 전체보기 끝 -->
      
        <div class="container margin_60">
        
         <div class="main_title">
            <h2 class="nomargin_top" style="padding-top:0">How it works</h2>
            <p>
                We delivery based on Big Data.
            </p>
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="box_home" id="one">
                    <span>1</span>
                    <h3>Search by address</h3>
                    <p>
                        Find all restaurants available in your zone.
                    </p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="box_home" id="two">
                    <span>2</span>
                    <h3>Choose a restaurant</h3>
                    <p>
                        We have more than 1000s of menus online.
                    </p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="box_home" id="three">
                    <span>3</span>
                    <h3>Pay by card or cash</h3>
                    <p>
                        It's quick, easy and totally secure.
                    </p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="box_home" id="four">
                    <span>4</span>
                    <h3>Delivery</h3>
                    <p>
                        You are lazy? Are you backing home?
                    </p>
                </div>
            </div>
        </div><!-- End row -->
        </div><!-- End container -->
            
    <section class="parallax-window" data-parallax="scroll" data-image-src="img/f.png" data-natural-width="1200" data-natural-height="600">
    <div class="parallax-content">
        <div class="sub_content">
            <i class="icon_mug"></i>
            <h3>We suggest convenience system</h3>
            <p>
             
            </p>
        </div><!-- End sub_content -->
    </div><!-- End subheader -->
    </section><!-- End section -->
    <!-- End Content =============================================== -->

	<!-- <div class="container margin_60">
      <div class="main_title margin_mobile">
            <h2 class="nomargin_top">Work with Us</h2>
            <p>
                Cum doctus civibus efficiantur in imperdiet deterruisset.
            </p>
        </div>
      	<div class="row">
            <div class="col-md-4 col-md-offset-2">
            	<a class="box_work" href="submit_restaurant.html">
                <img src="img/submit_restaurant.jpg" width="848" height="480" alt="" class="img-responsive">
                <h3>Submit your Restaurant<span>Start to earn customers</span></h3>
                <p>Lorem ipsum dolor sit amet, ut virtute fabellas vix, no pri falli eloquentiam adversarium. Ea legere labore eam. Et eum sumo ocurreret, eos ei saepe oratio omittantur, legere eligendi partiendo pro te.</p>
                <div class="btn_1">Read more</div>
                </a>
            </div>
            <div class="col-md-4">
            	<a class="box_work" href="submit_driver.html">
                <img src="img/delivery.jpg" width="848" height="480" alt="" class="img-responsive">
				<h3>We are looking for a Driver<span>Start to earn money</span></h3>
                <p>Lorem ipsum dolor sit amet, ut virtute fabellas vix, no pri falli eloquentiam adversarium. Ea legere labore eam. Et eum sumo ocurreret, eos ei saepe oratio omittantur, legere eligendi partiendo pro te.</p>
                <div class="btn_1">Read more</div>
                </a>
            </div>
      </div>End row
    </div>End container -->
<!-- 20171219_JS index.html Add -->
<!-- SPECIFIC SCRIPTS -->
<script src="js/video_header.js"></script>
<script>
$(document).ready(function() {
	'use strict';
   	  HeaderVideo.init({
      container: $('.header-video'),
      header: $('.header-video--media'),
      videoTrigger: $("#video-trigger"),
      autoPlayVideo: true
    });
});

$(function(){
	if(navigator.geolocation){
		navigator.geolocation.getCurrentPosition(function(pos){
			$('#latitude').html(pos.coords.latitude);
			$('#longitude').html(pos.coords.longitude);
		});
	}else{
		console.log("이 브라우저에서는 Geolocation 이 지원되지 않습니다.");
		alert("이 브라우저에서는 Geolocation 이 지원되지 않습니다.");
	}
});

var placeSearch, autocomplete;
var componentForm = {
  street_number: 'short_name',
  route: 'long_name',
  locality: 'long_name',
  administrative_area_level_1: 'short_name',
  country: 'long_name',
  postal_code: 'short_name'
};

function initAutocomplete() {
  // Create the autocomplete object, restricting the search to geographical
  // location types.
  autocomplete = new google.maps.places.Autocomplete(
      /** @type {!HTMLInputElement} */(document.getElementById('autocomplete')),
      {types: ['geocode']});

  // When the user selects an address from the dropdown, populate the address
  // fields in the form.
  autocomplete.addListener('place_changed', fillInAddress);
}

function fillInAddress() {
  // Get the place details from the autocomplete object.
  var place = autocomplete.getPlace();

  for (var component in componentForm) {
    document.getElementById(component).value = '';
    document.getElementById(component).disabled = false;
  }

  // Get each component of the address from the place details
  // and fill the corresponding field on the form.
  for (var i = 0; i < place.address_components.length; i++) {
    var addressType = place.address_components[i].types[0];
    if (componentForm[addressType]) {
      var val = place.address_components[i][componentForm[addressType]];
      document.getElementById(addressType).value = val;
    }
  }
}

// Bias the autocomplete object to the user's geographical location,
// as supplied by the browser's 'navigator.geolocation' object.
function geolocate() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var geolocation = {
        lat: position.coords.latitude,
        lng: position.coords.longitude
      };
      var circle = new google.maps.Circle({
        center: geolocation,
        radius: position.coords.accuracy
      });
      autocomplete.setBounds(circle.getBounds());
    });
  }
}
</script>
<!--     <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCO-5elUHG0jQxmqfoZ37TqGOu73yjouzE&libraries=places&callback=initAutocomplete" ></script> -->	
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCO-5elUHG0jQxmqfoZ37TqGOu73yjouzE&libraries=places&callback=initAutocomplete" async defer></script>	
