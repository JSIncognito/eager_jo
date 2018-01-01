<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
@import url('https://fonts.googleapis.com/css?family=Dancing+Script');
@import url('https://fonts.googleapis.com/css?family=Questrial');
/*한글폰트*/
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
#idid{
font-family: 'Questrial', sans-serif;
}
#starters{
font-family: 'Questrial', sans-serif;
}
#inner{
font-family: 'Questrial', sans-serif;
}
#foodMenu{
 font-family: 'Jeju Gothic', sans-serif; 
}
#back_to{
font-family: 'Questrial', sans-serif;
}
#subtotal{
font-family: 'Questrial', sans-serif;
}
#total{
font-family: 'Questrial', sans-serif;
}
h3{
font-family: 'Questrial', sans-serif;
}
#pngs{
margin-left:30px;
margin-top: 100px;
margin-bottom: 100px;
}
h1{
 font-family: 'Jeju Gothic', sans-serif; 
}
#strongs{
 font-family: 'Jeju Gothic', sans-serif; 
}

</style>
<section class="parallax-window" data-parallax="scroll" data-image-src="img/fruit_view.jpg" data-natural-width="1400" data-natural-height="570">
    <div id="subheader">
	<div id="sub_content">
    	<div id="thumb"><img src="img/view_store.gif" alt=""></div>
                     <div class="rating"><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i> (<small><a href="detail_page_2.html">Read 98 reviews</a></small>)</div>
                    <h1>${stDetail.st_nm }</h1>
<!--                     <div><em>Mexican / American</em></div> -->
                    <div id="strongs"><i class="icon_pin"></i>${stDetail.st_addr } - <strong> OPEN - CLOSE:</strong>${stDetail.st_time }</div>
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
        
			<div class="col-md-3" id="back_to">
            	<p><a href="store_list.ej?st_type=${stType }&st_addr=${stAddr }" class="btn_side">Back to search</a></p>
				<div id=pngs>
				<img src=img/pizza.png width=60>
				   <img src=img/chicken.png width=60>
				   <img src=img/china.png width=60>
				</div>
				<!-- <div class="box_style_1">
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
					<a href="tel://004542344599" class="phone">+82 010 123 456</a>
					<small>Monday to Friday 10:00am - 7:00pm</small>
				</div>
			</div><!-- End col-md-3 -->
            
			<div class="col-md-6" id="idid">
				<div class="box_style_2" id="main_menu">
					<h2 class="inner" id="inner">Menu</h2>
					<h3 class="nomargin_top" id="starters">Starters</h3>
					<!-- <p>
						Te ferri iisque aliquando pro, posse nonumes efficiantur in cum. Sensibus reprimique eu pro. Fuisset mentitum deleniti sit ea.
					</p> -->
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
					<tbody id="foodMenu">
<!--  -->
<c:forEach var="menu" items="${stMenu }">
					<tr>
						<td>
                        	<figure class="thumb_menu_list"><img src="img/menu-thumb-1.jpg" alt="thumb"></figure>
<br>							<h5 class="foodName">${menu.f_name }</h5>
								
							
						</td>
						<td>
							<strong class="f_price"><fmt:formatNumber value="${menu.f_price }" groupingUsed="true"/></strong>
						</td>
						<td class="options">
                         <div class="dropdown dropdown-options">
                            <a onclick="addItem('${menu.f_name }', ${menu.f_price }, '${menu.f_img }', '${menu.f_key }');" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="icon_plus_alt2"></i></a>
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
<form action="order1.ej" >
					<table class="table table_summary">
					<tbody id="addItem">
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
					</tbody>
					</table>
					<hr>
					<div class="row" id="options_2">
						<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
							<label><input type="radio" value="G" checked name="option_2" class="icheck">증정쿠폰</label>
						</div>
						<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
							<label><input type="radio" value="D" name="option_2" class="icheck">할인쿠폰</label>
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
<!-- 							<input type="hidden" name="o_total" id="o_total" value="" /> -->						
							 TOTAL <span class="pull-right" id="total"></span>
						</td>
					</tr>
					</tbody>
					</table>
					<hr>
<!-- 						<a class="btn_full" href="cart.html">Order now</a> -->
						<button type="submit" class="btn_full">Order now</button>
</form>						
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

var index = 0;

function addItem(menu_nm, menu_price, menu_img, menu_key){
	var newdiv = document.createElement('div');
	
	for(var i=0; i <= $('#addItem tr').length; i++){
/* 		alert($('#addItem tr').eq(i).find('td').eq(1).find('span').text() + "and menu_nm : " + menu_nm + " tr cnt :" + i ); */
 		if($('#addItem tr').eq(i).find('td').eq(1).find('span').text() == menu_nm ){
/* 			alert($('#addItem tr').eq(i).find('td').eq(1).find('strong').text()); */
			var cnt = $('#addItem tr').eq(i).find('td').eq(1).find('strong').text();
			cnt++;
			$('#addItem tr').eq(i).find('td').eq(1).find('strong').text(cnt + " ");
			/* 상품 개수 setting */
 			$('#addItem tr').eq(i).find('td').eq(1).find('input[class=of_cnt]').val(cnt + "");
			console.log($('#addItem tr').eq(i).find('td').eq(1).find('input[class=of_cnt]').val());
			calTotal(menu_price);
			return;
 		}
 	}
/*  	var str = $('tb tr').html(); */
	var out = '<tr>';
	out += '<td>';
	out += '<input type="hidden" name="ofd_list[' + index + '].'; 
	out += 'st_key" value="${stDetail.st_key}" />';
	out += '<input type="hidden" name="ofd_list[' + index + '].';
	out += 'st_nm" value="${stDetail.st_nm}" />';
	out += '<input type="hidden" name="ofd_list[' + index + '].';
	out += 'st_addr" value="${stDetail.st_addr}" />';
	out += '<a onclick="removeItem(this)" class="remove_item">';
	out += '<i class="icon_minus_alt">';
	out += '</i>';
	out += '</a>';
	out += '</td>';
	out += '<td>';
	out += '<input type="hidden" name="ofd_list[' + index + '].';
	out += 'of_cnt" class="of_cnt" value="1" />';
	out += '<strong class="item_cnt" >';
	out += '1 ';
	out += '</strong>';
	out += 'x';
	out += '<input type="hidden" name="ofd_list[' + index + '].';
	out += 'f_key" value="';
	out += menu_key + '" />';
	out += '<input type="hidden" name="ofd_list[' + index + '].';
	out += 'f_name" value="';
	out += menu_nm + '" />';
	out += '<input type="hidden" name="ofd_list[' + index + '].';
	out += 'f_price" value="';
	out += menu_price + '" />';
	out += '<input type="hidden" name="ofd_list[' + index + '].';
	out += 'f_img" value="';
	out += menu_img + '" />';
	out += '<input type="hidden" name="ofd_list[' + index + '].';
	out += 'o_total" class="o_total" value="" />';
	out += '<span id=mName>';
	out += menu_nm;	
	out += '</span>';
	out += '</td>';
	out += '</tr>';
	index++;	
 	$('#addItem').append(out); 	
	calTotal(menu_price);
};
function removeItem(obj){	
	var menu = $(obj).parent().parent().find('#mName').text();
	var menu_cnt = $(obj).parent().parent().find('.item_cnt').eq(0).text()
	var price = "";
	/* 	alert(menu + " " + menu_cnt); */
	
	for(var i=0; i <= $('#foodMenu tr').length; i++){
/* 		alert($('#foodMenu tr').eq(i).find('td').eq(0).find('h5').html()); */
		if($('#foodMenu tr').eq(i).find('td').eq(0).find('h5').html() ==  menu){
			price = $('#foodMenu tr').eq(i).find('td').eq(1).find('strong').text();
			/* 콤마 제거 */
			price = price.replace(/,/g,'');
			break;
		}
	}
	var amount = menu_cnt * price;

 	var subtotal =  $('#subtotal').text();
  	subtotal = subtotal.replace(/,/g,'');
 	subtotal = Number(subtotal) - amount ;
  	$('#subtotal').text(subtotal.comma());

 	var total = $('#total').text();
 	total = total.replace(/,/g,'');
 	total = Number(total) - amount;
 	$('.o_total').val(total + "");
 	$('#total').text(total.comma());
	
 	$(obj).parent().parent().remove(); 
/* 	$('#addItem tr:last-child').remove(); */

}
function calTotal(tprice){
 	var subtotal =  $('#subtotal').text();
  	subtotal = subtotal.replace(/,/g,'');
 	subtotal = Number(subtotal) + tprice;

 	$('#subtotal').text(subtotal.comma());

 	var total = $('#total').text();
 	total = total.replace(/,/g,'');
	total = Number(total) + tprice;
 	$('.o_total').val(total + ""); 	
 	$('#total').text(total.comma());
}
/* 20171229_JS comma in number */
	Number.prototype.comma = function(){
		return this.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	};

	String.prototype.comma = function(){
		return this.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	};
</script>
<!-- 20171214_JS store_menu.jsp add -->
