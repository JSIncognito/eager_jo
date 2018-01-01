<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
@import url('https://fonts.googleapis.com/css?family=Questrial');
@import url('https://fonts.googleapis.com/css?family=Dancing+Script');
body{
background-color: white;
}
#check{
float:left;
}
h3{
font-family: 'Questrial', sans-serif;
font-size:40px;
font-weight: bold;
}
h1{
font-family: 'Dancing Script', cursive;
}
h4{
font-family: 'Questrial', sans-serif;

}
td{
font-family: 'Questrial', sans-serif;

}
#inner{
font-family: 'Questrial', sans-serif;
letter-spacing: 1px;
}

</style>
<!-- SubHeader =============================================== -->
<section class="parallax-window" id="short" data-parallax="scroll" data-image-src="img/order.gif" data-natural-width="1000" data-natural-height="350">
    <div id="subheader">
    	<div id="sub_content">
    	 <h1>Place your order</h1>
            <div class="bs-wizard">
                <div class="col-xs-4 bs-wizard-step complete">
                  <div class="text-center bs-wizard-stepnum"><strong>1.</strong> Your details</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="cart.html" class="bs-wizard-dot"></a>
                </div>
                               
                <div class="col-xs-4 bs-wizard-step complete">
                  <div class="text-center bs-wizard-stepnum"><strong>2.</strong> Payment</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="cart_2.html" class="bs-wizard-dot"></a>
                </div>
            
              <div class="col-xs-4 bs-wizard-step complete">
                  <div class="text-center bs-wizard-stepnum"><strong>3.</strong> Finish!</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#0" class="bs-wizard-dot"></a>
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
                <li>Order Complete</li>
            </ul>
        </div>
    </div><!-- Position -->

<!-- Content ================================================== -->
<div class="container margin_60_35">
	<div class="row">
		<div class="col-md-offset-3 col-md-6">
			<div class="box_style_2">
				<h2 class="inner" id="inner">Order confirmed!</h2>
				<div id="confirm">
				<i class="check">
					<!-- <i class="icon_check_alt2"></i> -->
					<img src="img/pizza.png" width=100>
					<img src="img/chicken.png" width=100>
					<img src="img/china.png" width=100>
				</i>
					
					<h3>Thank you</h3>
					<br>
					<p>
						
					</p>
				</div>
				<h4>Summary</h4>
				<table class="table table-striped nomargin">
				<tbody>
				<c:forEach var="ofd" items="${ofdList }">
					<tr>
						<td>
							<strong>${ofd.of_cnt }x</strong> ${ofd.f_name }
						</td>
						<td>
							<strong class="pull-right">£Ü${ofd.f_price }</strong>
						</td>
					</tr>
				</c:forEach>
				<!-- <tr>
					<td>
						<strong>1x</strong> Enchiladas
					</td>
					<td>
						<strong class="pull-right">$11</strong>
					</td>
				</tr> -->
				
				<tr>
					<td class="total_confirm">
						 TOTAL
					</td>
					<td class="total_confirm">
						<span class="pull-right">£Ü${orderInfo.o_total }</span>
					</td>
				</tr>
				</tbody>
				</table>
			</div>
		</div>
	</div><!-- End row -->
</div><!-- End container -->
<!-- End Content =============================================== -->