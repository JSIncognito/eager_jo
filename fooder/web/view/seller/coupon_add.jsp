<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
@import url('https://fonts.googleapis.com/css?family=Dancing+Script');
@import url('https://fonts.googleapis.com/css?family=Questrial');
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

/*  #event_box { 
 	margin-top: 17px; 
 	text-align: center; 
 }  */
input[type="text"] { 	
	width: 100%;
}
#add_coupon {
font-family: 'Questrial', sans-serif;
}
h1{
font-family: 'Dancing Script', cursive;
}
body{
background-color: white;
}
#category{
font-family: 'Questrial', sans-serif;
}	
#food_nums{
font-weight: bold;
}
h3{
font-family: 'Questrial', sans-serif;
font-weight: bold;
}
#inner{
font-family: 'Questrial', sans-serif;

}
#idid{
margin-top: 150px;
}
#ratt{
font-family: 'Questrial', sans-serif;
}
#sub_content{
 font-family: 'Jeju Gothic', sans-serif; 
}
#kkk{
 font-family: 'Jeju Gothic', sans-serif; 
 color: white;
}
</style>
<script>
function deleteItem(tr) {
	$(tr).remove();
};

function publishCpn(f) {
	// dc_select_list 
	var idx = 1;
	$('#dc_select_list').find('tr').each(function() {
// 		alert($(this).html());
		$(this).find('input[id="c_nm"]').attr('name', 'dc' + idx + '_c_nm');
		$(this).find('input[id="c_dc"]').attr('name', 'dc' + idx + '_c_dc');
		$(this).find('input[id="c_start"]').attr('name', 'dc' + idx + '_c_start');
		$(this).find('input[id="c_end"]').attr('name', 'dc' + idx + '_c_end');
		idx++;
	});
	
	// gift_select_list
	idx = 1;
	$('#gift_select_list').find('tr').each(function() {
		$(this).find('input[id="c_nm"]').attr('name', 'gift' + idx + '_c_nm');
		$(this).find('input[id="c_gift"]').attr('name', 'gift' + idx + '_c_gift');
		$(this).find('input[id="c_start"]').attr('name', 'gift' + idx + '_c_start');
		$(this).find('input[id="c_end"]').attr('name', 'gift' + idx + '_c_end');
		idx++;
	});
	
	f.submit();
};

$(document).ready(function() {
	$('#addGift').on('click', function() {
// 		alert('gift');
		var tr = $(this).parent().parent();
		var newtr = document.createElement('tr');
		
		var start = $(tr).find($('input[name="c_start"]')).val();
		var end = $(tr).find($('input[name="c_end"]')).val();
		var nm = $(tr).find('input[name="c_nm"]').val();
		var gift = $(tr).find('input[name="c_gift"]').val();

		if(nm == null || nm == '') {
			alert('Please enter Gift Coupon Name');
		} else if(gift == null || gift == '') {
			alert('Please enter Gift');
		} else if(start == null || start == '') {
			alert('Please enter Start Date');
		} else if(end == null || end == '') {
			alert('Please enter End Date');
		} else {
			var st = $('#selected_Gift');
			
			var num = $('#gift_select_list').find('tr').length +1;
			
			$(st).find('span').text(nm);
// 			$(st).find('input[id="c_nm"]').attr('value', nm).attr('name', 'gift'+num+'_c_nm');
// 			$(st).find('input[id="c_gift"]').attr('value', gift).attr('name', 'gift'+num+'_c_gift');
// 			$(st).find('input[id="c_start"]').attr('value', start).attr('name', 'gift'+num+'_c_start');
// 			$(st).find('input[id="c_end"]').attr('value', end).attr('name', 'gift'+num+'_c_end');
			$(st).find('input[id="c_nm"]').attr('value', nm);
			$(st).find('input[id="c_gift"]').attr('value', gift);
			$(st).find('input[id="c_start"]').attr('value', start);
			$(st).find('input[id="c_end"]').attr('value', end);
			$(newtr).html($(st).html());
			$('#gift_select_list').find('tbody').append($(newtr));
			
		}
	});
	
	$('.addDc').on('click', function() {
// 		alert('dc');
		var tr = $(this).parent().parent();
		var newtr = document.createElement('tr');
		
		var start = $(tr).find($('input[name="c_start"]')).val();
		var end = $(tr).find($('input[name="c_end"]')).val();
		
		if($(tr).find('input[name="c_nm"]').length != 0) {	// input type
			var nm = $(tr).find('input[name="c_nm"]').val();
			var price = $(tr).find('input[name="c_dc"]').val();
		} else { // sample type
			var nm = $(tr).find('h5').text();
			var price = $(tr).find('strong').text();
		}
// 		alert(price);
	
		if(start == null || start == '') {
			alert('Please enter Start Date');
		} else if(end == null || end == '') {
			alert('Please enter End Date');
		} else if(price == null || price == '' || price == 0) {
			alert('Please enter Discount Price');
		} else if(nm == null || nm == '') {
			alert('Please enter Discount Coupon Name');
		} else {
			price = price.substring(price.length-4, price.length);
			var st = $('#selected_Dc');
			
			var num = $('#dc_select_list').find('tr').length +1;
// 			if(num >= 1) {
// 				$('#dcselect').find('input[id="c_nm"]').each(function(index, item) {
// 					if(item.value == nm) {
// 						alert('Already selected');
// 						return;
// 					}
// 				});
// 			}
			
			$(st).find('span').text(nm);
// 			$(st).find('input[id="c_nm"]').attr('value', nm).attr('name', 'dc'+num+'_c_nm');
// 			$(st).find('input[id="c_dc"]').attr('value', price).attr('name', 'dc'+num+'_c_dc');
// 			$(st).find('input[id="c_start"]').attr('value', start).attr('name', 'dc'+num+'_c_start');
// 			$(st).find('input[id="c_end"]').attr('value', end).attr('name', 'dc'+num+'_c_end');
			$(st).find('input[id="c_nm"]').attr('value', nm);
			$(st).find('input[id="c_dc"]').attr('value', price);
			$(st).find('input[id="c_start"]').attr('value', start);
			$(st).find('input[id="c_end"]').attr('value', end);
			$(newtr).html($(st).html());
			$('#dc_select_list').find('tbody').append($(newtr));
		}
	});
	
	
});
</script>

<section class="parallax-window" data-parallax="scroll"
	data-image-src="img/food2.jpg" data-natural-width="1400"
	data-natural-height="670">
	<div id="subheader">
		<div id="sub_content">
					<h1>Coupon Add</h1>
		
<!-- 			<div id="thumb"> -->
<!-- 				<img src="img/thumb_restaurant.jpg" alt=""> -->
<!-- 			</div> -->
			<div class="rating" id="ratt" >
				<%-- <c:forEach begin="1" end="${store.st_star }" varStatus="status">
					<c:set var="index" value="${status.current }"></c:set>
				<!-- 	<i class="icon_star voted"></i>
 -->				</c:forEach>
				<c:if test="${index < 5 }">
					<c:set var="index" value="${5-i	ndex }"></c:set>
					<c:forEach begin="1" end="${index }">
						<!-- <i class="icon_star"></i>  -->
					</c:forEach>
				</c:if> --%>
				<!-- 
				<i class="icon_star voted"></i>
				<i class="icon_star voted"></i>
				<i class="icon_star voted"></i>
				 -->
<!-- 					(<small><a href="detail_page_2.html">Read 98 reviews</a></small>)
 -->			</div>
			<h2 id="kkk">${store.st_nm }</h2>
			<div>
				<em>${store.st_type }</em>
			</div>
			<div>
				<i class="icon_pin"></i> ${store.st_addr }
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
			<li><a href="main.ej">Home</a></li>
			<li><a href="#0">Seller</a></li>
			<li>Coupon Add</li>
		</ul>
		<a href="#0" class="search-overlay-menu-btn"><i
			class="icon-search-6"></i> Search</a>
	</div>
</div>
<!-- Position -->

<!-- Content ================================================== -->
<div class="container margin_60_35">
	<div class="row">

	<!-- 20180102 hb Choi -->
	<div class="widget col-md-2" id="category">
	      <h4 id="food_nums">Categories</h4>
	      <ul id="cat_nav_blog">
	         <li><a href="coupon_list.ej?st_key=${st_key}">Coupon List</a></li>
	         <li><a href="coupon_add.ej?st_key=${st_key}">Coupon Add</a></li>
	         <li><a href="seller_store_detail.ej">Update my store</a></li>
	         <li><a href="seller_mypage.ej">Update seller profile</a></li>
	
	      </ul>
	   </div>  

		<div class="col-md-7" id="add_coupon">
			<div class="box_style_2" id="main_menu">
				<h2 class="inner" id="inner">Add Coupon</h2>
				<!-- 1214 ksy  -->
				<h3 class="nomargin_top" id="starters">Discount Coupon</h3>
				<!-- <p>Te ferri iisque aliquando pro, posse nonumes efficiantur in
					cum. Sensibus reprimique eu pro. Fuisset mentitum deleniti sit ea.
				</p> -->
				<table class="table table-striped cart-list col-md-7" id="dc_table">
					<thead>
						<tr>
							<th>Coupon Name</th>
							<th>Discount Value</th>
<!-- 							<th>Release Date</th> -->
							<th>Start</th>
							<th>End</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr id="dc1000">
							<td>
								<h5>1000 <br> Discount Coupon</h5>
							</td>
							<td>
								<strong>1000</strong>
							</td>
							<td><input type="date" id="c_start" name="c_start"
								min="2000-01-02" max="2999-12-31" required="required"></td>
							<td><input type="date" id="c_end" name="c_end"
								min="2000-01-02" max="2999-12-31" required="required"></td>
							<td class="options">
								<a class="dropdown-toggle addDc"><i class="icon_plus_alt2"></i></a>
							</td>
						</tr>
						<tr id="dc3000">
							<td>
								<h5>3000<br> Discount Coupon</h5>
							</td>
							<td>
								<strong>3000</strong>
							</td>
							<td><input type="date" id="c_start" name="c_start"
								min="2000-01-02" max="2999-12-31" required="required"></td>
							<td><input type="date" id="c_end" name="c_end"
								min="2000-01-02" max="2999-12-31" required="required"></td>
							<td class="options">
								<a class="dropdown-toggle addDc"><i class="icon_plus_alt2"></i></a>
							</td>
						</tr>
						<tr id="dc5000">
							<td>
								<h5>5000 <br>Discount Coupon</h5>
							</td>
							<td>
								<strong>5000</strong>
							</td>
							<td><input type="date" id="c_start" name="c_start"
								min="2000-01-02" max="2999-12-31" required="required"></td>
							<td><input type="date" id="c_end" name="c_end"
								min="2000-01-02" max="2999-12-31" required="required"></td>
							<td class="options">
								<a class="dropdown-toggle addDc" ><i class="icon_plus_alt2"></i></a>
							</td>
						</tr>
						<tr id="dcx">
							<td>
								<input type="text" id="c_nm" name="c_nm" placeholder="Discount Coupon Name">
							</td>
							<td>
								<input type="number" id="c_dc" name="c_dc" placeholder="Discount Value">
							</td>
							<td><input type="date" id="c_start" name="c_start"
								min="2000-01-02" max="2999-12-31" required="required"></td>
							<td><input type="date" id="c_end" name="c_end"
								min="2000-01-02" max="2999-12-31" required="required"></td>
							<td class="options">
								<a class="dropdown-toggle addDc" onclick=""><i class="icon_plus_alt2"></i></a>
							</td>							
						</tr>

					</tbody>
				</table>
<!-- 				</div> -->
				<hr class="styled_1 margin_60">
<!-- 				<div class="box_style_2" id="main_menu"> -->
<div id="idid"></div>

				<h3>Gift Coupon</h3>
				<!-- <p>Te ferri iisque aliquando pro, posse nonumes efficiantur in
					cum. Sensibus reprimique eu pro. Fuisset mentitum deleniti sit ea.
				</p> -->
				<table class="table table-striped cart-list col-md-7" id="gift_table">
					<thead>
						<tr>
							<th>Gift Coupon Name</th>
							<th>Gift</th>
<!-- 							<th>Release Date</th> -->
							<th>Start</th>
							<th>End</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<input type="text" id="c_nm" name="c_nm" placeholder="Gift Coupon Name">
							</td>
							<td>
								<input type="text" id="c_gift" name="c_gift" placeholder="Gift">
							</td>
							<td><input type="date" id="c_start" name="c_start"
								min="2000-01-02" max="2999-12-31"></td>
							<td><input type="date" id="c_end" name="c_end"
								min="2000-01-02" max="2999-12-31"></td>
							<td class="options">
								<a class="dropdown-toggle" id="addGift"><i class="icon_plus_alt2"></i></a>
							</td>	
						</tr>

					</tbody>
				</table>
			</div>
			<!-- End box_style_1 -->
		</div>
		<!-- End col-md-6 -->

		<div class="col-md-3" id="sidebar">
			<div class="theiaStickySidebar">
				<div id="cart_box">
					<h3>
						Selected Coupon <i class="icon_cart_alt pull-right"></i>
					</h3>

					<form method="post" action="coupon_add_impl.ej" accept-charset="EUC-KR">
					<table class="table table_summary" id="dc_select_list">
						<tbody>
							
						</tbody>
					</table>
					<!-- End options 2 -->

					<!-- <hr> -->
					<table class="table table_summary" id="gift_select_list">
						<tbody>
							
						</tbody>
					</table>
					
					
					<hr>
					<!-- 1214 ksy  -->
<!-- 					<a class="col-md-2 btn_full" onclick="publishCpn(this.form);">Publish Coupon</a> -->
					<button class="col-md-2 btn_full" type="button" onclick="publishCpn(this.form);">Publish Coupon</button>
					</form>
					
					<table id="selectedList" style="display:none">
						<tr id="selected_Dc">
							<td>
								<a onclick="deleteItem(this.parentNode.parentNode);" class="remove_item"><i class="icon_minus_alt"></i></a> 
								<span></span>
								<input type="hidden" name="c_nm" id="c_nm" value="">
								<input type="hidden" name="c_start" id="c_start" value="">
								<input type="hidden" name="c_end" id="c_end" value="">
								<input type="hidden" name="c_dc" id="c_dc" value="">
							</td>
						</tr>
						<tr id="selected_Gift" style="display:none">
							<td>
								<a onclick="deleteItem(this.parentNode.parentNode);" class="remove_item"><i class="icon_minus_alt"></i></a> 
								<span></span>
								<input type="hidden" name="c_nm" id="c_nm" value="">
								<input type="hidden" name="c_start" id="c_start" value="">
								<input type="hidden" name="c_end" id="c_end" value="">
								<input type="hidden" name="c_gift" id="c_gift" value="">
							</td>
						</tr>
					</table>
					
				</div>
				<!-- End cart_box -->
			</div>
			<!-- End theiaStickySidebar -->
		</div>
		<!-- End col-md-3 -->

		
	</div>
	<!-- End row -->
</div>
<!-- End container -->