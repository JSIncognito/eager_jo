<%@ page language="java" contentType="text/html; charset=utf-8" 
pageEncoding="utf-8"%>

<%-- <%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%> --%>

<!-- 20171212_JS Sprint and jstl add -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
@import url('https://fonts.googleapis.com/css?family=Questrial');
#logo{
font-family: 'Questrial', sans-serif;
color:white;
font-size: 20px;
}

#modal-dialog{
font-family: 'Questrial', sans-serif;
}
#register{
font-family: 'Questrial', sans-serif;
overflow: auto;
}
#btn{
font-family: 'Questrial', sans-serif;
}
#event_menu:hover{
	cursor: pointer;
}

</style>
<!DOCTYPE html>
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
<html>
<head>
<!--     <meta charset="utf-8"> -->
    <meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="pizza, delivery food, fast food, sushi, take away, chinese, italian food">
    <meta name="description" content="">
    <meta name="author" content="Ansonika">
    <title>QuickFood - Quality delivery or take away food</title>
	<!-- 20171212_JS jquery add -->
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">
    
    <!-- GOOGLE WEB FONT -->
    <link href='https://fonts.googleapis.com/css?family=Lato:400,700,900,400italic,700italic,300,300italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Gochi+Hand' rel='stylesheet' type='text/css'>
	

    <!-- BASE CSS -->
    <link href="css/base.css" rel="stylesheet">

    <!-- Modernizr -->
	<script src="js/modernizr.js"></script> 

<!-- 20171214_JS store_detail.jsp add -->
    <!-- Radio and check inputs -->
    <link href="css/skins/square/grey.css" rel="stylesheet">
    
<!-- 20171214_JS store_grid.jsp add -->
    <link href="css/ion.rangeSlider.css" rel="stylesheet">
    <link href="css/ion.rangeSlider.skinFlat.css" rel="stylesheet" >
    
<!-- 20171214_JS store_grid.jsp add -->
    
    <!-- Gallery -->
    <link href="css/slider-pro.min.css" rel="stylesheet">
<!-- store_detail add -->

<!-- 20171214_JS seller_store_detail.jsp add-->
	<!-- SPECIFIC CSS -->
	<link href="css/admin.css" rel="stylesheet">
	<link href="css/bootstrap3-wysihtml5.min.css" rel="stylesheet">
	<link href="css/dropzone.css" rel="stylesheet">
<!-- 20171214 -->

<!-- 20171214_JS store_map.jsp add -->
    <!-- SPECIFIC CSS -->
    <link href="css/skins/square/grey.css" rel="stylesheet">
    <link href="css/ion.rangeSlider.css" rel="stylesheet">
    <link href="css/ion.rangeSlider.skinFlat.css" rel="stylesheet" >
<!-- 20171215_HB seller_main.jsp add -->
	<!-- SPECIFIC CSS -->
    <link href="css/blog.css" rel="stylesheet">

<style>
html,
body {
    height: 100%;
}
#gender{
	color:black;
}       
</style>
<!-- 20171214_JS store_map -->

    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
	<!-- COMMON SCRIPTS -->
	<script src="js/jquery-2.2.4.min.js"></script>
	<script src="js/common_scripts_min.js"></script>
	<script src="js/functions.js"></script>
	<script src="assets/validate.js"></script>
</head>

<body>

<!--[if lte IE 8]>
    <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a>.</p>
<![endif]-->

	<div id="preloader">
        <div class="sk-spinner sk-spinner-wave" id="status">
            <div class="sk-rect1"></div>
            <div class="sk-rect2"></div>
            <div class="sk-rect3"></div>
            <div class="sk-rect4"></div>
            <div class="sk-rect5"></div>
        </div>
    </div><!-- End Preload -->

    <!-- Header ================================================== -->
    <header>
    <div class="container-fluid">
        <div class="row">
            <div class="col--md-4 col-sm-4 col-xs-4">
                <a href="index.html" id="logo">
                <img src="img/sun.png" width="32" height="32" alt="" data-retina="true" class="hidden-xs">Food Weather
                
                <img src="img/logo_mobile.png" width="59" height="23" alt="" data-retina="true" class="hidden-lg hidden-md hidden-sm">
                </a>
            </div>
            <nav class="col--md-8 col-sm-8 col-xs-8">
            <a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="javascript:void(0);"><span>Menu mobile</span></a>
            <div class="main-menu">
                <div id="header_menu">
                    <img src="img/logo.png" width="190" height="23" alt="" data-retina="true">
                </div>
                <a href="#" class="open_close" id="close_in"><i class="icon_close"></i></a>

                 <ul>
                   <!--  <li class="submenu">
                    <a href="javascript:void(0);" class="show-submenu">Home<i class="icon-down-open-mini"></i></a>
                    <ul>
                        <li><a href="index.html">Home Video background</a></li>
                        <li><a href="index_2.html">Home Static image</a></li>
                        <li><a href="index_3.html">Home Text rotator</a></li>
                        <li><a href="index_8.html">Home Layer slider</a></li>
                        <li><a href="index_4.html">Home Cookie bar</a></li>
                        <li><a href="index_5.html">Home Popup</a></li>
                        <li><a href="index_6.html">Home Mobile synthetic</a></li>
                        <li><a href="index_7.html">Top Menu version 2</a></li>
                    </ul>
                    </li> -->
<c:choose>
<c:when test="${loginUser.u_id != null }">
<%--  	                <li><a href="logout.ej">${loginUser.u_nm } �� </a></li> --%>
 	                <li><a href="logout.ej">${loginUser.u_nm } </a></li>
 <%--  	                <li><h3>${loginUser.u_nm } User</h3></li> --%>
</c:when>
</c:choose>
                    <li><a href="main.ej">Home</a></li>
<c:set var="reURL" value="${pageContext.request.requestURL }"/>
<c:if test="${fn:contains(reURL,'main.jsp')}">
</c:if>
<c:choose>
<c:when test="${center == null }">
</c:when>
<c:otherwise>
                    <li class="submenu">
                    <a href="javascript:void(0);" class="show-submenu">Category<i class="icon-down-open-mini"></i></a>
                    <ul>
                        <li><a href="store_list.ej?st_type=chicken&st_addr=${stAddr }">Chicken</a></li>
                        <li><a href="store_list.ej?st_type=pizza&st_addr=${stAddr }">Pizza</a></li>
                        <li><a href="store_list.ej?st_type=china&st_addr=${stAddr }">Chinese</a></li>
                    </ul>
                    </li>
</c:otherwise>
</c:choose>
                    <!-- 180102 ksy !!!!!!!!!! -->
                    <%-- <li><a href="coupon_event.ej?u_addr=${loginUser.u_addr}" onclick="">Event</a></li> --%>
                    <li><a id="event_menu" onclick="dong('${stAddr }','${loginUser.u_id }')">Event</a></li>
<c:choose>
<c:when test="${loginUser.u_id == null }">
                    <li><a href="#0" data-toggle="modal" data-target="#login_2">Login</a></li>
                    <li><a href="#0" data-toggle="modal" data-target="#register_select">Register</a></li>
</c:when>
<c:otherwise>
                    <li><a href="logout.ej">Logout</a></li>
	<c:choose>
	<c:when test="${loginUser.u_flag == 1}">
                    <li><a href="user_mypage.ej?u_id=${loginUser.u_id}">Mypage</a></li>
	</c:when>
	<c:otherwise>
                    <li><a href="seller_main.ej?u_id=${loginUser.u_id}">SellerPage</a></li>
                    	
	</c:otherwise>
	</c:choose>
</c:otherwise>
</c:choose>
                    <!-- <li><a href="about.html">About us</a></li>
                    <li><a href="faq.html">Faq</a></li>
                    <li class="submenu">
                    <a href="javascript:void(0);" class="show-submenu">Pages<i class="icon-down-open-mini"></i></a>
                    <ul>
                        <li><a href="RTL_version/index.html">RTL version</a></li>
                        <li><a href="admin.html">Admin section</a></li>
                        <li><a href="submit_driver.html">Submit Driver</a></li>
                        <li><a href="#0" data-toggle="modal" data-target="#login_2">User Login</a></li>
                        <li><a href="#0" data-toggle="modal" data-target="#register">User Register</a></li>
                        <li><a href="detail_page_2.html">Restaurant detail page</a></li>
                        <li><a href="blog.html">Blog</a></li>
                        <li><a href="contacts.html">Contacts</a></li>
                        <li><a href="coming_soon/index.html">Coming soon page</a></li>
                        <li><a href="shortcodes.html">Shortcodes</a></li>
                        <li><a href="icon_pack_1.html">Icon pack 1</a></li>
                        <li><a href="icon_pack_2.html">Icon pack 2</a></li>
                    </ul>
                    </li>
                    <li><a href="#0">Purchase this template</a></li> -->
                </ul>
            </div><!-- End main-menu -->
            </nav>
        </div><!-- End row -->
    </div><!-- End container -->
    </header>
    <!-- End Header =============================================== -->
<c:choose>
	<c:when test="${center == null }">
		<jsp:include page="center.jsp"></jsp:include>
	</c:when>
	<c:otherwise>
		<jsp:include page="${center }.jsp"></jsp:include>
	</c:otherwise>
</c:choose>

    <!-- Footer ================================================== -->
    <footer>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-3 hidden-xs">
                <h3>Secure payments with</h3>
                <p>
                    <img src="img/cards.png" alt="" class="img-responsive">
                </p>
            </div>
            <div class="col-md-3 col-sm-3 hidden-xs">
                <h3>About</h3>
                <ul>
                    <li><a href="about.html">About us</a></li>
                    <li><a href="faq.html">Faq</a></li>
                    <li><a href="contacts.html">Contacts</a></li>
                    <li><a href="#0" data-toggle="modal" data-target="#login_2">Login</a></li>
                    <li><a href="#0" data-toggle="modal" data-target="#register">Register</a></li>
                    <li><a href="#0">Terms and conditions</a></li>
                </ul>
            </div>
            <div class="col-md-3 col-sm-3 hidden-xs" id="newsletter">
                <h3>Newsletter</h3>
                <p>
                    Join our newsletter to keep be informed about offers and news.
                </p>
                <div id="message-newsletter_2">
                </div>
                <form method="post" action="assets/newsletter.php" name="newsletter_2" id="newsletter_2">
                    <div class="form-group">
                        <input name="email_newsletter_2" id="email_newsletter_2" type="email" value="" placeholder="Your mail" class="form-control">
                    </div>
                    <input type="submit" value="Subscribe" class="btn_1" id="submit-newsletter_2">
                </form>
            </div>
            <div class="col-md-2 col-sm-3">
                <h3>Settings</h3>
                <div class="styled-select">
                    <select class="form-control" name="lang" id="lang">
                        <option value="English" selected>English</option>
                        <option value="French">French</option>
                        <option value="Spanish">Spanish</option>
                        <option value="Russian">Russian</option>
                    </select>
                </div>
                <div class="styled-select">
                    <select class="form-control" name="currency" id="currency">
                        <option value="USD" selected>USD</option>
                        <option value="EUR">EUR</option>
                        <option value="GBP">GBP</option>
                        <option value="RUB">RUB</option>
                    </select>
                </div>
            </div>
        </div><!-- End row -->
        <div class="row">
            <div class="col-md-12">
                <div id="social_footer">
                    <ul>
                        <li><a href="#0"><i class="icon-facebook"></i></a></li>
                        <li><a href="#0"><i class="icon-twitter"></i></a></li>
                        <li><a href="#0"><i class="icon-google"></i></a></li>
                        <li><a href="#0"><i class="icon-instagram"></i></a></li>
                        <li><a href="#0"><i class="icon-pinterest"></i></a></li>
                        <li><a href="#0"><i class="icon-vimeo"></i></a></li>
                        <li><a href="#0"><i class="icon-youtube-play"></i></a></li>
                    </ul>
                    <p>
                        Quick Food 2015
                    </p>
                </div>
            </div>
        </div><!-- End row -->
    </div><!-- End container -->
    </footer>
    <!-- End Footer =============================================== -->

<div class="layer"></div><!-- Mobile menu overlay mask -->
<!-- 20171221_JS login and register Modify -->
<!-- Login modal -->   
<div class="modal fade" id="login_2" tabindex="-1" role="dialog" aria-labelledby="myLogin" aria-hidden="true">
		<div class="modal-dialog" id="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<form action="login.ej" class="popup-form" id="myLogin" method="post">
                	<div class="login_icon"><i class="icon_lock_alt"></i></div>
 					<input type="text" class="form-control form-white" placeholder="User ID" name="u_id" required/>

<!--  					<input type="text" class="form-control form-white" placeholder="User ID" name="u_id" /> -->
 					<input type="password" class="form-control form-white" placeholder="Password" name="u_pwd" required/>

<!--  					<input type="text" class="form-control form-white" placeholder="Password" name="u_pwd" /> -->
					<div class="text-left">
						<a href="#">Forgot Password?</a>
					</div>
<!-- 					<button type="submit" class="btn btn-submit">Submit</button> -->
					<input type="submit" class="btn btn-submit" value="Submit"/>
				</form>
			</div>
		</div>
	</div><!-- End modal -->   
    
<!-- Register modal -->   
<div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="myRegister" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<form action="users_register.ej" class="popup-form" id="myRegister" method="post">
                	<div class="login_icon"><i class="icon_lock_alt"></i></div>
					<!-- 20171220_JS Register modify -->
					<input type="text" class="form-control form-white" placeholder="ID" name="u_id" required/>
                    <input type="password" class="form-control form-white" placeholder="Password" id="password1" name="u_pwd"  required/>
                    <input type="password" class="form-control form-white" placeholder="Confirm password" id="password2" required/>
					<input type="text" class="form-control form-white" placeholder="Name" name="u_nm" required/>
					<input type="tel" class="form-control form-white" placeholder="Telephone number" name="u_tel" required/>
                    <input type="text" class="form-control form-white" placeholder="Address" name="u_addr" required/>
<!--  					<label for="bday-month">What month were you born in?</label> -->
                    <input type="date" class="form-control form-white" min="1900-01-01" max="2018-12-31" name="uAge" required/>
					<select class="form-control form-white" name="u_gen" required>
						<optgroup label=""  id="gender">
							<option value="M">male</option>
							<option value="F">female</option>
						</optgroup>
					</select>					

                    <div id="pass-info" class="clearfix"></div>
					<div class="checkbox-holder text-left">
						<div class="checkbox">
							<input type="checkbox" value="accept_2" id="check_2" name="check_2" required/>
							<label for="check_2"><span>I Agree to the <strong>Terms &amp; Conditions</strong></span></label>
						</div>
					</div>
<!-- 					<button type="submit" class="btn btn-submit">Register</button> -->
						<input type="submit" class="btn btn-submit" value="Register" />
				</form>
			</div>
		</div>
	</div><!-- End Register modal -->
	
<!-- Register Select modal -->   
<!-- Choose User or Seller -->
<div class="modal fade" id="register_select" tabindex="-1" role="dialog" aria-labelledby="myRegister" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<form action="#" class="popup-form" id="myRegister_select">
                	<div class="login_icon"><i class="icon_lock_alt"></i></div>
                	<div id="btn">
					<button type="button" class="btn btn-submit close-link" data-toggle="modal" data-target="#register">User Register</button>
					<button type="button" class="btn btn-submit" onclick="location.href='seller_register.ej'" >Seller Register</button>
			</div>
				</form>
			</div>
		</div>
	</div><!-- End Register modal -->
	
    <!-- Search Menu -->
	<div class="search-overlay-menu">
		<span class="search-overlay-close"><i class="icon_close"></i></span>
		<form role="search" id="searchform" method="get">
			<input value="" name="q" type="search" placeholder="Search..." />
			<button type="submit"><i class="icon-search-6"></i>
			</button>
		</form>
	</div>
	<!-- End Search Menu -->

</body>
<!-- 180102 ksy !!!!!!!! -->
<script>
//20180102 동 이름만 추출
function dong(toAddrStr,name){
 
	var toAddrStr = $('input[id="autocomplete"]').val();
	var arry = toAddrStr.split(" ");
 	for(var i=arry.length-1 ; i >= 0; i--){
 	 	console.log(arry[i].indexOf("동"));
		if(arry[i].indexOf("동") != -1){
		 	var st_addr = arry[i];
		 	break;
		}
	}

 	var str = "st_addr=" + st_addr;
	 alert("안녕 나는 동이름이야 "+st_addr);
 	if(toAddrStr == null || toAddrStr == ''){
 		alert("검색창에 주소를 입력해주세요.");
 		return;
 	}
 	if(name == null || name == ''){
 		alert("로그인을 해주세요.");
 		return;
 	}
	alert("안녕 나는 동이름이야 "+str);
 	console.log(str);
 	location.href = "coupon_event.ej?"+ str;

}
</script>
</html>