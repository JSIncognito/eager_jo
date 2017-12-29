<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<section class="parallax-window" data-parallax="scroll" data-image-src="img/sub_header_2.jpg" data-natural-width="1400" data-natural-height="470">
    <div id="subheader">
	<div id="sub_content">
    	<div id="thumb"><img src="img/thumb_restaurant.jpg" alt=""></div>
                     <div class="rating"><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i> (<small><a href="detail_page_2.html">Read 98 reviews</a></small>)</div>
                    <h1>Mexican TacoMex</h1>
                    <div><em>Mexican / American</em></div>
                    <div><i class="icon_pin"></i> 135 Newtownards Road, Belfast, BT4 1AB - <strong>Delivery charge:</strong> $10, free over $15.</div>
    </div><!-- End sub_content -->
</div><!-- End subheader -->
</section><!-- End section -->
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

<!-- Content ================================================== -->
<div class="container margin_60_35">
		<div class="row">
        
			<div class="col-md-3">
            	<p><a href="list_page.html" class="btn_side">Back to search</a></p>
				<div class="box_style_1">
					<ul id="cat_nav">
						<li><a href="#starters" class="active">Starters <span>(141)</span></a></li>
						<li><a href="#main_courses">Main Courses <span>(20)</span></a></li>
						<li><a href="#beef">Beef <span>(12)</span></a></li>
						<li><a href="#desserts">Desserts <span>(11)</span></a></li>
						<li><a href="#drinks">Drinks <span>(20)</span></a></li>
					</ul>
				</div><!-- End box_style_1 -->
                
				<div class="box_style_2 hidden-xs" id="help">
					<i class="icon_lifesaver"></i>
					<h4>Need <span>Help?</span></h4>
					<a href="tel://004542344599" class="phone">+45 423 445 99</a>
					<small>Monday to Friday 9.00am - 7.30pm</small>
				</div>
			</div><!-- End col-md-3 -->
            
			<div class="col-md-6">
				<div class="box_style_2" id="main_menu">
					<h2 class="inner">Menu</h2>
					<h3 class="nomargin_top" id="starters">Starters</h3>
					<p>
						Te ferri iisque aliquando pro, posse nonumes efficiantur in cum. Sensibus reprimique eu pro. Fuisset mentitum deleniti sit ea.
					</p>
					<table class="table table-striped cart-list">
					<thead>
					<tr>
						<th>
							 Item
						</th>
						<th>
							 Price
						</th>
						<th>
							 Order
						</th>
					</tr>
					</thead>
					<tbody>
<!--  -->
<c:forEach var="menu" items="${stMenu }">
					<tr>
						<td>
                        	<figure class="thumb_menu_list"><img src="img/menu-thumb-1.jpg" alt="thumb"></figure>
							<h5>${menu.f_name }</h5>
							<p>
								Fuisset mentitum deleniti sit ea.
							</p>
						</td>
						<td>
							<strong><fmt:formatNumber value="${menu.f_price }" groupingUsed="true"/></strong>
						</td>
						<td class="options">
                         <div class="dropdown dropdown-options">
                            <a onclick="addItem('${menu.f_name }', ${menu.f_price });" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="icon_plus_alt2"></i></a>
                         </div>
                     </td>
					</tr>
<!--  -->
</c:forEach>
					</tbody>
					</table>					
					<hr>
				</div><!-- End box_style_1 -->
			</div><!-- End col-md-6 -->
<!-- sidebar -->            
			<div class="col-md-3" id="sidebar">
            <div class="theiaStickySidebar">
				<div id="cart_box" >
					<h3>Your order <i class="icon_cart_alt pull-right"></i></h3>
					<table class="table table_summary">
					<tbody id="addItem">
<!--  -->
<!--
 					<tr id="item_tr">
						<td>
							<a href="#0" class="remove_item"><i class="icon_minus_alt"></i></a> <strong>1x</strong> Enchiladas
						</td>
						<td>
							<strong class="pull-right">$11</strong>
						</td>
					</tr>
 -->
<!--  -->					
					</tbody>
					</table>
					<hr>
					<div class="row" id="options_2">
						<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
							<label><input type="radio" value="" checked name="option_2" class="icheck">¡ı¡§ƒÌ∆˘</label>
						</div>
						<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
							<label><input type="radio" value="" name="option_2" class="icheck">«“¿ŒƒÌ∆˘</label>
						</div>
					</div><!-- Edn options 2 -->
                    
					<hr>
					<table class="table table_summary">
					<tbody>
					<tr>
						<td>
							 Subtotal <span class="pull-right" id="subtotal"></span>
						</td>
					</tr>
<!--
 					<tr>
						<td>
							 Delivery fee <span class="pull-right">$10</span>
						</td>
					</tr>
-->					
					<tr>
						<td class="total">
							 TOTAL <span class="pull-right" id="total"></span>
						</td>
					</tr>
					</tbody>
					</table>
					<hr>
					<a class="btn_full" href="cart.html">Order now</a>
				</div><!-- End cart_box -->
                </div><!-- End theiaStickySidebar -->
			</div><!-- End col-md-3 -->
<!-- end sidebar -->
		</div><!-- End row -->
</div><!-- End container -->
<!-- 20171214_JS store_menu.jsp add -->
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
		
function addItem(menu_nm, menu_price){
	var newdiv = document.createElement('div');
	
	calTotal(menu_price);
	
	for(var i=0; i <= $('#addItem tr').length; i++){
/* 		alert($('#addItem tr').eq(i).find('td').eq(1).find('span').text() + "and menu_nm : " + menu_nm + " tr cnt :" + i ); */
 		if($('#addItem tr').eq(i).find('td').eq(1).find('span').text() == menu_nm ){
/* 			alert($('#addItem tr').eq(i).find('td').eq(1).find('strong').text()); */
			var cnt = $('#addItem tr').eq(i).find('td').eq(1).find('strong').text();
			cnt++;
			$('#addItem tr').eq(i).find('td').eq(1).find('strong').text(cnt + " ");
			return;
 		}
 	}
/*  	var str = $('tb tr').html(); */
	var out = '<tr>';
	out += '<td>';
	out += '<a onclick="removeItem(menu_nm, menu_price)" class="remove_item">';
	out += '<i class="icon_minus_alt">';
	out += '</i>';
	out += '</a>';
	out += '</td>';
	out += '<td>';
	out += '<strong class="item_cnt">';
	out += '1 ';
	out += '</strong>';
	out += 'x';
	out += '<span>';
	out += menu_nm;	
	out += '</span>';
	out += '</td>';
	out += '</tr>';
	
 	$('#addItem').append(out);
};
function removeItem(menu_name, menu_price){
	$('#addItem tr:last-child').remove();
/* 	var price = 0;
	var cnt = $('#addItem tr').eq(i).find('td').eq(1).find('strong').text();	
	var amount = price * cnt; 

 	var subtotal =  Number($('#subtotal').text());
  	subtotal = subtotal - amount ;
  	subtotal = numberWithCommas(subtotal);
  	$('#subtotal').text(subtotal);

 	var total = Number($('#total').text());
 	total += subtotal - amount;
 	total = numberWithCommas(total);
 	$('#total').text(total);	
	 */
}
function calTotal(tprice){
 	var subtotal =  Number($('#subtotal').text());
  	subtotal += tprice;
  	subtotal = numberWithCommas(subtotal);
  	$('#subtotal').text(subtotal);

 	var total = Number($('#total').text());
 	total += tprice;
 	total = numberWithCommas(total);
 	$('#total').text(total);	
}
function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

</script>
<!-- 20171214_JS store_menu.jsp add -->
