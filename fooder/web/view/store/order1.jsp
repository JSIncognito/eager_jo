<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
/* function delete_order(num) {
	var table = document.getElementById('orderTable');
	table.deleteRow(num);
} */
function order1_submit(f) {
	var tel = f.tel.value;
	var addr = f.addr.value;
	if(tel == '' || tel == null || addr == '' || addr == null ) {
		
	}
}
</script>
<!-- SubHeader =============================================== -->
<section class="parallax-window" id="short" data-parallax="scroll" data-image-src="img/sub_header_cart.jpg" data-natural-width="1400" data-natural-height="350">
    <div id="subheader">
    	<div id="sub_content">
    	 <h1>Place your order</h1>
            <div class="bs-wizard">
                <div class="col-xs-4 bs-wizard-step active">
                  <div class="text-center bs-wizard-stepnum"><strong>1.</strong> Your details</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#0" class="bs-wizard-dot"></a>
                </div>
                               
                <div class="col-xs-4 bs-wizard-step disabled">
                  <div class="text-center bs-wizard-stepnum"><strong>2.</strong> Payment</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="cart_2.html" class="bs-wizard-dot"></a>
                </div>
            
              <div class="col-xs-4 bs-wizard-step disabled">
                  <div class="text-center bs-wizard-stepnum"><strong>3.</strong> Finish!</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="cart_3.html" class="bs-wizard-dot"></a>
                </div>  
		</div><!-- End bs-wizard --> 
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
			<!-- <div class="col-md-3">
            
				<div class="box_style_2 hidden-xs info">
					<h4 class="nomargin_top">Delivery time <i class="icon_clock_alt pull-right"></i></h4>
					<p>
						Lorem ipsum dolor sit amet, in pri partem essent. Qui debitis meliore ex, tollit debitis conclusionemque te eos.
					</p>
					<hr>
					<h4>Secure payment <i class="icon_creditcard pull-right"></i></h4>
					<p>
						Lorem ipsum dolor sit amet, in pri partem essent. Qui debitis meliore ex, tollit debitis conclusionemque te eos.
					</p>
				</div>End box_style_1
                
				<div class="box_style_2 hidden-xs" id="help">
					<i class="icon_lifesaver"></i>
					<h4>Need <span>Help?</span></h4>
					<a href="tel://004542344599" class="phone">+45 423 445 99</a>
					<small>Monday to Friday 9.00am - 7.30pm</small>
				</div>
                
			</div>End col-md-3 -->
            <form>
			<div class="col-md-9">
				<div class="box_style_2" id="order_process">
					<h2 class="inner">Your order details</h2>
					<div class="form-group">
						<label>Address</label>
						<input type="text" class="form-control" id="addr" name="addr" placeholder="Full Address">
					</div>
					<div class="form-group">
						<label>Telephone / mobile</label>
						<input type="text" id="tel" name="tel" class="form-control" placeholder="Telephone / mobile">
					</div>
					<!-- End box_style_1 -->
				 </div>
			</div><!-- End col-md-6 -->
            
			<div class="col-md-3" id="sidebar">
            	<div class="theiaStickySidebar">
				<div id="cart_box">
					<h3>Your order <i class="icon_cart_alt pull-right"></i></h3>
					<table id="orderTable" class="table table_summary">
						<tbody>
						<c:forEach var="ofd" items="${ofdList}">
						<tr>
							<td id="${ofd.of_key }">
	<!-- 							<a class="remove_item"><i class="icon_minus_alt"></i></a>  -->
								<strong>${ofd.of_cnt }x</strong> ${ofd.f_name }
							</td>
						</tr>
						</c:forEach>
						</tbody>
					</table>
<!-- 					<hr> -->
					<!-- <div class="row" id="options_2">
						<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
							<label><input type="radio" value="" checked name="option_2" class="icheck">Delivery</label>
						</div>
						<div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
							<label><input type="radio" value="" name="option_2" class="icheck">Take Away</label>
						</div>
					</div>Edn options 2 -->
					<hr>
					<table class="table table_summary">
					<tbody>
					<tr>
						<td>
							 Subtotal <span class="pull-right">£Ü${orderInfo.o_all }</span>
						</td>
					</tr>
					<tr>
						<td>
							 Discount <span class="pull-right">£Ü${orderInfo.o_dc }</span>
						</td>
					</tr>
					<tr>
						<td class="total">
							 TOTAL <span class="pull-right">£Ü${orderInfo.o_total }</span>
						</td>
					</tr>
					</tbody>
					</table>
					<hr>
					<a class="btn_full" href="order2.ej">Go to checkout</a>
					<a class="btn_full_outline" onclick="order1_submit(this.form)"><i class="icon-right"></i> Add other items</a>
				</div><!-- End cart_box -->
                </div><!-- End theiaStickySidebar -->
			</div><!-- End col-md-3 -->
            </form>
		</div><!-- End row -->
</div><!-- End container -->
<!-- End Content =============================================== -->